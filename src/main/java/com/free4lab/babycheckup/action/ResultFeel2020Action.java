package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultFeel2020Manager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultFeel2020Action {
    private Baby baby;
    private int id;
    private ResultFeel2020 resultFeel2020;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private String days;
    private String exactAge;
    private TestResultRecord resultRecord;

    public String showResultFeel2020() {
        resultFeel2020 = ResultFeel2020Manager.findResultByid(id);
        //实足年龄
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(resultFeel2020.getTime());//检测时间
        baby = BabyManager.findById(resultFeel2020.getBabyId());

        Calendar calendarBirthday = Calendar.getInstance();
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
        exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";
        days = Math.round((differentDays(baby.getBirthday(),new Date()))/30.4)+"";
        stime = new SimpleDateFormat("yyyy-MM-dd").format(resultFeel2020.getTime());
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultRecord = TestResultRecordManager.find(28,id);
        if(resultRecord == null){
            resultRecord = new TestResultRecord();
            resultRecord.setTesterName("null");
            resultRecord.setRemark("null");
        }
        return SUCCESS;
    }


    //保存记录，没有新增，有修改
    public String saveRecordFeel2020(){
        TestResultRecord record = TestResultRecordManager.find(28,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(28);
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

            updateRecord.setVersion(version.toString());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setTesterName(resultRecord.getTesterName());
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

    public ResultFeel2020 getResultFeel2020() {
        return resultFeel2020;
    }

    public void setResultFeel2020(ResultFeel2020 resultFeel2020) {
        this.resultFeel2020 = resultFeel2020;
    }

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
