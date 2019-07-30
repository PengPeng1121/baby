package com.free4lab.babycheckup.vo;

//儿童成长发育测试历史信息
public class GroupBabyInfo {

    private Double[][] babyHA;

    private Double[][] babyWA;

    private Double[][] babyWH;

    private Double[][] babyWHO;

    private Double[][] babyBMI;

    private Double[][] babyHead;

    public Double[][] getBabyHA() {
        return babyHA;
    }

    public void setBabyHA(Double[][] babyHA) {
        this.babyHA = babyHA;
    }

    public Double[][] getBabyWA() {
        return babyWA;
    }

    public void setBabyWA(Double[][] babyWA) {
        this.babyWA = babyWA;
    }

    public Double[][] getBabyWH() {
        return babyWH;
    }

    public void setBabyWH(Double[][] babyWH) {
        this.babyWH = babyWH;
    }

    public Double[][] getBabyWHO() {
        return babyWHO;
    }

    public void setBabyWHO(Double[][] babyWHO) {
        this.babyWHO = babyWHO;
    }


    public Double[][] getBabyBMI() {
        return babyBMI;
    }

    public void setBabyBMI(Double[][] babyBMI) {
        this.babyBMI = babyBMI;
    }

    public Double[][] getBabyHead() {
        return babyHead;
    }

    public void setBabyHead(Double[][] babyHead) {
        this.babyHead = babyHead;
    }
}
