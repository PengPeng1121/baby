package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager3_6;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result3_6;
import com.opensymphony.xwork2.ActionContext;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction3_6 {
    private Baby baby;
    private int id;
    private Result3_6 result3_6;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;

    public String showResult3_6() {
        result3_6 = ResultManager3_6.findResultByid(id);
        baby = BabyManager.findById(result3_6.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result3_6.getTime());

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


    public Result3_6 getResult3_6() {
        return result3_6;
    }

    public void setResult3_6(Result3_6 result3_6) {
        this.result3_6 = result3_6;
    }
}
