package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultFeelManager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultFeel;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultFeelAction {
    private Baby baby;
    private int id;
    private ResultFeel resultFeel;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;

//    private String resultAdvice;
//    private String doctorAdvice;
    private String days;
    private String exactAge;
    private TestResultRecord resultRecord;

    public String showResultFeel() {
        resultFeel = ResultFeelManager.findResultByid(id);
        //实足年龄
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(resultFeel.getTime());//检测时间
        baby = BabyManager.findById(resultFeel.getBabyId());
        Calendar calendarBirthday = Calendar.getInstance();
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
        exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";
        days = Math.round((differentDays(baby.getBirthday(),new Date()))/30.4)+"";
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultFeel.getTime());
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultRecord = TestResultRecordManager.find(25,id);
        if(resultRecord == null){
            resultRecord = new TestResultRecord();
            resultRecord.setTesterName("null");
            resultRecord.setRemark("null");
        }
        return SUCCESS;
    }

//    public String saveAdvice() {
//        if(StringUtils.isBlank(resultAdvice) && StringUtils.isBlank(doctorAdvice)){
//            return SUCCESS;
//        }else if(StringUtils.isNotEmpty(resultAdvice) && resultAdvice.length()>300){
//            return "fail";
//        }else if(StringUtils.isNotEmpty(doctorAdvice) && doctorAdvice.length()>300){
//            return "fail";
//        }
//        resultFeel = ResultFeelManager.findResultByid(id);
//        if(resultFeel==null){
//            return "fail";
//        }
//        if(StringUtils.isNotEmpty(resultAdvice)){
//            resultFeel.setResultAdvice(resultAdvice);
//        }
//        if(StringUtils.isNotEmpty(doctorAdvice)){
//            resultFeel.setDoctorAdvice(doctorAdvice);
//        }
//        ResultFeelManager.saveAdvice(resultFeel);
//        return SUCCESS;
//    }

    //保存记录，没有新增，有修改
    public String saveRecordFeel(){
        TestResultRecord record = TestResultRecordManager.find(25,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(25);
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
            updateRecord.setTesterName(resultRecord.getTesterName());
            updateRecord.setVersion(version.toString());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setUpdateTime(new java.util.Date());
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

    public ResultFeel getResultFeel() {
        return resultFeel;
    }

    public void setResultFeel(ResultFeel resultFeel) {
        this.resultFeel = resultFeel;
    }

//    public String getResultAdvice() {
//        return resultAdvice;
//    }
//
//    public void setResultAdvice(String resultAdvice) {
//        this.resultAdvice = resultAdvice;
//    }
//
//    public String getDoctorAdvice() {
//        return doctorAdvice;
//    }
//
//    public void setDoctorAdvice(String doctorAdvice) {
//        this.doctorAdvice = doctorAdvice;
//    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getExactAge() {
        return exactAge;
    }

    public void setExactAge(String exactAge) {
        this.exactAge = exactAge;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }


}
