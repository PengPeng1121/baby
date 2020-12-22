package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultBasic1Manager;
import com.free4lab.babycheckup.manager.ResultRearManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultBasic1;
import com.free4lab.babycheckup.utils.FileUtil;
import com.opensymphony.xwork2.ActionContext;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultBasic1Action {
    private int resultId;
    private Baby baby;
    private int id;
    private ResultBasic1 resultBasic1;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;

    public String showResultBasic1() {
        resultBasic1 = ResultBasic1Manager.findResultByid(id);
        baby = BabyManager.findById(resultBasic1.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new SimpleDateFormat("yyyy-MM-dd").format(resultBasic1.getTime());
        Calendar cal = Calendar.getInstance();
        cal.setTime(resultBasic1.getTime());
        Date d2 = cal.getTime();
        monthage = diffDays(d1,d2);
        return SUCCESS;
    }

    public String updateResultBasic1() {
        if(resultBasic1 == null){
            return "fail";
        }

        ResultBasic1 old = ResultBasic1Manager.findResultByid(resultBasic1.getId());

        if(old.getBabyId() != resultBasic1.getBabyId()){
            return "fail";
        }

        old.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        old.setUpdateTime(new Date());
        old.setNickName(resultBasic1.getNickName());
        old.setHeadImgUrl(resultBasic1.getHeadImgUrl());
        old.setAddress(resultBasic1.getAddress());
        old.setContactMobile(resultBasic1.getContactMobile());
        ResultBasic1Manager.update(old);
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

    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    public ResultBasic1 getResultBasic1() {
        return resultBasic1;
    }

    public void setResultBasic1(ResultBasic1 resultBasic1) {
        this.resultBasic1 = resultBasic1;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }
}
