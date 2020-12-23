package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultSummaryManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultSummary;
import com.opensymphony.xwork2.ActionContext;

import java.util.Calendar;
import java.util.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultSummaryAction {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultSummary resultSummary;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;

    public String showResultSummary() {
        resultSummary = ResultSummaryManager.findResultByid(id);
        baby = BabyManager.findById(resultSummary.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultSummary.getTime());

        Calendar cal = Calendar.getInstance();
        cal.setTime(resultSummary.getTime());
        Date d2 = cal.getTime();

        monthage = diffDays(d1,d2);
        return SUCCESS;
    }


    public Double diffDays(java.util.Date d1, java.util.Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30.4));
    }


    public String updateResultSummary() {
        if(resultSummary == null){
            return "fail";
        }

        ResultSummary old = ResultSummaryManager.findResultByid(resultSummary.getId());

        if(old.getBabyId() != resultSummary.getBabyId()){
            return "fail";
        }

        old.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        old.setUpdateTime(new Date());
        old.setRemark(resultSummary.getRemark());
        old.setSummary(resultSummary.getSummary());
        old.setSummaryDate(resultSummary.getSummaryDate());
        ResultSummaryManager.update(old);
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

    public int getResultid() {
        return resultid;
    }

    public void setResultid(int resultid) {
        this.resultid = resultid;
    }

    public ResultSummary getResultSummary() {
        return resultSummary;
    }

    public void setResultSummary(ResultSummary resultSummary) {
        this.resultSummary = resultSummary;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }
}
