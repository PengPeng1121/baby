package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.ResultFeedManager;
import com.free4lab.babycheckup.manager.TestResultRecordManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultFeed;
import com.free4lab.babycheckup.model.TestResultRecord;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.beans.BeanUtils;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultFeedAction {
    private int resultid;
    private Baby baby;
    private int id;
    private ResultFeed resultFeed;
    private String SUCCESS = "success";
    private Double monthage;
    private String stime;//检查日期
    private Hospital hospital;
    private TestResultRecord resultRecord;

    public String showResultFeed() {
        resultFeed = ResultFeedManager.findResultByid(id);
        baby = BabyManager.findById(resultFeed.getBabyId());
        Date d1 = baby.getBirthday();
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultFeed.getTime());
        Calendar cal = Calendar.getInstance();
        cal.setTime(resultFeed.getTime());
        Date d2 = cal.getTime();
        monthage = diffDays(d1,d2);
        resultRecord = TestResultRecordManager.find(37,id);
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
    public String saveRecordFeed(){
        TestResultRecord record = TestResultRecordManager.find(37,resultRecord.getResultId());
        if(record==null){
            //保存
            resultRecord.setTestId(37);
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

    public String updateResultFeed() {
        if(resultFeed == null){
            return "fail";
        }

        ResultFeed old = ResultFeedManager.findResultByid(resultFeed.getId());

        if(old.getBabyId() != resultFeed.getBabyId()){
            return "fail";
        }

        old.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        old.setUpdateTime(new Date());
        old.setCurrentMilkYield(resultFeed.getCurrentMilkYield());
        old.setAccessoryFoodAddDate(resultFeed.getAccessoryFoodAddDate());
        old.setAccessoryFoodAddTimes(resultFeed.getAccessoryFoodAddTimes());
        old.setAccessoryFoodShape(resultFeed.getAccessoryFoodShape());
        old.setAccessoryFoodSituation(resultFeed.getAccessoryFoodSituation());
        old.setFeedSuggest(resultFeed.getFeedSuggest());
        old.setFoodAllergySituation(resultFeed.getFoodAllergySituation());
        old.setIsFoodAllergy(resultFeed.getIsFoodAllergy());
        old.setIsOwnFood(resultFeed.getIsOwnFood());
        old.setMilkRecipe(resultFeed.getMilkRecipe());
        old.setMilkRecipeInfo(resultFeed.getMilkRecipeInfo());
        old.setMilkType(resultFeed.getMilkType());
        old.setOwnFoodSituation(resultFeed.getOwnFoodSituation());
        old.setShitShape(resultFeed.getShitShape());
        old.setShitTimes(resultFeed.getShitTimes());
        old.setRemark(resultFeed.getRemark());
        ResultFeedManager.update(old);
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

    public ResultFeed getResultFeed() {
        return resultFeed;
    }

    public void setResultFeed(ResultFeed resultFeed) {
        this.resultFeed = resultFeed;
    }

    public TestResultRecord getResultRecord() {
        return resultRecord;
    }

    public void setResultRecord(TestResultRecord resultRecord) {
        this.resultRecord = resultRecord;
    }
}
