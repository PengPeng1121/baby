package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultNeiManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultNei;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.IQUtil;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultNeiAction {
    private Baby baby;
    private int id;
    private ResultNei resultNei;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private String natureAgeTillMonth;//实足年龄到月
    private Integer IQ;
    private String days;
    public String showResultNei() {
        resultNei = ResultNeiManager.findResultByid(id);
        baby = BabyManager.findById(resultNei.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultNei.getTime());
        try{
            Calendar calendarTestTime = Calendar.getInstance();
            calendarTestTime.setTime(new Date());//检测时间
            Calendar calendarBirthday = Calendar.getInstance();
            calendarBirthday.setTime(baby.getBirthday());
            int[] timeArray = IQUtil.getNatureAgeTillMonth(calendarBirthday,calendarTestTime);
            natureAgeTillMonth = timeArray[0]+"岁"+timeArray[1]+"个月";
            IQ = resultNei.getIQ();
            days = (differentdays(baby.getBirthday(),new Date()))/30+"";
        }catch (Exception e){

        }
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    public int differentdays(Date d1, Date d2){
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

    public ResultNei getResultNei() {
        return resultNei;
    }

    public void setResultNei(ResultNei resultNei) {
        this.resultNei = resultNei;
    }

    public String getNatureAgeTillMonth() {
        return natureAgeTillMonth;
    }

    public void setNatureAgeTillMonth(String natureAgeTillMonth) {
        this.natureAgeTillMonth = natureAgeTillMonth;
    }

    public Integer getIQ() {
        return IQ;
    }

    public void setIQ(Integer IQ) {
        this.IQ = IQ;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }
}
