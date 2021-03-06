package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.sql.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction {
    private int resultid;
    private Baby baby;
    private int id;
    private Result result;
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

    public String showResult() {
        result = ResultManager.findResultByid(id);
        baby = BabyManager.findById(result.getBabyid());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result.getTime());
        Date d2 = Date.valueOf(stime);
        monthage = diffDays(d1,d2);
        //这是算法  是不是很吊
        scoreSport = result.getScoreSport()*100/monthage;
        scoreAct = result.getScoreAct()*100/monthage;
        scoreAdapt = result.getScoreAdapt()*100/monthage;
        scoreLanguage = result.getScoreLanguage()*100/monthage;
        scoreSocial = result.getScoreSocial()*100/monthage;
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
            resultRecord.setTestId(1);
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
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setTesterName(resultRecord.getTesterName());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            updateRecord.setUpdateTime(new java.util.Date());
            TestResultRecordManager.update(updateRecord);
        }
        return SUCCESS;
    }


    public Double diffDays(java.util.Date d1, java.util.Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30));
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

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
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

    public int getResultid() {
        return resultid;
    }

    public void setResultid(int resultid) {
        this.resultid = resultid;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }
}
