package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultADHDManager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultADHD;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultADHDAction {
    private Baby baby;
    private int id;
    private ResultADHD resultADHD;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private String days;
    private TestResultRecord resultRecord;

    public String showResultADHD() {
        resultADHD = ResultADHDManager.findResultByid(id);
        //实足年龄
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(resultADHD.getTime());//检测时间
        baby = BabyManager.findById(resultADHD.getBabyId());
        days = Math.round((differentDays(baby.getBirthday(),new Date()))/30.4)+"";
        resultRecord = TestResultRecordManager.find(27,id);
        if(resultRecord == null){
            resultRecord = new TestResultRecord();
            resultRecord.setTesterName("null");
            resultRecord.setRemark("null");
        }
        return SUCCESS;
    }


    //保存记录，没有新增，有修改
    public String saveRecordADHD(){
        TestResultRecord record = TestResultRecordManager.find(27,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(27);
            resultRecord.setVersion("1");
            resultRecord.setHospitalId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultRecord.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            resultRecord.setCreateUser((String) ActionContext.getContext().getSession().get("username"));
            resultRecord.setUpdateTime(new Date());
            resultRecord.setCreateTime(new Date());
            TestResultRecordManager.save(resultRecord);
        }else {
            //修改
            TestResultRecord updateRecord = new TestResultRecord();
            BeanUtils.copyProperties(record,updateRecord);
            Integer version = Integer.parseInt(record.getVersion());
            version = version +1;//升版本
            updateRecord.setTesterName(resultRecord.getTesterName());
            updateRecord.setVersion(version.toString());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setUpdateTime(new Date());
            TestResultRecordManager.update(updateRecord);
        }
        return SUCCESS;
    }

    public int differentDays(Date d1, Date d2){
        int days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
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

    public ResultADHD getResultADHD() {
        return resultADHD;
    }

    public void setResultADHD(ResultADHD resultADHD) {
        this.resultADHD = resultADHD;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }


    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }


}
