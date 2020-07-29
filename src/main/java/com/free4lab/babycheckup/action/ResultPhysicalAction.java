package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultPhysicalManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultPhysical;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultPhysicalAction {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultPhysical resultPhysical;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;

    public String showResultPhysical() {
        resultPhysical = ResultPhysicalManager.findResultByid(id);
        baby = BabyManager.findById(resultPhysical.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultPhysical.getTime());
        Date d2 = Date.valueOf(stime);
        monthage = diffDays(d1,d2);
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

    public int getResultid() {
        return resultid;
    }

    public void setResultid(int resultid) {
        this.resultid = resultid;
    }

    public ResultPhysical getResultPhysical() {
        return resultPhysical;
    }

    public void setResultPhysical(ResultPhysical resultPhysical) {
        this.resultPhysical = resultPhysical;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }
}
