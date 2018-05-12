package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultDDSTManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultDDST;
import com.opensymphony.xwork2.ActionContext;

import java.text.SimpleDateFormat;
import java.util.Date;

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

    private int days;

    public String showResultDDST() {
        resultDDST = ResultDDSTManager.findResultByid(id);
        baby = BabyManager.findById(resultDDST.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultDDST.getTime());
        try{

            days = (differentdays(baby.getBirthday(),new Date()))/30;

        }catch (Exception e){

        }
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    public Integer differentdays(Date d1, Date d2){
        Integer days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
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
}
