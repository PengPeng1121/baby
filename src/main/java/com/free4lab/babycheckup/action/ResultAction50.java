package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.AnswerValueEnum_R;
import com.free4lab.babycheckup.constant.AnswerValueEnum_Total;
import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager50;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result50;
import com.opensymphony.xwork2.ActionContext;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction50 {
    private Baby baby;
    private int id;
    private Result50 result50;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;

    private int a0;//总数

    private String talent;//

    private String exatAge;//

    public String showResult50() {
        result50 = ResultManager50.findResultByid(id);
        baby = BabyManager.findById(result50.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result50.getTime());
        //设置初始值
        a0 = 0;

        try{
            if (result50!=null) {
                a0 = result50.getA1()+ result50.getA2()+ result50.getA3()+ result50.getA4()+ result50.getA5()+ result50.getA6();

            }
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

    public Result50 getResult50() {
        return result50;
    }

    public void setResult50(Result50 result50) {
        this.result50 = result50;
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

    public int getA0() {
        return a0;
    }

    public void setA0(int a0) {
        this.a0 = a0;
    }

    public String getTalent() {
        return talent;
    }

    public void setTalent(String talent) {
        this.talent = talent;
    }

    public String getExatAge() {
        return exatAge;
    }

    public void setExatAge(String exatAge) {
        this.exatAge = exatAge;
    }
}
