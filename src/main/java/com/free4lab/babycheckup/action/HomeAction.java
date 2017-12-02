package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.opensymphony.xwork2.ActionContext;

public class HomeAction {

    private long numberOfBaby;
    private long numberOfResult0_6;
    private long numberOfResult3_6;
    private long numberOfResult0_2;
    private long numberOfResult50;

    public String execute() throws Exception {
        int hoid = (Integer) ActionContext.getContext().getSession().get("hoid");
        numberOfBaby = BabyManager.countBabyByHoid(hoid);
        numberOfResult0_6 = ResultManager.countResultByHosIdAndTestId(hoid,1);
        numberOfResult3_6 = ResultManager3_6.countResultByHosIdAndTestId(hoid,2);
        numberOfResult0_2 = ResultManager0_2.countResultByHosIdAndTestId(hoid,16);
        numberOfResult50 = ResultManager50.countResultByHosIdAndTestId(hoid,17);
        return "success";
    }

    public long getNumberOfBaby() {
        return numberOfBaby;
    }
    public void setNumberOfBaby(long numberOfBaby) {
        this.numberOfBaby = numberOfBaby;
    }

    public long getNumberOfResult0_6() {
        return numberOfResult0_6;
    }

    public void setNumberOfResult0_6(long numberOfResult0_6) {
        this.numberOfResult0_6 = numberOfResult0_6;
    }

    public long getNumberOfResult3_6() {
        return numberOfResult3_6;
    }

    public void setNumberOfResult3_6(long numberOfResult6_12) {
        this.numberOfResult3_6 = numberOfResult6_12;
    }

    public long getNumberOfResult0_2() {
        return numberOfResult0_2;
    }

    public void setNumberOfResult0_2(long numberOfResult0_2) {
        this.numberOfResult0_2 = numberOfResult0_2;
    }

    public long getNumberOfResult50() {
        return numberOfResult50;
    }

    public void setNumberOfResult50(long numberOfResult50) {
        this.numberOfResult50 = numberOfResult50;
    }
}
