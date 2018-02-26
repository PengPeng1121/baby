package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.*;
import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.result132.Level;
import com.pp.common.constant.resultCognize.Evaluation;
import com.pp.common.constant.resultCognize.Talent;
import com.pp.common.constant.util.ExactAgeUtil;
import com.pp.common.constant.util.GetScaleUtil;
import com.pp.common.constant.util.GetStandardUtil;
import org.apache.commons.lang.StringUtils;

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
    private List<Result> resultList = new ArrayList<Result>();
    private List<Result3_6> result3_6List = new ArrayList<Result3_6>();
    private List<Result0_2> result0_2List = new ArrayList<Result0_2>();
    private List<Result0_3> result0_3List = new ArrayList<Result0_3>();
    private List<Result50> result50List = new ArrayList<Result50>();
    private List<Result132> result132List = new ArrayList<Result132>();
    private List<ResultCognize> resultCognizeList = new ArrayList<ResultCognize>();
    private int babyid;
    private Baby baby;
    private String SUCCESS = "success";
    private Result result;
    private Result3_6 result3_6;
    private Result0_2 result0_2;
    private Result0_3 result0_3;
    private Result132 result132;
    private Result50 result50;
    private ResultCognize resultCognize;
    private String days;
    private int day;
    //早产天数
    private Integer preDelivery;
    private String start;
    private String redirectUrl;

    public String newTestChoice() {
        baby = BabyManager.findById(babyid);
        babyid =baby.getBabyid();
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        //紧急方案  都跳转到newtest0_6
        Integer month = Integer.parseInt(days.trim());
        if(month<=24){
            redirectUrl = "/newtest0_6";
        }else {
            redirectUrl = "/newtest0_6";
        }
        return SUCCESS;
    }

    public String newTest0_6() {
        questionTypeList = QuestionManager.findTypeByTestid(testid);
        questionMonthList = QuestionManager.findMonthByTestid(testid);
        questionList = QuestionManager.findByTestid(testid);
        baby = BabyManager.findById(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String newTest3_6() {
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

    public String babyTest(){
        baby = BabyManager.findById(babyid);
        resultList = ResultManager.findResultBybid(babyid);
        result3_6List = ResultManager3_6.findResultBybid(babyid);
        result0_2List = ResultManager0_2.findResultBybid(babyid);
        result50List = ResultManager50.findResultBybid(babyid);
        resultCognizeList = ResultCognizeManager.findResultBybid(babyid);
        result132List = ResultManager132.findResultBybid(babyid);
        result0_3List = ResultManager0_3.findResultBybid(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30+"";
        return SUCCESS;
    }

    public String saveResult(){
        result.setHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        result.setUserid((Integer) ActionContext.getContext().getSession().get("userid"));
        result.setTestid(1);
        result.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        result.setState("finished");
        ResultManager.saveResult(result);
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
            ResultManager0_3.saveResult(result0_3);
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
}
