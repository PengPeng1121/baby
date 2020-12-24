package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.manager.ResultGroup2020Manager;
import com.free4lab.babycheckup.manager.WhoGrowthStandardManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.ResultGroup2020;
import com.free4lab.babycheckup.model.WhoGrowthStandardConstant;
import com.free4lab.babycheckup.vo.Group2020BabyInfo;
import com.free4lab.babycheckup.vo.Group2020BasicInfo;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.util.CollectionUtils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultGroup2020Action {
    //显示的范围
    private final static Integer RANGE = 30;

    private Baby baby;
    private int id;
    private ResultGroup2020 resultGroup2020;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private String days;
    private String exactAge;
    private Integer babyId;
    private int resultId;
    //儿童测试历史 返回
    private Group2020BabyInfo group2020BabyInfo;
    //儿童测试基础数据 返回
    private Group2020BasicInfo group2020BasicInfo;

    //结果页展示方法
    public String showResultGroup2020() {
        resultGroup2020 = ResultGroup2020Manager.findResultByid(id);
        baby = BabyManager.findById(resultGroup2020.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultGroup2020.getTime());
        days = Math.round((differentDays(baby.getBirthday(),new Date()))/30.4)+"";

        //实足年龄
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(resultGroup2020.getTime());//检测时间

        Calendar calendarBirthday = Calendar.getInstance();
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
        exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";

        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    //查询儿童测试历史
    public String group2020BabyInfo(){
        //根据babyId 获取该测评
        List<ResultGroup2020> resultGroups = ResultGroup2020Manager.findResultBybid(babyId);
        Group2020BabyInfo groupBabyInfoHistory = new Group2020BabyInfo();
        if(!CollectionUtils.isEmpty(resultGroups)){
            Double[][] babyHA = new Double[resultGroups.size()][2];
            Double[][] babyWA = new Double[resultGroups.size()][2];
            Double[][] babyHead = new Double[resultGroups.size()][2];
            int n =0;
            for (int i=0;i<resultGroups.size();i++){
                ResultGroup2020 group = resultGroups.get(i);
                //HA
                babyHA[i][0] = Double.parseDouble(group.getBabyMonthAge());
                babyHA[i][1] = Double.parseDouble(group.getHeight());
                //WA
                babyWA[i][0] = Double.parseDouble(group.getBabyMonthAge());
                babyWA[i][1] = Double.parseDouble(group.getWeight());

                if(StringUtils.isNotBlank(group.getHead())){
                    //Head
                    babyHead[n][0] = Double.parseDouble(group.getBabyMonthAge());
                    babyHead[n][1] = Double.parseDouble(group.getHead());
                    n++;
                }
            }
            groupBabyInfoHistory.setBabyHA(babyHA);
            groupBabyInfoHistory.setBabyWA(babyWA);
            if(babyHead.length>0 && babyHead[0][0]!=null){
                groupBabyInfoHistory.setBabyHead(babyHead);
            }
        }
        group2020BabyInfo = groupBabyInfoHistory;
        return SUCCESS;
    }

    //查询基础数据
    public String group2020BasicInfo(){
        Group2020BasicInfo basicInfo = new Group2020BasicInfo();
        //查询 儿童
        baby = BabyManager.findById(babyId);
        int sexType = baby.getGender();
        // 数据类型
        // 标准身高
        Integer constantTypeHeight = 1;
        // 标准体重
        Integer constantTypeWeight = 2;
        // 标准头围
        Integer constantTypeHead = 3;
        //身高标准
        List<WhoGrowthStandardConstant> heightConstantList = WhoGrowthStandardManager.findConstantsByCondition(constantTypeHeight,sexType);
        if(!CollectionUtils.isEmpty(heightConstantList)){
            Double[][] basicHA1 = new Double[heightConstantList.size()][2];
            Double[][] basicHA2 = new Double[heightConstantList.size()][2];
            Double[][] basicHA3 = new Double[heightConstantList.size()][2];
            Double[][] basicHA4 = new Double[heightConstantList.size()][2];
            Double[][] basicHA5 = new Double[heightConstantList.size()][2];
            Double[][] basicHA6 = new Double[heightConstantList.size()][2];
            Double[][] basicHA7 = new Double[heightConstantList.size()][2];
            for(int i =0;i<heightConstantList.size();i++){
                WhoGrowthStandardConstant constant = heightConstantList.get(i);
                //HA1
                basicHA1[i][0] = constant.getMonthAge().doubleValue();
                basicHA1[i][1] = Double.parseDouble(constant.getSdL3());
                //HA2
                basicHA2[i][0] = constant.getMonthAge().doubleValue();
                basicHA2[i][1] = Double.parseDouble(constant.getSdL2());
                //HA3
                basicHA3[i][0] = constant.getMonthAge().doubleValue();
                basicHA3[i][1] = Double.parseDouble(constant.getSdL1());
                //HA4
                basicHA4[i][0] = constant.getMonthAge().doubleValue();
                basicHA4[i][1] = Double.parseDouble(constant.getSdZero());
                //HA5
                basicHA5[i][0] = constant.getMonthAge().doubleValue();
                basicHA5[i][1] = Double.parseDouble(constant.getSdr1());
                //HA6
                basicHA6[i][0] = constant.getMonthAge().doubleValue();
                basicHA6[i][1] = Double.parseDouble(constant.getSdr2());
                //HA7
                basicHA7[i][0] = constant.getMonthAge().doubleValue();
                basicHA7[i][1] = Double.parseDouble(constant.getSdr3());
            }
            basicInfo.setBasicHA1(basicHA1);
            basicInfo.setBasicHA2(basicHA2);
            basicInfo.setBasicHA3(basicHA3);
            basicInfo.setBasicHA4(basicHA4);
            basicInfo.setBasicHA5(basicHA5);
            basicInfo.setBasicHA6(basicHA6);
            basicInfo.setBasicHA7(basicHA7);
        }
        //体重标准
        List<WhoGrowthStandardConstant> weightConstantList = WhoGrowthStandardManager.findConstantsByCondition(constantTypeWeight,sexType);
        if(!CollectionUtils.isEmpty(weightConstantList)){
            Double[][] basicWA1 = new Double[weightConstantList.size()][2];
            Double[][] basicWA2 = new Double[weightConstantList.size()][2];
            Double[][] basicWA3 = new Double[weightConstantList.size()][2];
            Double[][] basicWA4 = new Double[weightConstantList.size()][2];
            Double[][] basicWA5 = new Double[weightConstantList.size()][2];
            Double[][] basicWA6 = new Double[weightConstantList.size()][2];
            Double[][] basicWA7 = new Double[weightConstantList.size()][2];
            for(int i =0;i<weightConstantList.size();i++){
                WhoGrowthStandardConstant constant = weightConstantList.get(i);
                //WA1
                basicWA1[i][0] = constant.getMonthAge().doubleValue();
                basicWA1[i][1] = Double.parseDouble(constant.getSdL3());
                //WA2
                basicWA2[i][0] = constant.getMonthAge().doubleValue();
                basicWA2[i][1] = Double.parseDouble(constant.getSdL2());
                //WA3
                basicWA3[i][0] = constant.getMonthAge().doubleValue();
                basicWA3[i][1] = Double.parseDouble(constant.getSdL1());
                //WA4
                basicWA4[i][0] = constant.getMonthAge().doubleValue();
                basicWA4[i][1] = Double.parseDouble(constant.getSdZero());
                //WA5
                basicWA5[i][0] = constant.getMonthAge().doubleValue();
                basicWA5[i][1] = Double.parseDouble(constant.getSdr1());
                //WA6
                basicWA6[i][0] = constant.getMonthAge().doubleValue();
                basicWA6[i][1] = Double.parseDouble(constant.getSdr2());
                //WA7
                basicWA7[i][0] = constant.getMonthAge().doubleValue();
                basicWA7[i][1] = Double.parseDouble(constant.getSdr3());
            }
            basicInfo.setBasicWA1(basicWA1);
            basicInfo.setBasicWA2(basicWA2);
            basicInfo.setBasicWA3(basicWA3);
            basicInfo.setBasicWA4(basicWA4);
            basicInfo.setBasicWA5(basicWA5);
            basicInfo.setBasicWA6(basicWA6);
            basicInfo.setBasicWA7(basicWA7);
        }
        // 标准头围
        List<WhoGrowthStandardConstant> headConstantList = WhoGrowthStandardManager.findConstantsByCondition(constantTypeHead,sexType);
        if(!CollectionUtils.isEmpty(headConstantList)){
            Double[][] basicHead1 = new Double[headConstantList.size()][2];
            Double[][] basicHead2 = new Double[headConstantList.size()][2];
            Double[][] basicHead3 = new Double[headConstantList.size()][2];
            Double[][] basicHead4 = new Double[headConstantList.size()][2];
            Double[][] basicHead5 = new Double[headConstantList.size()][2];
            Double[][] basicHead6 = new Double[headConstantList.size()][2];
            Double[][] basicHead7 = new Double[headConstantList.size()][2];
            for(int i =0;i<headConstantList.size();i++){
                WhoGrowthStandardConstant constant = headConstantList.get(i);
                //Head1
                basicHead1[i][0] = constant.getMonthAge().doubleValue();
                basicHead1[i][1] = Double.parseDouble(constant.getSdL3());
                //Head2
                basicHead2[i][0] = constant.getMonthAge().doubleValue();
                basicHead2[i][1] = Double.parseDouble(constant.getSdL2());
                //Head3
                basicHead3[i][0] = constant.getMonthAge().doubleValue();
                basicHead3[i][1] = Double.parseDouble(constant.getSdL1());
                //Head4
                basicHead4[i][0] = constant.getMonthAge().doubleValue();
                basicHead4[i][1] = Double.parseDouble(constant.getSdZero());
                //Head5
                basicHead5[i][0] = constant.getMonthAge().doubleValue();
                basicHead5[i][1] = Double.parseDouble(constant.getSdr1());
                //Head6
                basicHead6[i][0] = constant.getMonthAge().doubleValue();
                basicHead6[i][1] = Double.parseDouble(constant.getSdr2());
                //Head7
                basicHead7[i][0] = constant.getMonthAge().doubleValue();
                basicHead7[i][1] = Double.parseDouble(constant.getSdr3());
            }
            basicInfo.setBasicHead1(basicHead1);
            basicInfo.setBasicHead2(basicHead2);
            basicInfo.setBasicHead3(basicHead3);
            basicInfo.setBasicHead4(basicHead4);
            basicInfo.setBasicHead5(basicHead5);
            basicInfo.setBasicHead6(basicHead6);
            basicInfo.setBasicHead7(basicHead7);
        }

        group2020BasicInfo = basicInfo;
        return SUCCESS;
    }

    public int differentDays(Date d1, Date d2){
        int days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    public String updateResultGroup2020() {
        if(resultGroup2020 == null){
            return "fail";
        }

        ResultGroup2020 old = ResultGroup2020Manager.findResultByid(resultGroup2020.getId());

        if(old.getBabyId() != resultGroup2020.getBabyId()){
            return "fail";
        }

        old.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
        old.setUpdateTime(new Date());
        old.setHead(resultGroup2020.getHead());
        old.setHeight(resultGroup2020.getHeight());
        old.setWeight(resultGroup2020.getWeight());
        ResultGroup2020Manager.update(old);
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

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public ResultGroup2020 getResultGroup2020() {
        return resultGroup2020;
    }

    public void setResultGroup2020(ResultGroup2020 resultGroup2020) {
        this.resultGroup2020 = resultGroup2020;
    }

    public Group2020BabyInfo getGroup2020BabyInfo() {
        return group2020BabyInfo;
    }

    public void setGroup2020BabyInfo(Group2020BabyInfo group2020BabyInfo) {
        this.group2020BabyInfo = group2020BabyInfo;
    }

    public Group2020BasicInfo getGroup2020BasicInfo() {
        return group2020BasicInfo;
    }

    public void setGroup2020BasicInfo(Group2020BasicInfo group2020BasicInfo) {
        this.group2020BasicInfo = group2020BasicInfo;
    }

    public Integer getBabyId() {
        return babyId;
    }

    public void setBabyId(Integer babyId) {
        this.babyId = babyId;
    }

    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    public String getExactAge() {
        return exactAge;
    }

    public void setExactAge(String exactAge) {
        this.exactAge = exactAge;
    }

}
