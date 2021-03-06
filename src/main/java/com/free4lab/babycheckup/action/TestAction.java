package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.*;
import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.result132.Level;
import com.pp.common.constant.resultCognize.Evaluation;
import com.pp.common.constant.resultCognize.Talent;
import com.pp.common.constant.resultFeel.FeelUtil;
import com.pp.common.constant.resultQiZhi.QiZhiDTO;
import com.pp.common.constant.resultQiZhi.QiZhiVO;
import com.pp.common.constant.util.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by yph on 17-6-29.
 */
public class TestAction {

    private int testid = 1;
    private List<Integer> questionTypeList;
    private List<Integer> questionMonthList;
    private List<Question> questionList;
    private List<DDSTQuestion> DDSTList;
    private List<Result> resultList = new ArrayList<Result>();
    private List<Result3_6> result3_6List = new ArrayList<Result3_6>();
    private List<Result0_2> result0_2List = new ArrayList<Result0_2>();
    private List<Result0_3> result0_3List = new ArrayList<Result0_3>();
    private List<Result50> result50List = new ArrayList<Result50>();
    private List<Result132> result132List = new ArrayList<Result132>();
    private List<ResultCognize> resultCognizeList = new ArrayList<ResultCognize>();
    private List<ResultDDST> resultDDSTList = new ArrayList<ResultDDST>();
    private List<ResultNei> resultNeiList = new ArrayList<ResultNei>();
    private List<ResultGroup> resultGroupList = new ArrayList<ResultGroup>();
    private List<ResultQiZhi> resultQiZhiList = new ArrayList<ResultQiZhi>();
    private List<ResultFeel> resultFeelList = new ArrayList<ResultFeel>();
    private List<Result2016> result2016List = new ArrayList<Result2016>();
    private List<ResultADHD> resultADHDList = new ArrayList<ResultADHD>();
    private List<ResultFeel2020> resultFeel2020List = new ArrayList<ResultFeel2020>();
    private List<ResultGroup2020> resultGroup2020List = new ArrayList<ResultGroup2020>();
    private List<ResultPhysical> resultPhysicalList = new ArrayList<ResultPhysical>();
    private List<ResultSummary> resultSummaryList = new ArrayList<ResultSummary>();
    private List<ResultAllergy> resultAllergyList = new ArrayList<ResultAllergy>();
    private List<ResultBasic1> resultBasic1List = new ArrayList<ResultBasic1>();
    private List<ResultBasic2> resultBasic2List = new ArrayList<ResultBasic2>();
    private List<ResultQiZhi2020> resultQiZhi2020List = new ArrayList<ResultQiZhi2020>();
    private List<ResultTooth> resultToothList = new ArrayList<ResultTooth>();
    private List<ResultFeed> resultFeedList = new ArrayList<ResultFeed>();
    private List<ResultPlan> resultPlanList = new ArrayList<ResultPlan>();
    private List<ResultBless> resultBlessList = new ArrayList<ResultBless>();
    private List<ResultRear> resultRearList = new ArrayList<ResultRear>();
    private List<ResultEye> resultEyeList = new ArrayList<ResultEye>();
    private List<ResultEar> resultEarList = new ArrayList<ResultEar>();
    private List<ResultBMD> resultBMDList = new ArrayList<ResultBMD>();
    private List<ResultBlood> resultBloodList = new ArrayList<ResultBlood>();
    private List<ResultMicro> resultMicroList = new ArrayList<ResultMicro>();
    private List<ResultUrine> resultUrineList = new ArrayList<ResultUrine>();
    private List<ResultBone> resultBoneList = new ArrayList<ResultBone>();
    private List<ResultHbs> resultHBsList = new ArrayList<ResultHbs>();
    private List<ResultFastAllergy> resultFastAllergyList = new ArrayList<ResultFastAllergy>();
    private List<ResultFoodAllergy> resultFoodAllergyList = new ArrayList<ResultFoodAllergy>();
    private List<ResultBloodType> resultBloodTypeList = new ArrayList<ResultBloodType>();
    private List<ResultAttention> resultAttentionList = new ArrayList<ResultAttention>();
    private List<ResultEcg> resultECGList = new ArrayList<ResultEcg>();
    private List<ResultTooth20> resultTooth20List = new ArrayList<ResultTooth20>();
    private int babyid;
    private Baby baby;
    private String SUCCESS = "success";
    private Result result;
    private ResultGroup resultGroup;
    private ResultGroup2020 resultGroup2020;
    private ResultNei resultNei;
    private ResultFeel resultFeel;
    private ResultDDST resultDDST;
    private Result3_6 result3_6;
    private Result0_2 result0_2;
    private Result0_3 result0_3;
    private Result132 result132;
    private Result50 result50;
    private ResultQiZhi resultQiZhi;
    private ResultCognize resultCognize;
    private Result2016 result2016;
    private ResultADHD resultADHD;
    private ResultFeel2020 resultFeel2020;
    private ResultPhysical resultPhysical;
    private ResultSummary resultSummary;
    private ResultAllergy resultAllergy;
    private ResultBasic1 resultBasic1;
    private ResultBasic2 resultBasic2;
    private ResultQiZhi2020 resultQiZhi2020;
    private ResultTooth resultTooth;
    private ResultFeed resultFeed;
    private ResultBless resultBless;
    private ResultPlan resultPlan;
    private ResultRear resultRear;
    private ResultEye resultEye;
    private ResultEar resultEar;
    private ResultBMD resultBMD;
    private ResultBlood resultBlood;
    private ResultBone resultBone;
    private ResultMicro resultMicro;
    private ResultUrine resultUrine;
    private ResultHbs resultHBs;
    private ResultFastAllergy resultFastAllergy;
    private ResultFoodAllergy resultFoodAllergy;
    private ResultBloodType resultBloodType;
    private ResultAttention resultAttention;
    private ResultEcg resultECG;
    private ResultTooth20 resultTooth20;
    private String days;
    private int day;
    //早产天数
    private Integer preDelivery;
    private String start;
    private String redirectUrl;
    private Integer babyAgeYear;//儿童年龄-年
    //全部卡片配置
    private final static Integer CONFIG_TYPE = 1;

    // 错误描述
    private String errorDesc;

    public String newTest0_6() {
        if(!canTest(1)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(testid);
        questionMonthList = QuestionManager.findMonthByTestid(testid);
        questionList = QuestionManager.findByTestid(testid);
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentDayDouble(birth,today))+"";
        return SUCCESS;
    }

    public Double differentDayDouble(Date d1, Date d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30));
    }

    //0-6测评 2016版
    public String newTest2016() {
        if(!canTest(26)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(26);
        questionMonthList = QuestionManager.findMonthByTestid(26);
        questionList = QuestionManager.findByTestid(26);
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();

        DecimalFormat df=new DecimalFormat("0.0");
        days =  Double.parseDouble(df.format((float)(today.getTime()-birth.getTime())/(1000*3600*24)/30))+"";
        return SUCCESS;
    }


    public String newTest3_6() {
        if(!canTest(2)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(2);
        questionMonthList = QuestionManager.findMonthByTestid(2);
        questionList = QuestionManager.findByTestid(2);
        baby = BabyManager.findById(babyid);
        testid = 2;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String newTest0_2() {
        if(!canTest(16)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(16);
        questionMonthList = QuestionManager.findMonthByTestid(16);
        questionList = QuestionManager.findByTestid(16);
        baby = BabyManager.findById(babyid);
        testid = 16;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String newTest0_3() {
        if(!canTest(20)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(20);
        questionMonthList = QuestionManager.findMonthByTestid(20);
        questionList = QuestionManager.findByTestid(20);
        baby = BabyManager.findById(babyid);
        testid = 20;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String newTest50() {
        if(!canTest(17)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(17);
        questionMonthList = QuestionManager.findMonthByTestid(17);
        questionList = QuestionManager.findByTestid(17);
        baby = BabyManager.findById(babyid);
        testid = 17;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String newTest132() {
        if(!canTest(18)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(18);
        questionMonthList = QuestionManager.findMonthByTestid(18);
        questionList = QuestionManager.findByTestid(18);
        baby = BabyManager.findById(babyid);
        testid = 18;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String newTestCognize() {
        if(!canTest(19)){
            return "fail";
        }
        try{
            questionList = QuestionManager.findByTestid(19);
            baby = BabyManager.findById(babyid);
            testid = 19;
            Date today = new Date(new java.util.Date().getTime());
            Date birth = baby.getBirthday();
            //获取早产天数
            int preDeliveryDay = 0;
            if (baby.getPreDelivery()==null){
                preDeliveryDay = 0;
            }else {
                preDeliveryDay = baby.getPreDelivery();
            }
            preDelivery = preDeliveryDay;
            day = (differentdays(birth,today));
            days = (differentdays(birth,today))/30+"";
            //如果早产要计算实足年龄
            if(preDelivery!=0){
                Calendar calendarTestTime = Calendar.getInstance();
                calendarTestTime.setTime(new Date());//检测时间
                Calendar calendarBirthday = Calendar.getInstance();
                calendarBirthday.setTime(baby.getBirthday());
                int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
                Integer exactAge = timeArray[0]*365+timeArray[1]*30+timeArray[2];
                //矫正年龄
                Integer adjustAge = exactAge-preDelivery;
                Calendar calendarBefore = Calendar.getInstance(); //得到日历
                calendarBefore.setTime(new Date());//把当前时间赋给日历
                calendarBefore.add(Calendar.DAY_OF_MONTH, -adjustAge);  //设置为前多少天
                int[] preDeliveryTimeArray = ExactAgeUtil.getNatureAge(calendarBefore,calendarTestTime);
                days = String.valueOf(preDeliveryTimeArray[0])+"岁"+String.valueOf(preDeliveryTimeArray[1])+"月"+String.valueOf(preDeliveryTimeArray[2])+"日";
            }
            //起点
            start = GetScaleUtil.getStart(baby.getBirthday());

        }catch (Exception e){

        }
        return SUCCESS;
    }

    public String newTestNei() {
        if(!canTest(22)){
            return "fail";
        }
        questionList = QuestionManager.findByTestid(22);
        baby = BabyManager.findById(babyid);
        testid = 22;
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(new Date());//检测时间
        Calendar calendarBirthday = Calendar.getInstance();
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = IQUtil.getNatureAgeTillMonth(calendarBirthday,calendarTestTime);
        babyAgeYear = timeArray[0];
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    public String newTestGroup(){

        if(!canTest(23)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 23;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";

        return SUCCESS;
    }

    // 生长发育2020版
    public String newTestGroup2020(){

        if(!canTest(29)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 29;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";

        return SUCCESS;
    }

    // 体格头面检查
    public String newTestPhysical(){
        if(!canTest(30)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 30;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    //气质
    public String newTestQiZhi(){

        if(!canTest(24)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 24;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        questionTypeList = QuestionManager.findTypeByTestid(24);
        int month = (int)Math.round((differentdays(birth,today))/30.4);
        if(0<month&&month<=4){
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(24,1);
        }else if(4<month&&month<=11){
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(24,2);
        }else if(11<month&&month<=35){
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(24,3);
        }else if(35<month&&month<=83){
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(24,4);
        }else if(83<month&&month<=156){
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(24,5);
        }

        return SUCCESS;
    }

    //感受
    public String newTestFeel(){

        if(!canTest(25)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 25;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        questionTypeList = QuestionManager.findTypeByTestid(25);
        questionList = QuestionManager.findByTestid(25);

        return SUCCESS;
    }

    // 多动症
    public String newTestADHD(){

        if(!canTest(27)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 27;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        questionTypeList = QuestionManager.findTypeByTestid(27);
        questionList = QuestionManager.findByTestid(27);

        return SUCCESS;
    }

    // feel2020
    public String newTestFeel2020(){

        if(!canTest(28)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 28;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        questionTypeList = QuestionManager.findTypeByTestid(28);
        questionList = QuestionManager.findByTestid(28);

        return SUCCESS;
    }

    public String newTestDDST() {
        if(!canTest(21)){
            return "fail";
        }
        questionTypeList = QuestionManager.findTypeByTestid(21);

//        questionList = QuestionManager.findByTestid(21);
        baby = BabyManager.findById(babyid);
        testid = 21;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        if(StringUtils.isNotEmpty(days)){
            List<Integer> monthList = new ArrayList<Integer>();
            for (int i=1;i<=Integer.parseInt(days);i++){
                monthList.add(i);
            }
            questionMonthList = monthList;
        }else {
            questionMonthList = null;
        }
        DDSTList = DDSTQuestionManager.findQuestions(days);
        return SUCCESS;
    }

    // 总览
    public String newTestSummary() {
        if(!canTest(31)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 31;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 过敏
    public String newTestAllergy() {
        if(!canTest(32)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        testid = 32;
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 基础信息a
    public String newTestBasic1() {
        testid = 33;
        if(!canTest(testid)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 基础信息b
    public String newTestBasic2() {
        testid = 34;
        if(!canTest(testid)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    //气质2020
    public String newTestQiZhi2020(){
        testid = 35;
        if(!canTest(testid)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);

        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        questionTypeList = QuestionManager.findTypeByTestid(testid);
        int month = (int)Math.round((differentdays(birth,today))/30.4);

        if(0<month&&month<=24){
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(testid,24);
        }else{
            questionList = QuestionManager.findQuestionListByTestIdAndMonth(testid,36);
        }

        return SUCCESS;
    }


    // 牙
    public String newTestTooth() {
        testid = 36;
        if(!canTest(testid)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 牙 - 20
    public String newTestTooth20() {
        testid = 54;
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 喂养
    public String newTestFeed() {
        testid = 37;
        if(!canTest(testid)){
            return "fail";
        }
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }


    // 定制计划
    public String newTestPlan() {
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 祝福
    public String newTestBless() {
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 养育指导
    public String newTestRear() {
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }


    // 视力筛查
    public String newTestEye() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 听力筛查
    public String newTestEar() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 骨密度筛查
    public String newTestBMD() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 血常规
    public String newTestBlood() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 微量元素
    public String newTestMicro() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 骨碱酶
    public String newTestBone() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 尿常规
    public String newTestUrine() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 乙肝
    public String newTestHbs() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 速发过敏原
    public String newTestFastAllergy() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 食物过敏原
    public String newTestFoodAllergy() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 血型
    public String newTestBloodType() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 注意力指导及建议
    public String newTestAttention() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    // 心电筛查
    public String newTestEcg() {
        baby = BabyManager.findById(babyid);
        Date birth = baby.getBirthday();
        Date today = new Date(new java.util.Date().getTime());
        days = Math.round((differentdays(birth,today))/30.4)+"";
        return SUCCESS;
    }

    public String babyTest(){
        baby = BabyManager.findById(babyid);
        resultList = ResultManager.findResultBybid(babyid);
        result3_6List = ResultManager3_6.findResultBybid(babyid);
        result0_2List = ResultManager0_2.findResultBybid(babyid);
        result50List = ResultManager50.findResultBybid(babyid);
        resultCognizeList = ResultCognizeManager.findResultBybid(babyid);
        result132List = ResultManager132.findResultBybid(babyid);
        result0_3List = ResultManager0_3.findResultBybid(babyid);
        resultDDSTList = ResultDDSTManager.findResultBybid(babyid);
        resultNeiList = ResultNeiManager.findResultBybid(babyid);
        resultGroupList = ResultGroupManager.findResultBybid(babyid);
        resultQiZhiList = ResultQiZhiManager.findResultBybid(babyid);
        resultFeelList = ResultFeelManager.findResultBybid(babyid);
        result2016List = ResultManager2016.findResultBybid(babyid);
        resultADHDList = ResultADHDManager.findResultBybid(babyid);
        resultFeel2020List = ResultFeel2020Manager.findResultBybid(babyid);
        resultGroup2020List = ResultGroup2020Manager.findResultBybid(babyid);
        resultPhysicalList = ResultPhysicalManager.findResultBybid(babyid);
        resultSummaryList = ResultSummaryManager.findResultBybid(babyid);
        resultAllergyList = ResultAllergyManager.findResultBybid(babyid);
        resultBasic1List = ResultBasic1Manager.findResultBybid(babyid);
        resultBasic2List = ResultBasic2Manager.findResultBybid(babyid);
        resultQiZhi2020List = ResultQiZhi2020Manager.findResultBybid(babyid);
        resultToothList = ResultToothManager.findResultBybid(babyid);
        resultFeedList = ResultFeedManager.findResultBybid(babyid);
        resultPlanList = ResultPlanManager.findResultBybid(babyid);
        resultBlessList = ResultBlessManager.findResultBybid(babyid);
        resultRearList = ResultRearManager.findResultBybid(babyid);
        resultEyeList = ResultEyeManager.findResultBybid(babyid);
        resultEarList = ResultEarManager.findResultBybid(babyid);
        resultBMDList = ResultBMDManager.findResultBybid(babyid);
        resultBloodList = ResultBloodManager.findResultBybid(babyid);
        resultBoneList = ResultBoneManager.findResultBybid(babyid);
        resultMicroList = ResultMicroManager.findResultBybid(babyid);
        resultUrineList = ResultUrineManager.findResultBybid(babyid);
        resultHBsList = ResultHbsManager.findResultBybid(babyid);
        resultFastAllergyList = ResultFastAllergyManager.findResultBybid(babyid);
        resultFoodAllergyList = ResultFoodAllergyManager.findResultBybid(babyid);
        resultBloodTypeList = ResultBloodTypeManager.findResultBybid(babyid);
        resultAttentionList = ResultAttentionManager.findResultBybid(babyid);
        resultECGList = ResultEcgManager.findResultBybid(babyid);
        resultTooth20List = ResultTooth20Manager.findResultBybid(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String saveResult(){
        if(!subTestTimes(1)){
            return "fail";
        }
        result.setHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        result.setUserid((Integer) ActionContext.getContext().getSession().get("userid"));
        result.setTestid(1);
        result.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        result.setState("finished");
        ResultManager.saveResult(result);
        return SUCCESS;
    }

    //0-6测评
    public String saveResult2016(){
        if(!subTestTimes(26)){
            return "fail";
        }
        result2016.setHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        result2016.setUserid((Integer) ActionContext.getContext().getSession().get("userid"));
        result2016.setTestid(26);
        result2016.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        result2016.setState("finished");
        ResultManager2016.saveResult(result2016);
        return SUCCESS;
    }

    public String saveResult3_6(){
        //这是算法  是不是很吊
        result3_6.setP1(AnswerValueEnum_11_P.getIndex(result3_6.getA1()));
        result3_6.setR1(AnswerValueEnum_R.getName(result3_6.getP1()));
        result3_6.setP2(AnswerValueEnum_12_P.getIndex(result3_6.getA2()));
        result3_6.setR2(AnswerValueEnum_R.getName(result3_6.getP2()));
        result3_6.setP3(AnswerValueEnum_13_P.getIndex(result3_6.getA3()));
        result3_6.setR3(AnswerValueEnum_R.getName(result3_6.getP3()));
        result3_6.setP4(AnswerValueEnum_14_P.getIndex(result3_6.getA4()));
        result3_6.setR4(AnswerValueEnum_R.getName(result3_6.getP4()));
        result3_6.setP5(AnswerValueEnum_15_P.getIndex(result3_6.getA5()));
        result3_6.setR5(AnswerValueEnum_R.getName(result3_6.getP5()));
        result3_6.setP6(AnswerValueEnum_16_P.getIndex(result3_6.getA6()));
        result3_6.setR6(AnswerValueEnum_R.getName(result3_6.getP6()));
        result3_6.setP7(AnswerValueEnum_17_P.getIndex(result3_6.getA7()));
        result3_6.setR7(AnswerValueEnum_R.getName(result3_6.getP7()));
        result3_6.setP8(AnswerValueEnum_18_P.getIndex(result3_6.getA8()));
        result3_6.setR8(AnswerValueEnum_R.getName(result3_6.getP8()));

        result3_6.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        result3_6.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
        result3_6.setTestId(2);
        result3_6.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        result3_6.setState("finished");
        if(!subTestTimes(2)){
            return "fail";
        }
        ResultManager3_6.saveResult(result3_6);
        return SUCCESS;
    }

    public String saveResult0_2(){
        try {
            //这是算法  是不是很吊
            Integer p1 = result0_2.getA1()*100/11;
            Integer p2 = result0_2.getA2()*100/8;
            Integer p3 = result0_2.getA3()*100/6;
            Integer p4 = result0_2.getA4()*100/9;
            Integer p5 = result0_2.getA5()*100/6;
            Integer p6 = result0_2.getA6()*100/5;
            result0_2.setP1(calculateP(p1));
            result0_2.setP2(calculateP(p2));
            result0_2.setP3(calculateP(p3));
            result0_2.setP4(calculateP(p4));
            result0_2.setP5(calculateP(p5));
            result0_2.setP6(calculateP(p6));
            result0_2.setR1(AnswerValueEnum_R.getNameByPercent(p1));
            result0_2.setR2(AnswerValueEnum_R.getNameByPercent(p2));
            result0_2.setR3(AnswerValueEnum_R.getNameByPercent(p3));
            result0_2.setR4(AnswerValueEnum_R.getNameByPercent(p4));
            result0_2.setR5(AnswerValueEnum_R.getNameByPercent(p5));
            result0_2.setR6(AnswerValueEnum_R.getNameByPercent(p6));

            result0_2.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            result0_2.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            result0_2.setTestId(16);
            result0_2.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            result0_2.setState("finished");
            if(!subTestTimes(16)){
                return "fail";
            }
            ResultManager0_2.saveResult(result0_2);
        }catch (Exception e){

        }
        return SUCCESS;
    }

    public String saveResultCognize(){
        //这是算法  是不是很吊
        baby = BabyManager.findById(resultCognize.getBabyId());
        Date birth = baby.getBirthday();
        try {
            Integer score = -1;
            if(!StringUtils.isEmpty(resultCognize.getScore())){
                score = Integer.parseInt(resultCognize.getScore());
            }else {
                throw new IllegalArgumentException("没有找到对应量表结果，请重新测试");
            }
            String scale = GetScaleUtil.getScale(birth,score);
            resultCognize.setScale(scale);
            String resultStr = Talent.getTalent(scale);
            if(StringUtils.isEmpty(resultStr)){
                throw new IllegalArgumentException("没有找到对应量表结果，请重新测试");
            }
            String arr[] = resultStr.split("~");
            String talent = arr[0];
            String percent = arr[1];
            String section90 = arr[2];
            String section95 = arr[3];
            String evaluation = "";
            evaluation = Evaluation.getEvaluation(Double.parseDouble(percent));
            resultCognize.setTalent(talent);
            resultCognize.setPercent(percent);
            resultCognize.setSection90(section90);
            resultCognize.setSection95(section95);
            resultCognize.setEvaluation(evaluation);
            resultCognize.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultCognize.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultCognize.setTestId(19);
            resultCognize.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            resultCognize.setState("finished");
            if(!subTestTimes(19)){
                return "fail";
            }
            ResultCognizeManager.saveResult(resultCognize);
        }catch (Exception e){

        }
        return SUCCESS;
    }

    public String saveResult132(){
        //这是算法  是不是很吊
        baby = BabyManager.findById(result132.getBabyId());
        Date birth = baby.getBirthday();
        try {
            Integer total = result132.getA1()+result132.getA2()+result132.getA3()+result132.getA4()+result132.getA5()+result132.getA6();
            String normal = GetStandardUtil.getStandardScore(birth,total);
            result132.setNorm(normal);
            result132.setLevel(Level.getLevelByStandardScore(normal));
            if(total!=null){
                result132.setRough(total.toString());
            }
            result132.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            result132.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            result132.setTestId(18);
            result132.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            result132.setState("finished");
            if(!subTestTimes(18)){
                return "fail";
            }
            ResultManager132.saveResult(result132);
        }catch (Exception e){

        }
        return SUCCESS;
    }


    public String saveResult50(){
        //这是算法  是不是很吊
        baby = BabyManager.findById(result50.getBabyId());
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        Integer months = (differentdays(birth,today))/30;
        try {
            Integer total = result50.getA1()+result50.getA2()+result50.getA3()+result50.getA4()+result50.getA5()+result50.getA6();
            if(48<=months && months <54){
                result50.setTalent(Year4Enum.getIndex(total));
            }else if(54<=months && months <60){
                result50.setTalent(Year4HalfEnum.getIndex(total));
            }else if(60<=months && months <66){
                result50.setTalent(Year5Enum.getIndex(total));
            }else if(66<=months && months <72){
                result50.setTalent(Year5HalfEnum.getIndex(total));
            }else if(72<=months && months <78){
                result50.setTalent(Year6Enum.getIndex(total));
            }else if(78<=months && months <84){
                result50.setTalent(Year6HalfEnum.getIndex(total));
            }else {
                result50.setTalent(Year7Enum.getIndex(total));
            }
            Integer talent = result50.getTalent();
            if(talent<70){
                result50.setLevel("低智能");
            }else if(talent<85 && 70<=talent){
                result50.setLevel("中下智能");
            }else if(talent<115 && 85<=talent){
                result50.setLevel("中等智能");
            }else if(talent<130 && 115<=talent){
                result50.setLevel("中上智能");
            }else if(130<=talent){
                result50.setLevel("高智能");
            }

            result50.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            result50.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            result50.setTestId(17);
            result50.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            result50.setState("finished");
            if(!subTestTimes(17)){
                return "fail";
            }
            ResultManager50.saveResult(result50);
        }catch (Exception e){

        }
        return SUCCESS;
    }

    public String saveResult0_3(){
        try {
            //这是算法  是不是很吊
            Integer p1 = result0_3.getA1()*100/5;
            Integer p2 = result0_3.getA2()*100/5;
            Integer p3 = result0_3.getA3()*100/5;
            Integer p4 = result0_3.getA4()*100/5;
            Integer p5 = result0_3.getA5()*100/5;
            Integer p6 = result0_3.getA6()*100/5;
            Integer p7 = result0_3.getA7()*100/5;
            Integer p8 = result0_3.getA8()*100/5;
            result0_3.setP1(calculateP(p1));
            result0_3.setP2(calculateP(p2));
            result0_3.setP3(calculateP(p3));
            result0_3.setP4(calculateP(p4));
            result0_3.setP5(calculateP(p5));
            result0_3.setP6(calculateP(p6));
            result0_3.setP7(calculateP(p7));
            result0_3.setP8(calculateP(p8));
            result0_3.setR1(AnswerValueEnum_R.getNameByPercent(p1));
            result0_3.setR2(AnswerValueEnum_R.getNameByPercent(p2));
            result0_3.setR3(AnswerValueEnum_R.getNameByPercent(p3));
            result0_3.setR4(AnswerValueEnum_R.getNameByPercent(p4));
            result0_3.setR5(AnswerValueEnum_R.getNameByPercent(p5));
            result0_3.setR6(AnswerValueEnum_R.getNameByPercent(p6));
            result0_3.setR7(AnswerValueEnum_R.getNameByPercent(p7));
            result0_3.setR8(AnswerValueEnum_R.getNameByPercent(p8));

            result0_3.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            result0_3.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            result0_3.setTestId(20);
            result0_3.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            result0_3.setState("finished");
            if(!subTestTimes(20)){
                return "fail";
            }
            ResultManager0_3.saveResult(result0_3);
        }catch (Exception e){

        }
        return SUCCESS;
    }

    public String saveResultDDST(){
        if(!subTestTimes(21)){
            return "fail";
        }
        resultDDST.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultDDST.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
        resultDDST.setTestId(21);
        resultDDST.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultDDST.setState("finished");
        List<Integer> score1List = new ArrayList<Integer>();
        score1List.add(resultDDST.getScore1());
        score1List.add(resultDDST.getScore2());
        score1List.add(resultDDST.getScore3());
        score1List.add(resultDDST.getScore4());
        score1List.add(resultDDST.getScore5());
        score1List.add(resultDDST.getScore6());
        score1List.add(resultDDST.getScore7());
        score1List.add(resultDDST.getScore8());
        score1List.add(resultDDST.getScore9());
        score1List.add(resultDDST.getScore10());

        score1List.add(resultDDST.getScore11());
        score1List.add(resultDDST.getScore12());
        score1List.add(resultDDST.getScore13());
        score1List.add(resultDDST.getScore14());
        score1List.add(resultDDST.getScore15());
        score1List.add(resultDDST.getScore16());
        score1List.add(resultDDST.getScore17());
        score1List.add(resultDDST.getScore18());
        score1List.add(resultDDST.getScore19());
        score1List.add(resultDDST.getScore20());

        score1List.add(resultDDST.getScore21());
        score1List.add(resultDDST.getScore22());
        score1List.add(resultDDST.getScore23());

        List<Integer> score2List = new ArrayList<Integer>();
        score2List.add(resultDDST.getScore24());
        score2List.add(resultDDST.getScore25());
        score2List.add(resultDDST.getScore26());
        score2List.add(resultDDST.getScore27());
        score2List.add(resultDDST.getScore28());
        score2List.add(resultDDST.getScore29());
        score2List.add(resultDDST.getScore30());

        score2List.add(resultDDST.getScore31());
        score2List.add(resultDDST.getScore32());
        score2List.add(resultDDST.getScore33());
        score2List.add(resultDDST.getScore34());
        score2List.add(resultDDST.getScore35());
        score2List.add(resultDDST.getScore36());
        score2List.add(resultDDST.getScore37());
        score2List.add(resultDDST.getScore38());
        score2List.add(resultDDST.getScore39());
        score2List.add(resultDDST.getScore40());

        score2List.add(resultDDST.getScore41());
        score2List.add(resultDDST.getScore42());
        score2List.add(resultDDST.getScore43());
        score2List.add(resultDDST.getScore44());
        score2List.add(resultDDST.getScore45());
        score2List.add(resultDDST.getScore46());
        score2List.add(resultDDST.getScore47());
        score2List.add(resultDDST.getScore48());
        score2List.add(resultDDST.getScore49());
        score2List.add(resultDDST.getScore50());

        score2List.add(resultDDST.getScore51());
        score2List.add(resultDDST.getScore52());
        score2List.add(resultDDST.getScore53());
        List<Integer> score3List = new ArrayList<Integer>();
        score3List.add(resultDDST.getScore54());
        score3List.add(resultDDST.getScore55());
        score3List.add(resultDDST.getScore56());
        score3List.add(resultDDST.getScore57());
        score3List.add(resultDDST.getScore58());
        score3List.add(resultDDST.getScore59());
        score3List.add(resultDDST.getScore60());

        score3List.add(resultDDST.getScore61());
        score3List.add(resultDDST.getScore62());
        score3List.add(resultDDST.getScore63());
        score3List.add(resultDDST.getScore64());
        score3List.add(resultDDST.getScore65());
        score3List.add(resultDDST.getScore66());
        score3List.add(resultDDST.getScore67());
        score3List.add(resultDDST.getScore68());
        score3List.add(resultDDST.getScore69());
        score3List.add(resultDDST.getScore70());

        score3List.add(resultDDST.getScore71());
        score3List.add(resultDDST.getScore72());
        score3List.add(resultDDST.getScore73());
        List<Integer> score4List = new ArrayList<Integer>();
        score4List.add(resultDDST.getScore74());
        score4List.add(resultDDST.getScore75());
        score4List.add(resultDDST.getScore76());
        score4List.add(resultDDST.getScore77());
        score4List.add(resultDDST.getScore78());
        score4List.add(resultDDST.getScore79());
        score4List.add(resultDDST.getScore80());

        score4List.add(resultDDST.getScore81());
        score4List.add(resultDDST.getScore82());
        score4List.add(resultDDST.getScore83());
        score4List.add(resultDDST.getScore84());
        score4List.add(resultDDST.getScore85());
        score4List.add(resultDDST.getScore86());
        score4List.add(resultDDST.getScore87());
        score4List.add(resultDDST.getScore88());
        score4List.add(resultDDST.getScore89());
        score4List.add(resultDDST.getScore90());

        score4List.add(resultDDST.getScore91());
        score4List.add(resultDDST.getScore92());
        score4List.add(resultDDST.getScore93());
        score4List.add(resultDDST.getScore94());
        score4List.add(resultDDST.getScore95());
        score4List.add(resultDDST.getScore96());
        score4List.add(resultDDST.getScore97());
        score4List.add(resultDDST.getScore98());
        score4List.add(resultDDST.getScore99());
        score4List.add(resultDDST.getScore100());

        score4List.add(resultDDST.getScore101());
        score4List.add(resultDDST.getScore102());
        score4List.add(resultDDST.getScore103());
        score4List.add(resultDDST.getScore104());
        String resultMag = DDSTUtil.getResult(score1List,score2List,score3List,score4List);
        resultDDST.setResult(resultMag);
        ResultDDSTManager.saveResult(resultDDST);
        return SUCCESS;
    }

    public String saveResultNei(){
        if(!subTestTimes(22)){
            return "fail";
        }
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(new Date());//检测时间
        Calendar calendarBirthday = Calendar.getInstance();
        baby = BabyManager.findById(resultNei.getBabyId());
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = IQUtil.getNatureAgeTillMonth(calendarBirthday,calendarTestTime);
        Integer IQ = IQUtil.getIQ(timeArray[0],timeArray[1],resultNei.getTotalScore());
        resultNei.setIQ(IQ);
        resultNei.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultNei.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
        resultNei.setTestId(22);
        resultNei.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultNei.setState("finished");
        ResultNeiManager.saveResult(resultNei);
        return SUCCESS;
    }

    public String saveResultGroup(){
        if(!subTestTimes(23)){
            return "fail";
        }
        baby = BabyManager.findById(resultGroup.getBabyId());
        if(StringUtils.isNotEmpty(resultGroup.getBmi())){
            Long bmi = Math.round(Double.parseDouble(resultGroup.getBmi()));
            resultGroup.setBmi(bmi.toString());
        }
        resultGroup.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultGroup.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
        resultGroup.setTestId(23);
        resultGroup.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultGroup.setUpdateTime(new Date());
        resultGroup.setCreateTime(new Date());
        try {
            resultGroup.setBabyMonthAge( Math.round((differentdays(baby.getBirthday(),new Date()))/30.4)+"");
            Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
            resultGroup.setUpdateUser(userId.toString());
            resultGroup.setCreateUser(userId.toString());
            ResultGroupManager.saveResult(resultGroup);
        }catch (Exception e){
            e.printStackTrace();
        }


        return SUCCESS;
    }

    // 身体发育2020版
    public String saveResultGroup2020(){
        if(!subTestTimes(29)){
            return "fail";
        }
        baby = BabyManager.findById(resultGroup2020.getBabyId());
        resultGroup2020.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultGroup2020.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
        resultGroup2020.setTestId(29);
        resultGroup2020.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultGroup2020.setUpdateTime(new Date());
        resultGroup2020.setCreateTime(new Date());
        try {
            resultGroup2020.setBabyMonthAge( Math.round((differentdays(baby.getBirthday(),new Date()))/30.4)+"");
            Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
            resultGroup2020.setUpdateUser(userId.toString());
            resultGroup2020.setCreateUser(userId.toString());
            ResultGroup2020Manager.saveResult(resultGroup2020);
        }catch (Exception e){
            e.printStackTrace();
        }


        return SUCCESS;
    }



    //气质
    public String saveResultQiZhi(){
        try {
            baby = BabyManager.findById(resultQiZhi.getBabyId());
            testid = 24;
            Date today = new Date(new java.util.Date().getTime());
            Date birth = baby.getBirthday();
            // 计算状态
            QiZhiDTO qiZhiDTO = new QiZhiDTO();
            BeanUtils.copyProperties(resultQiZhi,qiZhiDTO);
            QiZhiVO qiZhiVO = QiZhiUtil.getResultStatus(today,birth,qiZhiDTO);
            BeanUtils.copyProperties(qiZhiVO,resultQiZhi);
            resultQiZhi.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultQiZhi.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultQiZhi.setTestId(24);
            resultQiZhi.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            resultQiZhi.setState("finished");
            if(!subTestTimes(24)){
                return "fail";
            }
            ResultQiZhiManager.saveResult(resultQiZhi);
        }catch (Exception e){

        }
        return SUCCESS;
    }



    //感受
    public String saveResultFeel(){
        try {
            baby = BabyManager.findById(resultFeel.getBabyId());
            Integer monthRange = FeelUtil.getMonthRange(baby.getBirthday(),new Date());
            //区分3岁以上和3岁以下  3岁以下为0
            if(monthRange>36) {
                //计算得分
                if (StringUtils.isNotEmpty(resultFeel.getA1())) {
                    resultFeel.setB1(ConstantFeelManager.findConstantsByVestibule(Integer.parseInt(resultFeel.getA1()), monthRange));
                    if (StringUtils.isNotEmpty(resultFeel.getB1())) {
                        Integer b1 = Integer.parseInt(resultFeel.getB1());
                        resultFeel.setZ1(FeelUtil.getStandardMsg(b1));
                    } else {
                        resultFeel.setZ1("重度失调");
                    }
                }
                if (StringUtils.isNotEmpty(resultFeel.getA2())) {
                    resultFeel.setB2(ConstantFeelManager.findConstantsByTouch(Integer.parseInt(resultFeel.getA2()), monthRange));
                    if (StringUtils.isNotEmpty(resultFeel.getB2())) {
                        Integer b2 = Integer.parseInt(resultFeel.getB2());
                        resultFeel.setZ2(FeelUtil.getStandardMsg(b2));
                    } else {
                        resultFeel.setZ2("重度失调");
                    }
                }
                if (StringUtils.isNotEmpty(resultFeel.getA3())) {
                    resultFeel.setB3(ConstantFeelManager.findConstantsByBody(Integer.parseInt(resultFeel.getA3()), monthRange));
                    if (StringUtils.isNotEmpty(resultFeel.getB3())) {
                        Integer b3 = Integer.parseInt(resultFeel.getB3());
                        resultFeel.setZ3(FeelUtil.getStandardMsg(b3));
                    } else {
                        resultFeel.setZ3("重度失调");
                    }
                }
                if (StringUtils.isNotEmpty(resultFeel.getA4())) {
                    resultFeel.setB4(ConstantFeelManager.findConstantsByLearn(Integer.parseInt(resultFeel.getA4()), monthRange));
                    if (StringUtils.isNotEmpty(resultFeel.getB4())) {
                        Integer b4 = Integer.parseInt(resultFeel.getB4());
                        resultFeel.setZ4(FeelUtil.getStandardMsg(b4));
                    } else {
                        resultFeel.setZ4("重度失调");
                    }
                }
            }else {
                if (StringUtils.isNotEmpty(resultFeel.getA1())) {
                    String vestibule = FeelUtil.findStandardByVestibule(Integer.parseInt(resultFeel.getA1()),monthRange);
                    if(StringUtils.isNotEmpty(vestibule)){
                        String[] array = vestibule.split("_");
                        if(array!=null&&array.length>=2){
                            resultFeel.setB1(array[0]);
                            resultFeel.setZ1(array[1]);
                        }
                    }
                }
                if (StringUtils.isNotEmpty(resultFeel.getA2())) {
                    String touch = FeelUtil.findStandardByTouch(Integer.parseInt(resultFeel.getA2()),monthRange);
                    if(StringUtils.isNotEmpty(touch)){
                        String[] array = touch.split("_");
                        if(array!=null&&array.length>=2){
                            resultFeel.setB2(array[0]);
                            resultFeel.setZ2(array[1]);
                        }
                    }
                }
                if (StringUtils.isNotEmpty(resultFeel.getA3())) {
                    String body = FeelUtil.findStandardByVestibule(Integer.parseInt(resultFeel.getA3()),monthRange);
                    if(StringUtils.isNotEmpty(body)){
                        String[] array = body.split("_");
                        if(array!=null&&array.length>=2){
                            resultFeel.setB3(array[0]);
                            resultFeel.setZ3(array[1]);
                        }
                    }
                }
                if (StringUtils.isNotEmpty(resultFeel.getA4())) {
                    String learn = FeelUtil.findStandardByVestibule(Integer.parseInt(resultFeel.getA4()),monthRange);
                    if(StringUtils.isNotEmpty(learn)){
                        String[] array = learn.split("_");
                        if(array!=null&&array.length>=2){
                            resultFeel.setB4(array[0]);
                            resultFeel.setZ4(array[1]);
                        }
                    }
                }
            }

            resultFeel.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultFeel.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultFeel.setTestId(25);
            resultFeel.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            resultFeel.setState("finished");
            if(!subTestTimes(25)){
                return "fail";
            }
            ResultFeelManager.saveResult(resultFeel);
        }catch (Exception e){

        }
        return SUCCESS;
    }


    // 多动症
    public String saveResultADHD(){
        try {
            resultADHD.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultADHD.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultADHD.setTestId(27);
            resultADHD.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            resultADHD.setState("finished");
            if(!subTestTimes(27)){
                return "fail";
            }
            ResultADHDManager.saveResult(resultADHD);
        }catch (Exception e){

        }
        return SUCCESS;
    }

    // feel2020
    public String saveResultFeel2020(){
        try {
            resultFeel2020.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
            resultFeel2020.setUserId((Integer) ActionContext.getContext().getSession().get("userid"));
            resultFeel2020.setTestId(28);
            resultFeel2020.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
            resultFeel2020.setState("finished");
            if(!subTestTimes(28)){
                return "fail";
            }
            ResultFeel2020Manager.saveResult(resultFeel2020);
        }catch (Exception e){

        }
        return SUCCESS;
    }

    // 总览
    public String saveResultSummary(){
        if(StringUtils.isEmpty(resultSummary.getSummary())){
            errorDesc = "总览内容不能为空！";
            return "fail";
        }
        if(resultSummary.getSummary().length()>1000){
            errorDesc = "总览内容不能大于1000字！";
            return "fail";
        }
        if(!subTestTimes(31)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultSummary.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultSummary.setUserId(userId);
        resultSummary.setTestId(31);
        resultSummary.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultSummary.setState("finished");
        resultSummary.setUpdateTime(new Date());
        resultSummary.setCreateTime(new Date());
        resultSummary.setUpdateUser(userId.toString());
        resultSummary.setCreateUser(userId.toString());
        ResultSummaryManager.saveResult(resultSummary);
        return SUCCESS;
    }

    // 体格头面检查
    public String saveResultPhysical(){
        if(!subTestTimes(30)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultPhysical.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultPhysical.setUserId(userId);
        resultPhysical.setTestId(30);
        resultPhysical.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultPhysical.setState("finished");
        resultPhysical.setUpdateTime(new Date());
        resultPhysical.setCreateTime(new Date());
        resultPhysical.setUpdateUser(userId.toString());
        resultPhysical.setCreateUser(userId.toString());
        ResultPhysicalManager.saveResult(resultPhysical);
        return SUCCESS;
    }

    // 过敏
    public String saveResultAllergy(){
        if(!subTestTimes(32)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultAllergy.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultAllergy.setUserId(userId);
        resultAllergy.setTestId(32);
        resultAllergy.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultAllergy.setState("finished");
        resultAllergy.setUpdateTime(new Date());
        resultAllergy.setCreateTime(new Date());
        resultAllergy.setUpdateUser(userId.toString());
        resultAllergy.setCreateUser(userId.toString());
        ResultAllergyManager.saveResult(resultAllergy);
        return SUCCESS;
    }

    // 基础信息1
    public String saveResultBasic1(){
        if(!subTestTimes(33)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBasic1.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBasic1.setUserId(userId);
        resultBasic1.setTestId(33);
        resultBasic1.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBasic1.setState("finished");
        resultBasic1.setUpdateTime(new Date());
        resultBasic1.setCreateTime(new Date());
        resultBasic1.setUpdateUser(userId.toString());
        resultBasic1.setCreateUser(userId.toString());
        ResultBasic1Manager.saveResult(resultBasic1);
        return SUCCESS;
    }

    // 基础信息2
    public String saveResultBasic2(){
        if(!subTestTimes(34)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBasic2.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBasic2.setUserId(userId);
        resultBasic2.setTestId(34);
        resultBasic2.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBasic2.setState("finished");
        resultBasic2.setUpdateTime(new Date());
        resultBasic2.setCreateTime(new Date());
        resultBasic2.setUpdateUser(userId.toString());
        resultBasic2.setCreateUser(userId.toString());
        ResultBasic2Manager.saveResult(resultBasic2);
        return SUCCESS;
    }


    // 气质2020
    public String saveResultQiZhi2020(){
        if(!subTestTimes(35)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultQiZhi2020.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultQiZhi2020.setUserId(userId);
        resultQiZhi2020.setTestId(35);
        resultQiZhi2020.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultQiZhi2020.setState("finished");
        resultQiZhi2020.setUpdateTime(new Date());
        resultQiZhi2020.setCreateTime(new Date());
        resultQiZhi2020.setUpdateUser(userId.toString());
        resultQiZhi2020.setCreateUser(userId.toString());
        ResultQiZhi2020Manager.saveResult(resultQiZhi2020);
        return SUCCESS;
    }

    // 牙
    public String saveResultTooth(){
        if(!subTestTimes(36)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultTooth.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultTooth.setUserId(userId);
        resultTooth.setTestId(36);
        resultTooth.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultTooth.setState("finished");
        resultTooth.setUpdateTime(new Date());
        resultTooth.setCreateTime(new Date());
        resultTooth.setUpdateUser(userId.toString());
        resultTooth.setCreateUser(userId.toString());
        ResultToothManager.saveResult(resultTooth);
        return SUCCESS;
    }

    // 牙 - 20
    public String saveResultTooth20(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultTooth20.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultTooth20.setUserId(userId);
        resultTooth20.setTestId(54);
        resultTooth20.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultTooth20.setState("finished");
        resultTooth20.setUpdateTime(new Date());
        resultTooth20.setCreateTime(new Date());
        resultTooth20.setUpdateUser(userId.toString());
        resultTooth20.setCreateUser(userId.toString());
        ResultTooth20Manager.saveResult(resultTooth20);
        return SUCCESS;
    }

    // 喂养
    public String saveResultFeed(){
        if(!subTestTimes(37)){
            return "fail";
        }
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultFeed.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultFeed.setUserId(userId);
        resultFeed.setTestId(37);
        resultFeed.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultFeed.setState("finished");
        resultFeed.setUpdateTime(new Date());
        resultFeed.setCreateTime(new Date());
        resultFeed.setUpdateUser(userId.toString());
        resultFeed.setCreateUser(userId.toString());
        ResultFeedManager.saveResult(resultFeed);
        return SUCCESS;
    }

    // 定制计划
    public String saveResultPlan(){
        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultPlan.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultPlan.setUserId(userId);
        resultPlan.setTestId(38);
        resultPlan.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultPlan.setState("finished");
        resultPlan.setUpdateTime(new Date());
        resultPlan.setCreateTime(new Date());
        resultPlan.setUpdateUser(userId.toString());
        resultPlan.setCreateUser(userId.toString());
        ResultPlanManager.saveResult(resultPlan);
        return SUCCESS;
    }

    // 祝福
    public String saveResultBless(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBless.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBless.setUserId(userId);
        resultBless.setTestId(39);
        resultBless.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBless.setState("finished");
        resultBless.setUpdateTime(new Date());
        resultBless.setCreateTime(new Date());
        resultBless.setUpdateUser(userId.toString());
        resultBless.setCreateUser(userId.toString());
        ResultBlessManager.saveResult(resultBless);
        return SUCCESS;
    }


    // 养育指导
    public String saveResultRear(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultRear.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultRear.setUserId(userId);
        resultRear.setTestId(40);
        resultRear.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultRear.setState("finished");
        resultRear.setUpdateTime(new Date());
        resultRear.setCreateTime(new Date());
        resultRear.setUpdateUser(userId.toString());
        resultRear.setCreateUser(userId.toString());
        ResultRearManager.saveResult(resultRear);
        return SUCCESS;
    }

    // 视力筛查
    public String saveResultEye(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultEye.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultEye.setUserId(userId);
        resultEye.setTestId(41);
        resultEye.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultEye.setState("finished");
        resultEye.setCreateTime(new Date());
        resultEye.setUpdateTime(new Date());
        resultEye.setCreateUser(userId.toString());
        resultEye.setUpdateUser(userId.toString());
        ResultEyeManager.saveResult(resultEye);
        return SUCCESS;
    }

    // 听力筛查
    public String saveResultEar(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultEar.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultEar.setUserId(userId);
        resultEar.setTestId(42);
        resultEar.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultEar.setState("finished");
        resultEar.setCreateTime(new Date());
        resultEar.setUpdateTime(new Date());
        resultEar.setCreateUser(userId.toString());
        resultEar.setUpdateUser(userId.toString());
        ResultEarManager.saveResult(resultEar);
        return SUCCESS;
    }


    // 骨密度筛查
    public String saveResultBMD(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBMD.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBMD.setUserId(userId);
        resultBMD.setTestId(43);
        resultBMD.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBMD.setState("finished");
        resultBMD.setCreateTime(new Date());
        resultBMD.setUpdateTime(new Date());
        resultBMD.setCreateUser(userId.toString());
        resultBMD.setUpdateUser(userId.toString());
        ResultBMDManager.saveResult(resultBMD);
        return SUCCESS;
    }

    // 血常规
    public String saveResultBlood(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBlood.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBlood.setUserId(userId);
        resultBlood.setTestId(44);
        resultBlood.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBlood.setState("finished");
        resultBlood.setCreateTime(new Date());
        resultBlood.setUpdateTime(new Date());
        resultBlood.setCreateUser(userId.toString());
        resultBlood.setUpdateUser(userId.toString());
        ResultBloodManager.saveResult(resultBlood);
        return SUCCESS;
    }


    // 微量元素
    public String saveResultMicro(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultMicro.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultMicro.setUserId(userId);
        resultMicro.setTestId(45);
        resultMicro.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultMicro.setState("finished");
        resultMicro.setCreateTime(new Date());
        resultMicro.setUpdateTime(new Date());
        resultMicro.setCreateUser(userId.toString());
        resultMicro.setUpdateUser(userId.toString());
        ResultMicroManager.saveResult(resultMicro);
        return SUCCESS;
    }

    // 骨碱酶
    public String saveResultBone(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBone.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBone.setUserId(userId);
        resultBone.setTestId(46);
        resultBone.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBone.setState("finished");
        resultBone.setCreateTime(new Date());
        resultBone.setUpdateTime(new Date());
        resultBone.setCreateUser(userId.toString());
        resultBone.setUpdateUser(userId.toString());
        ResultBoneManager.saveResult(resultBone);
        return SUCCESS;
    }

    // 尿常规
    public String saveResultUrine(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultUrine.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultUrine.setUserId(userId);
        resultUrine.setTestId(47);
        resultUrine.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultUrine.setState("finished");
        resultUrine.setCreateTime(new Date());
        resultUrine.setUpdateTime(new Date());
        resultUrine.setCreateUser(userId.toString());
        resultUrine.setUpdateUser(userId.toString());
        ResultUrineManager.saveResult(resultUrine);
        return SUCCESS;
    }

    // 乙肝
    public String saveResultHbs(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultHBs.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultHBs.setUserId(userId);
        resultHBs.setTestId(48);
        resultHBs.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultHBs.setState("finished");
        resultHBs.setCreateTime(new Date());
        resultHBs.setUpdateTime(new Date());
        resultHBs.setCreateUser(userId.toString());
        resultHBs.setUpdateUser(userId.toString());
        ResultHbsManager.saveResult(resultHBs);
        return SUCCESS;
    }

    // 速发过敏原
    public String saveResultFastAllergy(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultFastAllergy.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultFastAllergy.setUserId(userId);
        resultFastAllergy.setTestId(49);
        resultFastAllergy.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultFastAllergy.setState("finished");
        resultFastAllergy.setCreateTime(new Date());
        resultFastAllergy.setUpdateTime(new Date());
        resultFastAllergy.setCreateUser(userId.toString());
        resultFastAllergy.setUpdateUser(userId.toString());
        ResultFastAllergyManager.saveResult(resultFastAllergy);
        return SUCCESS;
    }

    // 食物过敏
    public String saveResultFoodAllergy(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultFoodAllergy.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultFoodAllergy.setUserId(userId);
        resultFoodAllergy.setTestId(50);
        resultFoodAllergy.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultFoodAllergy.setState("finished");
        resultFoodAllergy.setCreateTime(new Date());
        resultFoodAllergy.setUpdateTime(new Date());
        resultFoodAllergy.setCreateUser(userId.toString());
        resultFoodAllergy.setUpdateUser(userId.toString());
        ResultFoodAllergyManager.saveResult(resultFoodAllergy);
        return SUCCESS;
    }

    // 血型
    public String saveResultBloodType(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultBloodType.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultBloodType.setUserId(userId);
        resultBloodType.setTestId(51);
        resultBloodType.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultBloodType.setState("finished");
        resultBloodType.setCreateTime(new Date());
        resultBloodType.setUpdateTime(new Date());
        resultBloodType.setCreateUser(userId.toString());
        resultBloodType.setUpdateUser(userId.toString());
        ResultBloodTypeManager.saveResult(resultBloodType);
        return SUCCESS;
    }

    // 注意力指导建议
    public String saveResultAttention(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultAttention.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultAttention.setUserId(userId);
        resultAttention.setTestId(52);
        resultAttention.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultAttention.setState("finished");
        resultAttention.setCreateTime(new Date());
        resultAttention.setUpdateTime(new Date());
        resultAttention.setCreateUser(userId.toString());
        resultAttention.setUpdateUser(userId.toString());
        ResultAttentionManager.saveResult(resultAttention);
        return SUCCESS;
    }


    // 心电筛查
    public String saveResultEcg(){

        Integer userId = (Integer)ActionContext.getContext().getSession().get("userid");
        resultECG.setHosId((Integer) ActionContext.getContext().getSession().get("hoid"));
        resultECG.setUserId(userId);
        resultECG.setTestId(53);
        resultECG.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        resultECG.setState("finished");
        resultECG.setCreateTime(new Date());
        resultECG.setUpdateTime(new Date());
        resultECG.setCreateUser(userId.toString());
        resultECG.setUpdateUser(userId.toString());
        ResultEcgManager.saveResult(resultECG);
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

    public Integer differentdays(Date d1, Date d2){
        Integer days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    //判断可不可以进行测试
    private Boolean canTest(Integer testId){
        Integer hospitalId = (Integer) ActionContext.getContext().getSession().get("hoid");
        HospitalTestConfig config = HospitalTestConfigManager.findConfigByHospitalId(hospitalId);
        if(config==null){
            return false;
        }
        if(config.getConfigType().equals(CONFIG_TYPE)){
            return HospitalTestTimesManager.haveTimesByHospitalId(hospitalId);
        }else {
            return HospitalTestTimesManager.haveTimes(hospitalId,testId);
        }
    }

    //对当前卡片可以使用次数减一
    private Boolean subTestTimes(Integer testId){
        Integer hospitalId = (Integer) ActionContext.getContext().getSession().get("hoid");
        HospitalTestConfig config = HospitalTestConfigManager.findConfigByHospitalId(hospitalId);
        if(config==null){
            return false;
        }
        HospitalTestTimes hospitalTestTimes = new HospitalTestTimes();
        Integer userId = null;
        try {
            userId = (Integer) ActionContext.getContext().getSession().get("userid");
        }catch (Exception e){

        }
        if(config.getConfigType().equals(CONFIG_TYPE)){
            hospitalTestTimes.setHospitalId(hospitalId);
            hospitalTestTimes.setUpdateUser(userId.toString());
            hospitalTestTimes = HospitalTestTimesManager.subTimesByHospitalId(hospitalTestTimes);
        }else {
            hospitalTestTimes.setHospitalId(hospitalId);
            hospitalTestTimes.setUpdateUser(userId.toString());
            hospitalTestTimes.setTestId(testId);
            hospitalTestTimes = HospitalTestTimesManager.subTimes(hospitalTestTimes);
        }
        if(hospitalTestTimes==null){
            return false;
        }else {
            return true;
        }
    }

    public int getTestid() {
        return testid;
    }
    public void setTestid(int testid) {
        this.testid = testid;
    }
    public List<Integer> getQuestionTypeList() {
        return questionTypeList;
    }
    public void setQuestionTypeList(List<Integer> questionTypeList) {
        this.questionTypeList = questionTypeList;
    }
    public List<Integer> getQuestionMonthList() {
        return questionMonthList;
    }
    public void setQuestionMonthList(List<Integer> questionMonthList) {
        this.questionMonthList = questionMonthList;
    }
    public List<Question> getQuestionList() {
        return questionList;
    }
    public void setQuestionList(List<Question> questionList) {
        this.questionList = questionList;
    }

    public int getBabyid() {
        return babyid;
    }
    public void setBabyid(int babyid) {
        this.babyid = babyid;
    }
    public Baby getBaby() {
        return baby;
    }
    public void setBaby(Baby baby) {
        this.baby = baby;
    }

    public List<Result> getResultList() {
        return resultList;
    }

    public void setResultList(List<Result> resultList) {
        this.resultList = resultList;
    }

    public Result getResult() {
        return result;
    }

    public void setResult(Result result) {
        this.result = result;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }

    public Result3_6 getResult3_6() {
        return result3_6;
    }

    public void setResult3_6(Result3_6 result3_6) {
        this.result3_6 = result3_6;
    }

    public List<Result3_6> getResult3_6List() {
        return result3_6List;
    }

    public void setResult3_6List(List<Result3_6> result3_6List) {
        this.result3_6List = result3_6List;
    }

    public Result0_2 getResult0_2() {
        return result0_2;
    }

    public void setResult0_2(Result0_2 result0_2) {
        this.result0_2 = result0_2;
    }

    public List<Result0_2> getResult0_2List() {
        return result0_2List;
    }

    public void setResult0_2List(List<Result0_2> result0_2List) {
        this.result0_2List = result0_2List;
    }



    public Result50 getResult50() {
        return result50;
    }

    public void setResult50(Result50 result50) {
        this.result50 = result50;
    }

    public List<Result50> getResult50List() {
        return result50List;
    }

    public void setResult50List(List<Result50> result50List) {
        this.result50List = result50List;
    }

    public Result132 getResult132() {
        return result132;
    }

    public void setResult132(Result132 result132) {
        this.result132 = result132;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public ResultCognize getResultCognize() {
        return resultCognize;
    }

    public void setResultCognize(ResultCognize resultCognize) {
        this.resultCognize = resultCognize;
    }

    public List<Result132> getResult132List() {
        return result132List;
    }

    public void setResult132List(List<Result132> result132List) {
        this.result132List = result132List;
    }

    public List<ResultCognize> getResultCognizeList() {
        return resultCognizeList;
    }

    public void setResultCognizeList(List<ResultCognize> resultCognizeList) {
        this.resultCognizeList = resultCognizeList;
    }

    public Integer getPreDelivery() {
        return preDelivery;
    }

    public void setPreDelivery(Integer preDelivery) {
        this.preDelivery = preDelivery;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public List<Result0_3> getResult0_3List() {
        return result0_3List;
    }

    public void setResult0_3List(List<Result0_3> result0_3List) {
        this.result0_3List = result0_3List;
    }

    public Result0_3 getResult0_3() {
        return result0_3;
    }

    public void setResult0_3(Result0_3 result0_3) {
        this.result0_3 = result0_3;
    }

    public ResultDDST getResultDDST() {
        return resultDDST;
    }

    public void setResultDDST(ResultDDST resultDDST) {
        this.resultDDST = resultDDST;
    }

    public List<ResultDDST> getResultDDSTList() {
        return resultDDSTList;
    }

    public void setResultDDSTList(List<ResultDDST> resultDDSTList) {
        this.resultDDSTList = resultDDSTList;
    }

    public List<DDSTQuestion> getDDSTList() {
        return DDSTList;
    }

    public void setDDSTList(List<DDSTQuestion> DDSTList) {
        this.DDSTList = DDSTList;
    }

    public List<ResultNei> getResultNeiList() {
        return resultNeiList;
    }

    public void setResultNeiList(List<ResultNei> resultNeiList) {
        this.resultNeiList = resultNeiList;
    }

    public ResultNei getResultNei() {
        return resultNei;
    }

    public void setResultNei(ResultNei resultNei) {
        this.resultNei = resultNei;
    }

    public Integer getBabyAgeYear() {
        return babyAgeYear;
    }

    public void setBabyAgeYear(Integer babyAgeYear) {
        this.babyAgeYear = babyAgeYear;
    }

    public ResultGroup getResultGroup() {
        return resultGroup;
    }

    public void setResultGroup(ResultGroup resultGroup) {
        this.resultGroup = resultGroup;
    }

    public List<ResultGroup> getResultGroupList() {
        return resultGroupList;
    }

    public void setResultGroupList(List<ResultGroup> resultGroupList) {
        this.resultGroupList = resultGroupList;
    }

    public List<ResultQiZhi> getResultQiZhiList() {
        return resultQiZhiList;
    }

    public void setResultQiZhiList(List<ResultQiZhi> resultQiZhiList) {
        this.resultQiZhiList = resultQiZhiList;
    }

    public ResultQiZhi getResultQiZhi() {
        return resultQiZhi;
    }

    public void setResultQiZhi(ResultQiZhi resultQiZhi) {
        this.resultQiZhi = resultQiZhi;
    }

    public List<ResultFeel> getResultFeelList() {
        return resultFeelList;
    }

    public void setResultFeelList(List<ResultFeel> resultFeelList) {
        this.resultFeelList = resultFeelList;
    }

    public ResultFeel getResultFeel() {
        return resultFeel;
    }

    public void setResultFeel(ResultFeel resultFeel) {
        this.resultFeel = resultFeel;
    }

    public List<Result2016> getResult2016List() {
        return result2016List;
    }

    public void setResult2016List(List<Result2016> result2016List) {
        this.result2016List = result2016List;
    }

    public Result2016 getResult2016() {
        return result2016;
    }

    public void setResult2016(Result2016 result2016) {
        this.result2016 = result2016;
    }

    public List<ResultADHD> getResultADHDList() {
        return resultADHDList;
    }

    public void setResultADHDList(List<ResultADHD> resultADHDList) {
        this.resultADHDList = resultADHDList;
    }

    public ResultADHD getResultADHD() {
        return resultADHD;
    }

    public void setResultADHD(ResultADHD resultADHD) {
        this.resultADHD = resultADHD;
    }

    public List<ResultFeel2020> getResultFeel2020List() {
        return resultFeel2020List;
    }

    public void setResultFeel2020List(List<ResultFeel2020> resultFeel2020List) {
        this.resultFeel2020List = resultFeel2020List;
    }

    public ResultFeel2020 getResultFeel2020() {
        return resultFeel2020;
    }

    public void setResultFeel2020(ResultFeel2020 resultFeel2020) {
        this.resultFeel2020 = resultFeel2020;
    }

    public ResultGroup2020 getResultGroup2020() {
        return resultGroup2020;
    }

    public void setResultGroup2020(ResultGroup2020 resultGroup2020) {
        this.resultGroup2020 = resultGroup2020;
    }

    public List<ResultGroup2020> getResultGroup2020List() {
        return resultGroup2020List;
    }

    public void setResultGroup2020List(List<ResultGroup2020> resultGroup2020List) {
        this.resultGroup2020List = resultGroup2020List;
    }

    public List<ResultPhysical> getResultPhysicalList() {
        return resultPhysicalList;
    }

    public void setResultPhysicalList(List<ResultPhysical> resultPhysicalList) {
        this.resultPhysicalList = resultPhysicalList;
    }

    public ResultPhysical getResultPhysical() {
        return resultPhysical;
    }

    public void setResultPhysical(ResultPhysical resultPhysical) {
        this.resultPhysical = resultPhysical;
    }

    public List<ResultSummary> getResultSummaryList() {
        return resultSummaryList;
    }

    public void setResultSummaryList(List<ResultSummary> resultSummaryList) {
        this.resultSummaryList = resultSummaryList;
    }

    public ResultSummary getResultSummary() {
        return resultSummary;
    }

    public void setResultSummary(ResultSummary resultSummary) {
        this.resultSummary = resultSummary;
    }

    public List<ResultAllergy> getResultAllergyList() {
        return resultAllergyList;
    }

    public void setResultAllergyList(List<ResultAllergy> resultAllergyList) {
        this.resultAllergyList = resultAllergyList;
    }

    public ResultAllergy getResultAllergy() {
        return resultAllergy;
    }

    public void setResultAllergy(ResultAllergy resultAllergy) {
        this.resultAllergy = resultAllergy;
    }

    public String getErrorDesc() {
        return errorDesc;
    }

    public void setErrorDesc(String errorDesc) {
        this.errorDesc = errorDesc;
    }

    public List<ResultBasic1> getResultBasic1List() {
        return resultBasic1List;
    }

    public void setResultBasic1List(List<ResultBasic1> resultBasic1List) {
        this.resultBasic1List = resultBasic1List;
    }

    public List<ResultBasic2> getResultBasic2List() {
        return resultBasic2List;
    }

    public void setResultBasic2List(List<ResultBasic2> resultBasic2List) {
        this.resultBasic2List = resultBasic2List;
    }

    public ResultBasic1 getResultBasic1() {
        return resultBasic1;
    }

    public void setResultBasic1(ResultBasic1 resultBasic1) {
        this.resultBasic1 = resultBasic1;
    }

    public ResultBasic2 getResultBasic2() {
        return resultBasic2;
    }

    public void setResultBasic2(ResultBasic2 resultBasic2) {
        this.resultBasic2 = resultBasic2;
    }

    public List<ResultQiZhi2020> getResultQiZhi2020List() {
        return resultQiZhi2020List;
    }

    public void setResultQiZhi2020List(List<ResultQiZhi2020> resultQiZhi2020List) {
        this.resultQiZhi2020List = resultQiZhi2020List;
    }

    public ResultQiZhi2020 getResultQiZhi2020() {
        return resultQiZhi2020;
    }

    public void setResultQiZhi2020(ResultQiZhi2020 resultQiZhi2020) {
        this.resultQiZhi2020 = resultQiZhi2020;
    }

    public List<ResultTooth> getResultToothList() {
        return resultToothList;
    }

    public void setResultToothList(List<ResultTooth> resultToothList) {
        this.resultToothList = resultToothList;
    }

    public ResultTooth getResultTooth() {
        return resultTooth;
    }

    public void setResultTooth(ResultTooth resultTooth) {
        this.resultTooth = resultTooth;
    }

    public List<ResultFeed> getResultFeedList() {
        return resultFeedList;
    }

    public void setResultFeedList(List<ResultFeed> resultFeedList) {
        this.resultFeedList = resultFeedList;
    }

    public ResultFeed getResultFeed() {
        return resultFeed;
    }

    public void setResultFeed(ResultFeed resultFeed) {
        this.resultFeed = resultFeed;
    }

    public List<ResultPlan> getResultPlanList() {
        return resultPlanList;
    }

    public void setResultPlanList(List<ResultPlan> resultPlanList) {
        this.resultPlanList = resultPlanList;
    }

    public List<ResultBless> getResultBlessList() {
        return resultBlessList;
    }

    public void setResultBlessList(List<ResultBless> resultBlessList) {
        this.resultBlessList = resultBlessList;
    }

    public ResultBless getResultBless() {
        return resultBless;
    }

    public void setResultBless(ResultBless resultBless) {
        this.resultBless = resultBless;
    }

    public ResultPlan getResultPlan() {
        return resultPlan;
    }

    public void setResultPlan(ResultPlan resultPlan) {
        this.resultPlan = resultPlan;
    }

    public List<ResultRear> getResultRearList() {
        return resultRearList;
    }

    public void setResultRearList(List<ResultRear> resultRearList) {
        this.resultRearList = resultRearList;
    }

    public ResultRear getResultRear() {
        return resultRear;
    }

    public void setResultRear(ResultRear resultRear) {
        this.resultRear = resultRear;
    }

    public List<ResultEye> getResultEyeList() {
        return resultEyeList;
    }

    public void setResultEyeList(List<ResultEye> resultEyeList) {
        this.resultEyeList = resultEyeList;
    }

    public ResultEye getResultEye() {
        return resultEye;
    }

    public void setResultEye(ResultEye resultEye) {
        this.resultEye = resultEye;
    }

    public List<ResultEar> getResultEarList() {
        return resultEarList;
    }

    public void setResultEarList(List<ResultEar> resultEarList) {
        this.resultEarList = resultEarList;
    }

    public List<ResultBMD> getResultBMDList() {
        return resultBMDList;
    }

    public void setResultBMDList(List<ResultBMD> resultBMDList) {
        this.resultBMDList = resultBMDList;
    }

    public ResultEar getResultEar() {
        return resultEar;
    }

    public void setResultEar(ResultEar resultEar) {
        this.resultEar = resultEar;
    }

    public ResultBMD getResultBMD() {
        return resultBMD;
    }

    public void setResultBMD(ResultBMD resultBMD) {
        this.resultBMD = resultBMD;
    }

    public List<ResultBlood> getResultBloodList() {
        return resultBloodList;
    }

    public void setResultBloodList(List<ResultBlood> resultBloodList) {
        this.resultBloodList = resultBloodList;
    }

    public List<ResultMicro> getResultMicroList() {
        return resultMicroList;
    }

    public void setResultMicroList(List<ResultMicro> resultMicroList) {
        this.resultMicroList = resultMicroList;
    }

    public List<ResultUrine> getResultUrineList() {
        return resultUrineList;
    }

    public void setResultUrineList(List<ResultUrine> resultUrineList) {
        this.resultUrineList = resultUrineList;
    }

    public List<ResultBone> getResultBoneList() {
        return resultBoneList;
    }

    public void setResultBoneList(List<ResultBone> resultBoneList) {
        this.resultBoneList = resultBoneList;
    }

    public List<ResultFastAllergy> getResultFastAllergyList() {
        return resultFastAllergyList;
    }

    public void setResultFastAllergyList(List<ResultFastAllergy> resultFastAllergyList) {
        this.resultFastAllergyList = resultFastAllergyList;
    }

    public List<ResultFoodAllergy> getResultFoodAllergyList() {
        return resultFoodAllergyList;
    }

    public void setResultFoodAllergyList(List<ResultFoodAllergy> resultFoodAllergyList) {
        this.resultFoodAllergyList = resultFoodAllergyList;
    }

    public List<ResultBloodType> getResultBloodTypeList() {
        return resultBloodTypeList;
    }

    public void setResultBloodTypeList(List<ResultBloodType> resultBloodTypeList) {
        this.resultBloodTypeList = resultBloodTypeList;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }

    public ResultBlood getResultBlood() {
        return resultBlood;
    }

    public void setResultBlood(ResultBlood resultBlood) {
        this.resultBlood = resultBlood;
    }

    public ResultBone getResultBone() {
        return resultBone;
    }

    public void setResultBone(ResultBone resultBone) {
        this.resultBone = resultBone;
    }

    public ResultMicro getResultMicro() {
        return resultMicro;
    }

    public void setResultMicro(ResultMicro resultMicro) {
        this.resultMicro = resultMicro;
    }

    public ResultUrine getResultUrine() {
        return resultUrine;
    }

    public void setResultUrine(ResultUrine resultUrine) {
        this.resultUrine = resultUrine;
    }

    public List<ResultHbs> getResultHBsList() {
        return resultHBsList;
    }

    public void setResultHBsList(List<ResultHbs> resultHBsList) {
        this.resultHBsList = resultHBsList;
    }

    public ResultHbs getResultHBs() {
        return resultHBs;
    }

    public void setResultHBs(ResultHbs resultHBs) {
        this.resultHBs = resultHBs;
    }

    public ResultFastAllergy getResultFastAllergy() {
        return resultFastAllergy;
    }

    public void setResultFastAllergy(ResultFastAllergy resultFastAllergy) {
        this.resultFastAllergy = resultFastAllergy;
    }

    public ResultFoodAllergy getResultFoodAllergy() {
        return resultFoodAllergy;
    }

    public void setResultFoodAllergy(ResultFoodAllergy resultFoodAllergy) {
        this.resultFoodAllergy = resultFoodAllergy;
    }

    public ResultBloodType getResultBloodType() {
        return resultBloodType;
    }

    public void setResultBloodType(ResultBloodType resultBloodType) {
        this.resultBloodType = resultBloodType;
    }

    public List<ResultAttention> getResultAttentionList() {
        return resultAttentionList;
    }

    public void setResultAttentionList(List<ResultAttention> resultAttentionList) {
        this.resultAttentionList = resultAttentionList;
    }

    public ResultAttention getResultAttention() {
        return resultAttention;
    }

    public void setResultAttention(ResultAttention resultAttention) {
        this.resultAttention = resultAttention;
    }

    public List<ResultEcg> getResultECGList() {
        return resultECGList;
    }

    public void setResultECGList(List<ResultEcg> resultECGList) {
        this.resultECGList = resultECGList;
    }

    public ResultEcg getResultECG() {
        return resultECG;
    }

    public void setResultECG(ResultEcg resultECG) {
        this.resultECG = resultECG;
    }

    public List<ResultTooth20> getResultTooth20List() {
        return resultTooth20List;
    }

    public void setResultTooth20List(List<ResultTooth20> resultTooth20List) {
        this.resultTooth20List = resultTooth20List;
    }

    public ResultTooth20 getResultTooth20() {
        return resultTooth20;
    }

    public void setResultTooth20(ResultTooth20 resultTooth20) {
        this.resultTooth20 = resultTooth20;
    }
}
