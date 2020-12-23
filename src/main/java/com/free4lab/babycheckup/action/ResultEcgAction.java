package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultEcgManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.ResultEcg;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class ResultEcgAction {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultEcg resultECG;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期

    public String showResult() {
        resultECG = ResultEcgManager.findResultByid(id);

        baby = BabyManager.findById(resultECG.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultECG.getTime());
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

    public ResultEcg getResultECG() {
        return resultECG;
    }

    public void setResultECG(ResultEcg resultECG) {
        this.resultECG = resultECG;
    }
}
