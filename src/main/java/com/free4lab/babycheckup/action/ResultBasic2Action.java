package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultBasic2Manager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultBasic2;
import com.opensymphony.xwork2.ActionContext;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultBasic2Action {
    private int resultId;
    private Baby baby;
    private int id;
    private ResultBasic2 resultBasic2;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;

    public String showResultBasic2() {
        resultBasic2 = ResultBasic2Manager.findResultByid(id);
        baby = BabyManager.findById(resultBasic2.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultBasic2.getTime());
        Calendar cal = Calendar.getInstance();
        cal.setTime(resultBasic2.getTime());
        Date d2 = cal.getTime();
        monthage = diffDays(d1,d2);
        return SUCCESS;
    }


    public Double diffDays(Date d1, Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30.4));
    }


    public String updateResultBasic2() {
        ResultBasic2 old = ResultBasic2Manager.findResultByid(resultId);
        if(resultBasic2 == null){
            return "fail";
        }
        if(resultId != resultBasic2.getId() || old.getBabyId() != resultBasic2.getBabyId()){
            return "fail";
        }
        resultBasic2.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        resultBasic2.setUpdateTime(new Date());
        resultBasic2 = ResultBasic2Manager.update(resultBasic2);
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

    public ResultBasic2 getResultBasic2() {
        return resultBasic2;
    }

    public void setResultBasic2(ResultBasic2 resultBasic2) {
        this.resultBasic2 = resultBasic2;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }
}
