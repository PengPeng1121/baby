package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultQiZhi2020Manager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultQiZhi2020;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.sql.Date;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultQiZhi2020Action {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultQiZhi2020 resultQiZhi2020;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;
    private TestResultRecord resultRecord;

    public String showResultQiZhi2020() {
        resultQiZhi2020 = ResultQiZhi2020Manager.findResultByid(id);
        baby = BabyManager.findById(resultQiZhi2020.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultQiZhi2020.getTime());
        Date d2 = Date.valueOf(stime);
        monthage = diffDays(d1,d2);
        resultRecord = TestResultRecordManager.find(35,id);
        if(resultRecord == null){
            resultRecord = new TestResultRecord();
            resultRecord.setTesterName("null");
            resultRecord.setRemark("null");
        }
        return SUCCESS;
    }

    public Double diffDays(java.util.Date d1, java.util.Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30.4));
    }
    //保存记录，没有新增，有修改
    public String saveRecordQiZhi2020(){
        TestResultRecord record = TestResultRecordManager.find(35,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(35);
            resultRecord.setVersion("1");
            resultRecord.setHospitalId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultRecord.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            resultRecord.setCreateUser((String) ActionContext.getContext().getSession().get("username"));
            resultRecord.setUpdateTime(new java.util.Date());
            resultRecord.setCreateTime(new java.util.Date());
            TestResultRecordManager.save(resultRecord);
        }else {
            //修改
            TestResultRecord updateRecord = new TestResultRecord();
            BeanUtils.copyProperties(record,updateRecord);
            Integer version = Integer.parseInt(record.getVersion());
            version = version +1;//升版本

            updateRecord.setVersion(version.toString());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setTesterName(resultRecord.getTesterName());
            updateRecord.setUpdateTime(new java.util.Date());
            TestResultRecordManager.update(updateRecord);
        }
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

    public ResultQiZhi2020 getResultQiZhi2020() {
        return resultQiZhi2020;
    }

    public void setResultQiZhi2020(ResultQiZhi2020 resultQiZhi2020) {
        this.resultQiZhi2020 = resultQiZhi2020;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }
}
