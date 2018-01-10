package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager132;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result132;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction132 {
    private Baby baby;
    private int id;
    private Result132 result132;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private int days;
    private int a0;//总数

    private String normal;//标准分

    public String showResult132() {
        result132 = ResultManager132.findResultByid(id);
        baby = BabyManager.findById(result132.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result132.getTime());
        //设置初始值
        a0 = 0;
        days = (differentdays(baby.getBirthday(),new Date()))/30;
        try{
            if (result132!=null) {
                a0 = result132.getA1()+ result132.getA2()+ result132.getA3()+ result132.getA4()+ result132.getA5()+ result132.getA6();
            }
            normal = result132.getNorm();

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

    public Result132 getResult132() {
        return result132;
    }

    public void setResult132(Result132 result132) {
        this.result132 = result132;
    }

    public String getNormal() {
        return normal;
    }

    public void setNormal(String normal) {
        this.normal = normal;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }
}
