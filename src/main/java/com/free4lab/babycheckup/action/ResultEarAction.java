package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultEarManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultEar;
import com.free4lab.babycheckup.utils.FileUtil;
import org.apache.commons.lang.StringUtils;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

public class ResultEarAction {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultEar resultEar;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;

    public String showResultEar() {
        resultEar = ResultEarManager.findResultByid(id);
        // 拼装url 用虚拟路径
        if(StringUtils.isNotEmpty(resultEar.getEarImgUrlFirst())){
            resultEar.setEarImgUrlFirst(FileUtil.FILE_VIRTUAL_PATH +resultEar.getEarImgUrlFirst());
        }
        if(StringUtils.isNotEmpty(resultEar.getEarImgUrlSecond())){
            resultEar.setEarImgUrlSecond(FileUtil.FILE_VIRTUAL_PATH +resultEar.getEarImgUrlSecond());
        }
        baby = BabyManager.findById(resultEar.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultEar.getTime());
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

    public ResultEar getResultEar() {
        return resultEar;
    }

    public void setResultEar(ResultEar resultEar) {
        this.resultEar = resultEar;
    }
}