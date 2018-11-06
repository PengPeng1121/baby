package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager50;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result50;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction50 {
    private Baby baby;
    private int id;
    private Result50 result50;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;

    private int a0;//总数

    private String talent;//

    private String exactAge;//
    private TestResultRecord resultRecord;
    public String showResult50() {
        result50 = ResultManager50.findResultByid(id);
        baby = BabyManager.findById(result50.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result50.getTime());
        //设置初始值
        a0 = 0;

        try{
            if (result50!=null) {
                a0 = result50.getA1()+ result50.getA2()+ result50.getA3()+ result50.getA4()+ result50.getA5()+ result50.getA6();
            }

            Calendar calendarTestTime = Calendar.getInstance();
            calendarTestTime.setTime(result50.getTime());//检测时间

            Calendar calendarBirthday = Calendar.getInstance();
            if(baby!=null){
                calendarBirthday.setTime(baby.getBirthday());
                int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
                exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";
            }
            talent = String.valueOf(result50.getTalent());
        }catch (Exception e){

        }
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    //保存记录，没有新增，有修改
    public String saveRecord50(){
        TestResultRecord record = TestResultRecordManager.find(1,id);
        if(record==null){
            //保存
            TestResultRecordManager.save(resultRecord);
        }else {
            //修改
            TestResultRecord updateRecord = new TestResultRecord();
            BeanUtils.copyProperties(record,updateRecord);
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setTesterName(resultRecord.getTesterName());
            TestResultRecordManager.update(updateRecord);
        }
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

    public Result50 getResult50() {
        return result50;
    }

    public void setResult50(Result50 result50) {
        this.result50 = result50;
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

    public int getA0() {
        return a0;
    }

    public void setA0(int a0) {
        this.a0 = a0;
    }

    public String getTalent() {
        return talent;
    }

    public void setTalent(String talent) {
        this.talent = talent;
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
