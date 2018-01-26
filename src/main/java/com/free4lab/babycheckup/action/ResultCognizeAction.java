package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultCognizeManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultCognize;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultCognizeAction {
    private Baby baby;
    private int id;
    private ResultCognize resultCognize;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private String talent;//
    private String scale;//
    private String percent;//
    private String section90 ;
    private String section95 ;
    private String exactAge;//实足年龄
    public String showResultCognize() {
        resultCognize = ResultCognizeManager.findResultByid(id);
        baby = BabyManager.findById(resultCognize.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultCognize.getTime());
        try{
            talent = String.valueOf(resultCognize.getTalent());
            scale = resultCognize.getScale();
            percent = resultCognize.getPercent();
            section90 = resultCognize.getSection90();
            section95 = resultCognize.getSection95();

            Calendar calendarTestTime = Calendar.getInstance();
            calendarTestTime.setTime(resultCognize.getTime());//检测时间

            Calendar calendarBirthday = Calendar.getInstance();
            if(baby!=null){
                calendarBirthday.setTime(baby.getBirthday());
                int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
                exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";
            }
        }catch (Exception e){

        }
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
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

    public ResultCognize getResultCognize() {
        return resultCognize;
    }

    public void setResultCognize(ResultCognize resultCognize) {
        this.resultCognize = resultCognize;
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

    public String getTalent() {
        return talent;
    }

    public void setTalent(String talent) {
        this.talent = talent;
    }

    public String getPercent() {
        return percent;
    }

    public void setPercent(String percent) {
        this.percent = percent;
    }

    public String getScale() {
        return scale;
    }

    public void setScale(String scale) {
        this.scale = scale;
    }

    public String getSection90() {
        return section90;
    }

    public void setSection90(String section90) {
        this.section90 = section90;
    }

    public String getSection95() {
        return section95;
    }

    public void setSection95(String section95) {
        this.section95 = section95;
    }

    public String getExactAge() {
        return exactAge;
    }

    public void setExactAge(String exactAge) {
        this.exactAge = exactAge;
    }
}
