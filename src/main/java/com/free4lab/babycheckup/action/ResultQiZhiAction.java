package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultQiZhiManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultQiZhi;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.resultQiZhi.QiZhiVO;
import com.pp.common.constant.util.ExactAgeUtil;
import com.pp.common.constant.util.QiZhiUtil;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultQiZhiAction {
    private Baby baby;
    private int id;
    private ResultQiZhi resultQiZhi;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;


//    private String p1;//标准分
//    private String p2;//标准分
//    private String p3;//标准分
//    private String p4;//标准分
//    private String p5;//标准分
//    private String p6;//标准分
//    private String p7;//标准分
//    private String p8;//标准分
//    private String p9;//标准分
//
//    private String r1;//范围
//    private String r2;//范围
//    private String r3;//范围
//    private String r4;//范围
//    private String r5;//范围
//    private String r6;//范围
//    private String r7;//范围
//    private String r8;//范围
//    private String r9;//范围

    private String days;
    private String exactAge;
    private QiZhiVO qiZhiVO;

    public String showResultQiZhi() {
        resultQiZhi = ResultQiZhiManager.findResultByid(id);
        baby = BabyManager.findById(resultQiZhi.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultQiZhi.getTime());
        //用测试时间计算标准和范围
        //设置初始值

        //实足年龄
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(resultQiZhi.getTime());//检测时间
        baby = BabyManager.findById(resultQiZhi.getBabyId());
        Calendar calendarBirthday = Calendar.getInstance();
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
        exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";
        days = Math.round((differentDays(baby.getBirthday(),new Date()))/30.4)+"";
        qiZhiVO = QiZhiUtil.getConstant(resultQiZhi.getTime(),baby.getBirthday());
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    public int differentDays(Date d1, Date d2){
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

    public ResultQiZhi getResultQiZhi() {
        return resultQiZhi;
    }

    public void setResultQiZhi(ResultQiZhi resultQiZhi) {
        this.resultQiZhi = resultQiZhi;
    }

    public QiZhiVO getQiZhiVO() {
        return qiZhiVO;
    }

    public void setQiZhiVO(QiZhiVO qiZhiVO) {
        this.qiZhiVO = qiZhiVO;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getExactAge() {
        return exactAge;
    }

    public void setExactAge(String exactAge) {
        this.exactAge = exactAge;
    }
}
