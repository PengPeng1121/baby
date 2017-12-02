package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.*;
import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;

import java.sql.Date;
import java.util.ArrayList;
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
    private List<Result50> result50List = new ArrayList<Result50>();
    private int babyid;
    private Baby baby;
    private String SUCCESS = "success";
    private Result result;
    private Result3_6 result3_6;
    private Result0_2 result0_2;
    private Result50 result50;
    private int days;

    private String redirectUrl;
    public String newTestChoice() {
        baby = BabyManager.findById(babyid);
        babyid =baby.getBabyid();
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30;
        //紧急方案  都跳转到newtest0_6
        if(days<=24){
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
        days = (differentdays(birth,today))/30;
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
        days = (differentdays(birth,today))/30;
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
        days = (differentdays(birth,today))/30;
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
        days = (differentdays(birth,today))/30;
        return SUCCESS;
    }

    public String babyTest(){
        baby = BabyManager.findById(babyid);
        resultList = ResultManager.findResultBybid(babyid);
        result3_6List = ResultManager3_6.findResultBybid(babyid);
        result0_2List = ResultManager0_2.findResultBybid(babyid);
        result50List = ResultManager50.findResultBybid(babyid);
        Date today = new Date(new java.util.Date().getTime());
        Date birth = baby.getBirthday();
        days = (differentdays(birth,today))/30;
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
            }else if(talent<=130){
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

    public int differentdays(Date d1, Date d2){
        int days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
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

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
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

    public Result50 getResult50() {
        return result50;
    }

    public void setResult50(Result50 result50) {
        this.result50 = result50;
    }


}
