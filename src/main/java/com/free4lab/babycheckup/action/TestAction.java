package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.*;
import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.result132.Level;
import com.pp.common.constant.resultCognize.Evaluation;
import com.pp.common.constant.resultCognize.Talent;
import com.pp.common.constant.resultFeel.FeelUtil;
import com.pp.common.constant.resultQiZhi.Month1_4;
import com.pp.common.constant.resultQiZhi.QiZhiDTO;
import com.pp.common.constant.resultQiZhi.QiZhiVO;
import com.pp.common.constant.util.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;

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
    private int babyid;
    private Baby baby;
    private String SUCCESS = "success";
    private Result result;
    private ResultGroup resultGroup;
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
    private String days;
    private int day;
    //早产天数
    private Integer preDelivery;
    private String start;
    private String redirectUrl;
    private Integer babyAgeYear;//儿童年龄-年
    //全部卡片配置
    private final static Integer CONFIG_TYPE = 1;

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
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
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
        days = (differentdays(birth,today))/30+"";
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
        //todo 详情表
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
}
