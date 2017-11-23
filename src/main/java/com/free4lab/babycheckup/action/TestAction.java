package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.*;
import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.QuestionManager;
import com.free4lab.babycheckup.manager.ResultManager;
import com.free4lab.babycheckup.manager.ResultManager3_6;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Question;
import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.Result3_6;
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
    private int babyid;
    private Baby baby;
    private String SUCCESS = "success";
    private Result result;
    private Result3_6 result3_6;
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



    public String babyTest(){
        baby = BabyManager.findById(babyid);
        resultList = ResultManager.findResultBybid(babyid);
        result3_6List = ResultManager3_6.findResultBybid(babyid);
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
}
