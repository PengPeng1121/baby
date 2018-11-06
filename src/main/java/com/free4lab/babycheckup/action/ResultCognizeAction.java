package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultCognizeManager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultCognize;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import com.pp.common.constant.util.GetScaleUtil;
import org.springframework.beans.BeanUtils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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
    private String evaluation;
    private String days;
    //早产天数
    private Integer preDelivery;
    private TestResultRecord resultRecord;
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
            evaluation = resultCognize.getEvaluation();

            Calendar calendarTestTime = Calendar.getInstance();
            calendarTestTime.setTime(resultCognize.getTime());//检测时间

            Calendar calendarBirthday = Calendar.getInstance();
            calendarBirthday.setTime(baby.getBirthday());
            int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
            exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";


            Date today = new Date(new java.util.Date().getTime());
            Date birth = baby.getBirthday();
            int preDeliveryDay = 0;
            if (baby.getPreDelivery()==null){
                preDeliveryDay = 0;
            }else {
                preDeliveryDay = baby.getPreDelivery();
            }
            preDelivery = preDeliveryDay;
            days = (differentdays(birth,today))/30+"";
            //如果早产要计算实足年龄
            if(preDelivery!=0){
                Integer exactAge = timeArray[0]*365+timeArray[1]*30+timeArray[2];
                //矫正年龄
                Integer adjustAge = exactAge-preDelivery;
                Calendar calendarBefore = Calendar.getInstance(); //得到日历
                calendarBefore.setTime(new Date());//把当前时间赋给日历
                calendarBefore.add(Calendar.DAY_OF_MONTH, -adjustAge);  //设置为前多少天
                int[] preDeliveryTimeArray = ExactAgeUtil.getNatureAge(calendarBefore,calendarTestTime);
                days = String.valueOf(preDeliveryTimeArray[0])+"岁"+String.valueOf(preDeliveryTimeArray[1])+"月"+String.valueOf(preDeliveryTimeArray[2])+"日";
            }
        }catch (Exception e){

        }
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    public Integer differentdays(Date d1, Date d2){
        Integer days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    //保存记录，没有新增，有修改
    public String saveRecordCognize(){
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

    public String getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public Integer getPreDelivery() {
        return preDelivery;
    }

    public void setPreDelivery(Integer preDelivery) {
        this.preDelivery = preDelivery;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }
}
