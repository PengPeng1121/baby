package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultDDSTAction {
    private Baby baby;
    private int id;
    private ResultDDST resultDDST;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private int b1;
    private int b2;
    private int b3;
    private int b4;

    private int days;
    private TestResultRecord resultRecord;

    private List<TestInstruction> instructions;

    public String showResultDDST() {
        resultDDST = ResultDDSTManager.findResultByid(id);
        baby = BabyManager.findById(resultDDST.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultDDST.getTime());
        try{

            days = (differentdays(baby.getBirthday(),new Date()))/30;
            b1 = ResultDDSTManager.findQuestions(21,61,days);
            b2 = ResultDDSTManager.findQuestions(21,62,days);
            b3 = ResultDDSTManager.findQuestions(21,63,days);
            b4 = ResultDDSTManager.findQuestions(21,64,days);
        }catch (Exception e){

        }
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultRecord = TestResultRecordManager.find(21,id);
        if(resultRecord == null){
            resultRecord = new TestResultRecord();
            resultRecord.setTesterName("null");
            resultRecord.setRemark("null");
        }
        return SUCCESS;
    }

    public Integer differentdays(Date d1, Date d2){
        Integer days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    //保存记录，没有新增，有修改
    public String saveRecordDDST(){
        TestResultRecord record = TestResultRecordManager.find(21,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(21);
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

    //获得指导语
    public String getRemarkDDST(){
        resultDDST = ResultDDSTManager.findResultByid(id);
        baby = BabyManager.findById(resultDDST.getBabyId());
        Integer monthAge  = (differentdays(baby.getBirthday(),new Date()))/30;
        instructions = TestInstructionManager.findInstructionByTestIdAndMonthAge(21,monthAge);
        return SUCCESS;
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

    public ResultDDST getResultDDST() {
        return resultDDST;
    }

    public void setResultDDST(ResultDDST resultDDST) {
        this.resultDDST = resultDDST;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
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

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public int getB1() {
        return b1;
    }

    public void setB1(int b1) {
        this.b1 = b1;
    }

    public int getB2() {
        return b2;
    }

    public void setB2(int b2) {
        this.b2 = b2;
    }

    public int getB3() {
        return b3;
    }

    public void setB3(int b3) {
        this.b3 = b3;
    }

    public int getB4() {
        return b4;
    }

    public void setB4(int b4) {
        this.b4 = b4;
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
}
