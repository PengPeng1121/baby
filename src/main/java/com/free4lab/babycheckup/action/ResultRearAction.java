package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultRearManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.ResultRear;
import com.opensymphony.xwork2.ActionContext;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultRearAction {
    private int resultId;
    private String rearContent;
    private Baby baby;
    private int id;
    private ResultRear resultRear;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期

    public String showResultRear() {
        resultRear = ResultRearManager.findResultByid(id);
        baby = BabyManager.findById(resultRear.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultRear.getTime());
        return SUCCESS;
    }

    public String updateResultRear() {
        resultRear = ResultRearManager.findResultByid(resultId);
        resultRear.setRearContent(rearContent);
        resultRear.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        resultRear.setUpdateTime(new Date());
        resultRear = ResultRearManager.update(resultRear);
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

    public ResultRear getResultRear() {
        return resultRear;
    }

    public void setResultRear(ResultRear resultRear) {
        this.resultRear = resultRear;
    }

    public String getRearContent() {
        return rearContent;
    }

    public void setRearContent(String rearContent) {
        this.rearContent = rearContent;
    }
}
