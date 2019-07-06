package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultFeelManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultFeel;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import org.apache.commons.lang.StringUtils;

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

    private String resultAdvice;
    private String doctorAdvice;
    private String days;
    private String exactAge;
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
        return SUCCESS;
    }

    public String saveAdvice() {
        if(StringUtils.isBlank(resultAdvice) && StringUtils.isBlank(doctorAdvice)){
            return SUCCESS;
        }else if(StringUtils.isNotEmpty(resultAdvice) && resultAdvice.length()>300){
            return "fail";
        }else if(StringUtils.isNotEmpty(doctorAdvice) && doctorAdvice.length()>300){
            return "fail";
        }
        resultFeel = ResultFeelManager.findResultByid(id);
        if(resultFeel==null){
            return "fail";
        }
        if(StringUtils.isNotEmpty(resultAdvice)){
            resultFeel.setResultAdvice(resultAdvice);
        }
        if(StringUtils.isNotEmpty(doctorAdvice)){
            resultFeel.setDoctorAdvice(doctorAdvice);
        }
        ResultFeelManager.saveAdvice(resultFeel);
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

    public String getResultAdvice() {
        return resultAdvice;
    }

    public void setResultAdvice(String resultAdvice) {
        this.resultAdvice = resultAdvice;
    }

    public String getDoctorAdvice() {
        return doctorAdvice;
    }

    public void setDoctorAdvice(String doctorAdvice) {
        this.doctorAdvice = doctorAdvice;
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
}
