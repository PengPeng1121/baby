package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.AnswerValueEnum_R;
import com.free4lab.babycheckup.constant.AnswerValueEnum_Total;
import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultManager3_6;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.Result3_6;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

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

    private int a0;//总数

    private String p0;//例如 50~70

    private String r0;//评价
    private TestResultRecord resultRecord;
    public String showResult3_6() {
        result3_6 = ResultManager3_6.findResultByid(id);
        baby = BabyManager.findById(result3_6.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(result3_6.getTime());
        //设置初始值
        a0 = 0;
        p0 = "0~50";
        r0 ="需较多改进";
        try{
            if (result3_6!=null) {
                a0 = result3_6.getA1()+ result3_6.getA2()+ result3_6.getA3()+ result3_6.getA4()+ result3_6.getA5()+ result3_6.getA6()+ result3_6.getA7()+ result3_6.getA8();
                p0 = AnswerValueEnum_Total.getIndex(a0);
                r0 = AnswerValueEnum_R.getName(p0);
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

    //保存记录，没有新增，有修改
    public String saveRecord3_6(){
        TestResultRecord record = TestResultRecordManager.find(1,id);
        if(record==null){
            //保存
            TestResultRecordManager.save(resultRecord);
        }else {
            //修改
            TestResultRecord updateRecord = new TestResultRecord();
            BeanUtils.copyProperties(record,updateRecord);
            updateRecord.setRemark(resultRecord.getRemark());
            updateRecord.setTesterName(resultRecord.getTesterName());
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

    public Result3_6 getResult3_6() {
        return result3_6;
    }

    public void setResult3_6(Result3_6 result3_6) {
        this.result3_6 = result3_6;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }
}
