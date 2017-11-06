package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.TestManager;
import com.free4lab.babycheckup.model.Result;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;

public class TestAdminAction {

    private int dqRange;
    private byte babySex;
    private String dqStart;
    private String dqEnd;
    private String birthdayStart;
    private String birthdayEnd;
    private String checkdayStart;
    private String checkdayEnd;
    private List<Result> resultList;

    public String searchResult() {
        resultList = TestManager.findResultListBySearch(babySex, birthdayStart, birthdayEnd, checkdayStart, checkdayEnd, dqRange, dqStart, dqEnd, (Integer) ActionContext.getContext().getSession().get("hoid"));
        return "success";
    }

    public int getDqRange() {
        return dqRange;
    }
    public void setDqRange(int dqRange) {
        this.dqRange = dqRange;
    }
    public byte getBabySex() {
        return babySex;
    }
    public void setBabySex(byte babySex) {
        this.babySex = babySex;
    }
    public String getDqStart() {
        return dqStart;
    }
    public void setDqStart(String dqStart) {
        this.dqStart = dqStart;
    }
    public String getDqEnd() {
        return dqEnd;
    }
    public void setDqEnd(String dqEnd) {
        this.dqEnd = dqEnd;
    }
    public String getBirthdayStart() {
        return birthdayStart;
    }
    public void setBirthdayStart(String birthdayStart) {
        this.birthdayStart = birthdayStart;
    }
    public String getBirthdayEnd() {
        return birthdayEnd;
    }
    public void setBirthdayEnd(String birthdayEnd) {
        this.birthdayEnd = birthdayEnd;
    }
    public String getCheckdayStart() {
        return checkdayStart;
    }
    public void setCheckdayStart(String checkdayStart) {
        this.checkdayStart = checkdayStart;
    }
    public String getCheckdayEnd() {
        return checkdayEnd;
    }
    public void setCheckdayEnd(String checkdayEnd) {
        this.checkdayEnd = checkdayEnd;
    }
    public List<Result> getResultList() {
        return resultList;
    }
    public void setResultList(List<Result> resultList) {
        this.resultList = resultList;
    }

}
