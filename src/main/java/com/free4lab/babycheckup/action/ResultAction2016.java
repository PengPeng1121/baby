package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction2016 {
    private Integer resultID;
    private Baby baby;
    private int id;
    private Result2016 result2016;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Double scoreSport;
    private Double scoreAct;
    private Double scoreAdapt;
    private Double scoreLanguage;
    private Double scoreSocial;
    private Hospital hospital;
    private TestResultRecord resultRecord;
    private List<TestInstruction> instructions;

    public String showResult2016() {
        result2016 = ResultManager2016.findResultByid(id);
        baby = BabyManager.findById(result2016.getBabyid());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result2016.getTime());
        Date d2 = Date.valueOf(stime);
        monthage = diffDays(d1,d2);
        //这是算法  是不是很吊
        scoreAdapt = result2016.getScoreAdapt()*100/monthage;
        scoreLanguage = result2016.getScoreLanguage()*100/monthage;
        scoreSocial = result2016.getScoreSocial()*100/monthage;
        scoreSport = result2016.getScoreSport()*100/monthage;
        scoreAct = result2016.getScoreAct()*100/monthage;
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultRecord = TestResultRecordManager.find(1,id);
        if(resultRecord == null){
            resultRecord = new TestResultRecord();
            resultRecord.setTesterName("null");
            resultRecord.setRemark("null");
        }
        return SUCCESS;
    }

    //保存记录，没有新增，有修改
    public String saveRecord(){
        TestResultRecord record = TestResultRecordManager.find(1,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(26);
            resultRecord.setVersion("1");
            resultRecord.setHospitalId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultRecord.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            resultRecord.setCreateUser((String) ActionContext.getContext().getSession().get("username"));
            resultRecord.setUpdateTime(new java.util.Date());
            resultRecord.setCreateTime(new java.util.Date());
            TestResultRecordManager.save(resultRecord);
        }else {
            //修改
            TestResultRecord updateRecord = new TestResultRecord();
            BeanUtils.copyProperties(record,updateRecord);
            Integer version = Integer.parseInt(record.getVersion());
            version = version +1;//升版本
            updateRecord.setVersion(version.toString());
            updateRecord.setTesterName(resultRecord.getTesterName());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setUpdateTime(new java.util.Date());
            TestResultRecordManager.update(updateRecord);
        }
        return SUCCESS;
    }

    //获得指导语
    public String getRemark(){
        result2016 = ResultManager2016.findResultByid(resultID);
        baby = BabyManager.findById(result2016.getBabyid());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result2016.getTime());
        Date d2 = Date.valueOf(stime);
        monthage = diffDays(d1,d2);
        Integer monthAge = monthage.intValue();
        instructions = TestInstructionManager.findInstructionByHospitalId((Integer) ActionContext.getContext().getSession().get("hoid"),monthAge);
        return SUCCESS;
    }

    public Double diffDays(java.util.Date d1, java.util.Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30.4));
    }

    public Baby getBaby() {
        return baby;
    }

    public void setBaby(Baby baby) {
        this.baby = baby;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Result2016 getResult2016() {
        return result2016;
    }

    public void setResult2016(Result2016 result2016) {
        this.result2016 = result2016;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public Double getMonthage() {
        return monthage;
    }

    public void setMonthage(Double monthage) {
        this.monthage = monthage;
    }

    public Double getScoreSport() {
        return scoreSport;
    }

    public void setScoreSport(Double scoreSport) {
        this.scoreSport = scoreSport;
    }

    public Double getScoreAct() {
        return scoreAct;
    }

    public void setScoreAct(Double scoreAct) {
        this.scoreAct = scoreAct;
    }

    public Double getScoreAdapt() {
        return scoreAdapt;
    }

    public void setScoreAdapt(Double scoreAdapt) {
        this.scoreAdapt = scoreAdapt;
    }

    public Double getScoreLanguage() {
        return scoreLanguage;
    }

    public void setScoreLanguage(Double scoreLanguage) {
        this.scoreLanguage = scoreLanguage;
    }

    public Double getScoreSocial() {
        return scoreSocial;
    }

    public void setScoreSocial(Double scoreSocial) {
        this.scoreSocial = scoreSocial;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }

    public List<TestInstruction> getInstructions() {
        return instructions;
    }

    public void setInstructions(List<TestInstruction> instructions) {
        this.instructions = instructions;
    }

    public Integer getResultID() {
        return resultID;
    }

    public void setResultID(Integer resultID) {
        this.resultID = resultID;
    }
}
