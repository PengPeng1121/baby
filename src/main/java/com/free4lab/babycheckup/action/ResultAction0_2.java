package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.AnswerValueEnum_R;
import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager0_2;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result0_2;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultAction0_2 {
    private Baby baby;
    private int id;
    private Result0_2 result0_2;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;

    private int a0;//总数

    private String p0;//例如 50~70

    private String r0;//评价
    private TestResultRecord resultRecord;

    public String showResult0_2() {
        result0_2 = ResultManager0_2.findResultByid(id);
        baby = BabyManager.findById(result0_2.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result0_2.getTime());
        //设置初始值
        a0 = 0;
        p0 = "0~50";
        r0 ="需较多改进";
        try{
            if (result0_2!=null) {
                a0 = result0_2.getA1()+ result0_2.getA2()+ result0_2.getA3()+ result0_2.getA4()+ result0_2.getA5()+ result0_2.getA6();
                p0 = calculateP(a0*100/45);
                r0 = AnswerValueEnum_R.getName(p0);
            }
        }catch (Exception e){

        }
        resultRecord = TestResultRecordManager.find(16,id);
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    private String calculateP(Integer p){
        String pStr = "0~50";
        if(0<p && p<=50){
            pStr = "0~50";
        }else if(50<p && p<=75){
            pStr = "50~75";
        }else if(75<p && p<=90){
            pStr = "75~90";
        }else if(90<p && p<=100){
            pStr = "90~100";
        }
        return pStr;
    }

    //保存记录，没有新增，有修改
    public String saveRecord0_2(){
        TestResultRecord record = TestResultRecordManager.find(16,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(16);
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
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setTesterName(resultRecord.getTesterName());
            updateRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
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

    public Result0_2 getResult0_2() {
        return result0_2;
    }

    public void setResult0_2(Result0_2 result0_2) {
        this.result0_2 = result0_2;
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

    public String getP0() {
        return p0;
    }

    public void setP0(String p0) {
        this.p0 = p0;
    }

    public String getR0() {
        return r0;
    }

    public void setR0(String r0) {
        this.r0 = r0;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }
}
