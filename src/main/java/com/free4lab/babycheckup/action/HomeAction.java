package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.HospitalTestConfig;
import com.free4lab.babycheckup.model.HospitalTestTimes;
import com.opensymphony.xwork2.ActionContext;

public class HomeAction {

    private long numberOfBaby;
    private long numberOfResult0_6;
    private long numberOfResult3_6;
    private long numberOfResult0_2;
    private long numberOfResult50;
    private long numberOfResult132;
    private long numberOfResultCognize;
    private long numberOfResult0_3;
    private long numberOfResultDDST;
    private long numberOfResultNei;
    private long numberOfResultGroup;
    private long numberOfResultQiZhi;
    private long numberOfResultFeel;
    private long numberOfResult2016;
    private long numberOfResultADHD;
    private Integer result0_6LeftTimes;
    private Integer result3_6LeftTimes;
    private Integer result0_2LeftTimes;
    private Integer result50LeftTimes;
    private Integer result132LeftTimes;
    private Integer resultCognizeLeftTimes;
    private Integer result0_3LeftTimes;
    private Integer resultDDSTLeftTimes;
    private Integer resultNeiLeftTimes;
    private Integer resultGroupLeftTimes;
    private Integer resultQiZhiLeftTimes;
    private Integer resultFeelLeftTimes;
    private Integer result2016LeftTimes;
    private Integer resultADHDLeftTimes;
    private Integer totalLeftTimes;

    //全部卡片配置
    private final static Integer CONFIG_TYPE = 1;

    public String execute() throws Exception {
        int hoid = (Integer) ActionContext.getContext().getSession().get("hoid");
        numberOfBaby = BabyManager.countBabyByHoid(hoid);
        numberOfResult0_6 = ResultManager.countResultByHosIdAndTestId(hoid,1);
        numberOfResult3_6 = ResultManager3_6.countResultByHosIdAndTestId(hoid,2);
        numberOfResult0_2 = ResultManager0_2.countResultByHosIdAndTestId(hoid,16);
        numberOfResult50 = ResultManager50.countResultByHosIdAndTestId(hoid,17);
        numberOfResult132 = ResultManager132.countResultByHosIdAndTestId(hoid,18);
        numberOfResultCognize = ResultCognizeManager.countResultByHosIdAndTestId(hoid,19);
        numberOfResult0_3 = ResultManager0_3.countResultByHosIdAndTestId(hoid,20);
        numberOfResultDDST = ResultDDSTManager.countResultByHosIdAndTestId(hoid,21);
        numberOfResultNei = ResultNeiManager.countResultByHosIdAndTestId(hoid,22);
        numberOfResultGroup = ResultGroupManager.countResultByHosIdAndTestId(hoid,23);
        numberOfResultQiZhi = ResultQiZhiManager.countResultByHosIdAndTestId(hoid,24);
        numberOfResultFeel = ResultFeelManager.countResultByHosIdAndTestId(hoid,25);
        numberOfResult2016 = ResultManager2016.countResultByHosIdAndTestId(hoid,26);
        numberOfResultADHD = ResultManager2016.countResultByHosIdAndTestId(hoid,27);
        HospitalTestConfig config = HospitalTestConfigManager.findConfigByHospitalId(hoid);
        if(config==null){
            return "fail";
        }
        if(config.getConfigType().equals(CONFIG_TYPE)){
            HospitalTestTimes times = HospitalTestTimesManager.findTimesByHospitalId(hoid);
            if(times==null){
                return "fail";
            }
            totalLeftTimes = times.getLeftTimes();
        }else {
            HospitalTestTimes times0_6 = HospitalTestTimesManager.findTimes(hoid,1);
            HospitalTestTimes times3_6 = HospitalTestTimesManager.findTimes(hoid,2);
            HospitalTestTimes times0_2 = HospitalTestTimesManager.findTimes(hoid,16);
            HospitalTestTimes times50 = HospitalTestTimesManager.findTimes(hoid,17);
            HospitalTestTimes times132 = HospitalTestTimesManager.findTimes(hoid,18);
            HospitalTestTimes timesCognize = HospitalTestTimesManager.findTimes(hoid,19);
            HospitalTestTimes times0_3 = HospitalTestTimesManager.findTimes(hoid,20);
            HospitalTestTimes timesDDST = HospitalTestTimesManager.findTimes(hoid,21);
            HospitalTestTimes timesNei = HospitalTestTimesManager.findTimes(hoid,22);
            HospitalTestTimes timesGroup = HospitalTestTimesManager.findTimes(hoid,23);
            HospitalTestTimes timesQiZhi = HospitalTestTimesManager.findTimes(hoid,24);
            HospitalTestTimes timesFeel = HospitalTestTimesManager.findTimes(hoid,25);
            HospitalTestTimes times2016 = HospitalTestTimesManager.findTimes(hoid,26);
            HospitalTestTimes timesADHD = HospitalTestTimesManager.findTimes(hoid,27);
            if(times0_6!=null){
                result0_6LeftTimes=times0_6.getLeftTimes();
            }
            if(times3_6!=null){
                result3_6LeftTimes=times3_6.getLeftTimes();
            }
            if(times0_2!=null){
                result0_2LeftTimes=times0_2.getLeftTimes();
            }
            if(times50!=null){
                result50LeftTimes=times50.getLeftTimes();
            }
            if(times132!=null){
                result132LeftTimes=times132.getLeftTimes();
            }
            if(timesCognize!=null){
                resultCognizeLeftTimes=timesCognize.getLeftTimes();
            }
            if(times0_3!=null){
                result0_3LeftTimes=times0_3.getLeftTimes();
            }
            if(timesDDST!=null){
                resultDDSTLeftTimes=timesDDST.getLeftTimes();
            }
            if(timesNei!=null){
                resultNeiLeftTimes=timesNei.getLeftTimes();
            }
            if(timesGroup!=null){
                resultGroupLeftTimes=timesGroup.getLeftTimes();
            }
            if(timesQiZhi!=null){
                resultQiZhiLeftTimes=timesQiZhi.getLeftTimes();
            }
            if(timesFeel!=null){
                resultFeelLeftTimes=timesFeel.getLeftTimes();
            }
            if(times2016!=null){
                result2016LeftTimes=times2016.getLeftTimes();
            }
            if(timesADHD!=null){
                resultADHDLeftTimes=timesADHD.getLeftTimes();
            }
        }
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

    public long getNumberOfResult132() {
        return numberOfResult132;
    }

    public void setNumberOfResult132(long numberOfResult132) {
        this.numberOfResult132 = numberOfResult132;
    }

    public long getNumberOfResultCognize() {
        return numberOfResultCognize;
    }

    public void setNumberOfResultCognize(long numberOfResultCognize) {
        this.numberOfResultCognize = numberOfResultCognize;
    }

    public long getNumberOfResult0_3() {
        return numberOfResult0_3;
    }

    public void setNumberOfResult0_3(long numberOfResult0_3) {
        this.numberOfResult0_3 = numberOfResult0_3;
    }

    public Integer getResult0_6LeftTimes() {
        return result0_6LeftTimes;
    }

    public void setResult0_6LeftTimes(Integer result0_6LeftTimes) {
        this.result0_6LeftTimes = result0_6LeftTimes;
    }

    public Integer getResult3_6LeftTimes() {
        return result3_6LeftTimes;
    }

    public void setResult3_6LeftTimes(Integer result3_6LeftTimes) {
        this.result3_6LeftTimes = result3_6LeftTimes;
    }

    public Integer getResult0_2LeftTimes() {
        return result0_2LeftTimes;
    }

    public void setResult0_2LeftTimes(Integer result0_2LeftTimes) {
        this.result0_2LeftTimes = result0_2LeftTimes;
    }

    public Integer getResult50LeftTimes() {
        return result50LeftTimes;
    }

    public void setResult50LeftTimes(Integer result50LeftTimes) {
        this.result50LeftTimes = result50LeftTimes;
    }

    public Integer getResult132LeftTimes() {
        return result132LeftTimes;
    }

    public void setResult132LeftTimes(Integer result132LeftTimes) {
        this.result132LeftTimes = result132LeftTimes;
    }

    public Integer getResultCognizeLeftTimes() {
        return resultCognizeLeftTimes;
    }

    public void setResultCognizeLeftTimes(Integer resultCognizeLeftTimes) {
        this.resultCognizeLeftTimes = resultCognizeLeftTimes;
    }

    public Integer getResult0_3LeftTimes() {
        return result0_3LeftTimes;
    }

    public void setResult0_3LeftTimes(Integer result0_3LeftTimes) {
        this.result0_3LeftTimes = result0_3LeftTimes;
    }

    public Integer getTotalLeftTimes() {
        return totalLeftTimes;
    }

    public void setTotalLeftTimes(Integer totalLeftTimes) {
        this.totalLeftTimes = totalLeftTimes;
    }

    public long getNumberOfResultDDST() {
        return numberOfResultDDST;
    }

    public void setNumberOfResultDDST(long numberOfResultDDST) {
        this.numberOfResultDDST = numberOfResultDDST;
    }

    public Integer getResultDDSTLeftTimes() {
        return resultDDSTLeftTimes;
    }

    public void setResultDDSTLeftTimes(Integer resultDDSTLeftTimes) {
        this.resultDDSTLeftTimes = resultDDSTLeftTimes;
    }

    public long getNumberOfResultNei() {
        return numberOfResultNei;
    }

    public void setNumberOfResultNei(long numberOfResultNei) {
        this.numberOfResultNei = numberOfResultNei;
    }

    public Integer getResultNeiLeftTimes() {
        return resultNeiLeftTimes;
    }

    public void setResultNeiLeftTimes(Integer resultNeiLeftTimes) {
        this.resultNeiLeftTimes = resultNeiLeftTimes;
    }

    public long getNumberOfResultGroup() {
        return numberOfResultGroup;
    }

    public void setNumberOfResultGroup(long numberOfResultGroup) {
        this.numberOfResultGroup = numberOfResultGroup;
    }

    public Integer getResultGroupLeftTimes() {
        return resultGroupLeftTimes;
    }

    public void setResultGroupLeftTimes(Integer resultGroupLeftTimes) {
        this.resultGroupLeftTimes = resultGroupLeftTimes;
    }

    public long getNumberOfResultQiZhi() {
        return numberOfResultQiZhi;
    }

    public void setNumberOfResultQiZhi(long numberOfResultQiZhi) {
        this.numberOfResultQiZhi = numberOfResultQiZhi;
    }

    public long getNumberOfResultFeel() {
        return numberOfResultFeel;
    }

    public void setNumberOfResultFeel(long numberOfResultFeel) {
        this.numberOfResultFeel = numberOfResultFeel;
    }

    public Integer getResultQiZhiLeftTimes() {
        return resultQiZhiLeftTimes;
    }

    public void setResultQiZhiLeftTimes(Integer resultQiZhiLeftTimes) {
        this.resultQiZhiLeftTimes = resultQiZhiLeftTimes;
    }

    public Integer getResultFeelLeftTimes() {
        return resultFeelLeftTimes;
    }

    public void setResultFeelLeftTimes(Integer resultFeelLeftTimes) {
        this.resultFeelLeftTimes = resultFeelLeftTimes;
    }

    public long getNumberOfResult2016() {
        return numberOfResult2016;
    }

    public void setNumberOfResult2016(long numberOfResult2016) {
        this.numberOfResult2016 = numberOfResult2016;
    }

    public Integer getResult2016LeftTimes() {
        return result2016LeftTimes;
    }

    public void setResult2016LeftTimes(Integer result2016LeftTimes) {
        this.result2016LeftTimes = result2016LeftTimes;
    }

    public long getNumberOfResultADHD() {
        return numberOfResultADHD;
    }

    public void setNumberOfResultADHD(long numberOfResultADHD) {
        this.numberOfResultADHD = numberOfResultADHD;
    }

    public Integer getResultADHDLeftTimes() {
        return resultADHDLeftTimes;
    }

    public void setResultADHDLeftTimes(Integer resultADHDLeftTimes) {
        this.resultADHDLeftTimes = resultADHDLeftTimes;
    }
}
