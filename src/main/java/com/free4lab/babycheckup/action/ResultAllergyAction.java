package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultAllergyManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultAllergy;
import com.free4lab.babycheckup.model.ResultSummary;
import com.opensymphony.xwork2.ActionContext;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAllergyAction {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultAllergy resultAllergy;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;

    public String showResultAllergy() {
        resultAllergy = ResultAllergyManager.findResultByid(id);
        baby = BabyManager.findById(resultAllergy.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultAllergy.getTime());

        Calendar cal = Calendar.getInstance();
        cal.setTime(resultAllergy.getTime());
        Date d2 = cal.getTime();


        monthage = diffDays(d1,d2);
        return SUCCESS;
    }


    public Double diffDays(java.util.Date d1, java.util.Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30.4));
    }

    public String updateResultAllergy() {
        if(resultAllergy == null){
            return "fail";
        }

        ResultAllergy old = ResultAllergyManager.findResultByid(resultAllergy.getId());

        if(old.getBabyId() != resultAllergy.getBabyId()){
            return "fail";
        }

        old.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        old.setUpdateTime(new Date());
        old.setRemark(resultAllergy.getRemark());
        old.setR1(resultAllergy.getR1());
        old.setR2(resultAllergy.getR2());
        old.setR3(resultAllergy.getR3());
        old.setR4(resultAllergy.getR4());
        old.setR5(resultAllergy.getR5());
        old.setR6(resultAllergy.getR6());
        old.setR7(resultAllergy.getR7());
        old.setR8(resultAllergy.getR8());
        old.setR9(resultAllergy.getR9());
        old.setR10(resultAllergy.getR10());
        old.setR11(resultAllergy.getR11());
        old.setR12(resultAllergy.getR12());
        old.setR13(resultAllergy.getR13());
        old.setR14(resultAllergy.getR14());
        old.setR15(resultAllergy.getR15());
        ResultAllergyManager.update(old);
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

    public ResultAllergy getResultAllergy() {
        return resultAllergy;
    }

    public void setResultAllergy(ResultAllergy resultAllergy) {
        this.resultAllergy = resultAllergy;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }
}
