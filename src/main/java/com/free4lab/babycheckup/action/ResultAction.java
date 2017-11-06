package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result;
import com.opensymphony.xwork2.ActionContext;

import java.text.SimpleDateFormat;
import java.sql.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction {
    private int resultid;
    private Baby baby;
    private int id;
    private Result result;
    private String SUCCESS = "success";
    private int monthage;
    private String stime;//检查日期
    private int scoreSport;
    private int scoreAct;
    private int scoreAdapt;
    private int scoreLanguage;
    private int scoreSocial;
    private Hospital hospital;

    public String showResult() {
        result = ResultManager.findResultByid(id);
        baby = BabyManager.findById(result.getBabyid());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result.getTime());
        Date d2 = Date.valueOf(stime);
        monthage = (differentdays(d1,d2))/30;
        //这是算法  是不是很吊
        scoreSport = (int)result.getScoreSport()*100/monthage;
        scoreAct = (int)result.getScoreAct()*100/monthage;
        scoreAdapt = (int)result.getScoreAdapt()*100/monthage;
        scoreLanguage = (int)result.getScoreLanguage()*100/monthage;
        scoreSocial = (int)result.getScoreSocial()*100/monthage;
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

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public int getMonthage() {
        return monthage;
    }

    public void setMonthage(int monthage) {
        this.monthage = monthage;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public int getScoreSport() {
        return scoreSport;
    }

    public void setScoreSport(int scoreSport) {
        this.scoreSport = scoreSport;
    }

    public int getScoreAct() {
        return scoreAct;
    }

    public void setScoreAct(int scoreAct) {
        this.scoreAct = scoreAct;
    }

    public int getScoreAdapt() {
        return scoreAdapt;
    }

    public void setScoreAdapt(int scoreAdapt) {
        this.scoreAdapt = scoreAdapt;
    }

    public int getScoreLanguage() {
        return scoreLanguage;
    }

    public void setScoreLanguage(int scoreLanguage) {
        this.scoreLanguage = scoreLanguage;
    }

    public int getScoreSocial() {
        return scoreSocial;
    }

    public void setScoreSocial(int scoreSocial) {
        this.scoreSocial = scoreSocial;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }


    public int getResultid() {
        return resultid;
    }

    public void setResultid(int resultid) {
        this.resultid = resultid;
    }
}
