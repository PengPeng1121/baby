package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.HospitalTestConfig;
import com.free4lab.babycheckup.model.HospitalTestTimes;
import com.free4lab.babycheckup.model.ResultAllergy;
import com.free4lab.babycheckup.model.ResultBasic1;
import com.opensymphony.xwork2.ActionContext;
import org.springframework.util.CollectionUtils;

import java.util.List;

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
    private long numberOfResultFeel2020;
    private long numberOfResultGroup2020;
    private long numberOfResultPhysical;
    private long numberOfResultSummary;
    private long numberOfResultAllergy;
    private long numberOfResultBasic1;
    private long numberOfResultBasic2;
    private long numberOfResultQiZhi2020;
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
    private Integer resultFeel2020LeftTimes;
    private Integer resultGroup2020LeftTimes;
    private Integer resultPhysicalLeftTimes;
    private Integer resultSummaryLeftTimes;
    private Integer resultAllergyLeftTimes;
    private Integer resultBasic1LeftTimes;
    private Integer resultBasic2LeftTimes;
    private Integer resultQiZhi2020LeftTimes;
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
        numberOfResultADHD = ResultADHDManager.countResultByHosIdAndTestId(hoid,27);
        numberOfResultFeel2020 = ResultFeel2020Manager.countResultByHosIdAndTestId(hoid,28);
        numberOfResultGroup2020 = ResultGroup2020Manager.countResultByHosIdAndTestId(hoid,29);
        numberOfResultPhysical = ResultPhysicalManager.countResultByHosIdAndTestId(hoid,30);
        numberOfResultSummary = ResultSummaryManager.countResultByHosIdAndTestId(hoid,31);
        numberOfResultAllergy = ResultAllergyManager.countResultByHosIdAndTestId(hoid,32);
        numberOfResultBasic1 = ResultBasic1Manager.countResultByHosIdAndTestId(hoid,33);
        numberOfResultBasic2 = ResultBasic2Manager.countResultByHosIdAndTestId(hoid,34);
        numberOfResultQiZhi2020 = ResultQiZhi2020Manager.countResultByHosIdAndTestId(hoid,35);
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
            List<HospitalTestTimes> hospitalTestTimesList = HospitalTestTimesManager.findTimesListByHospitalId(hoid);
            if (!CollectionUtils.isEmpty(hospitalTestTimesList)) {
                for (HospitalTestTimes hospitalTestTimes : hospitalTestTimesList) {
                    switch (hospitalTestTimes.getTestId()) {
                        case 1:
                            result0_6LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 2:
                            result3_6LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 16:
                            result0_2LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 17:
                            result50LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 18:
                            result132LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 19:
                            resultCognizeLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 20:
                            result0_3LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 21:
                            resultDDSTLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 22:
                            resultNeiLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 23:
                            resultGroupLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 24:
                            resultQiZhiLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 25:
                            resultFeelLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 26:
                            result2016LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 27:
                            resultADHDLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 28:
                            resultFeel2020LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 29:
                            resultGroup2020LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 30:
                            resultPhysicalLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 31:
                            resultSummaryLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 32:
                            resultAllergyLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 33:
                            resultBasic1LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 34:
                            resultBasic2LeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 35:
                            resultQiZhiLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                    }
                }
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

    public long getNumberOfResultFeel2020() {
        return numberOfResultFeel2020;
    }

    public void setNumberOfResultFeel2020(long numberOfResultFeel2020) {
        this.numberOfResultFeel2020 = numberOfResultFeel2020;
    }

    public Integer getResultFeel2020LeftTimes() {
        return resultFeel2020LeftTimes;
    }

    public void setResultFeel2020LeftTimes(Integer resultFeel2020LeftTimes) {
        this.resultFeel2020LeftTimes = resultFeel2020LeftTimes;
    }

    public long getNumberOfResultGroup2020() {
        return numberOfResultGroup2020;
    }

    public void setNumberOfResultGroup2020(long numberOfResultGroup2020) {
        this.numberOfResultGroup2020 = numberOfResultGroup2020;
    }

    public Integer getResultGroup2020LeftTimes() {
        return resultGroup2020LeftTimes;
    }

    public void setResultGroup2020LeftTimes(Integer resultGroup2020LeftTimes) {
        this.resultGroup2020LeftTimes = resultGroup2020LeftTimes;
    }

    public long getNumberOfResultPhysical() {
        return numberOfResultPhysical;
    }

    public void setNumberOfResultPhysical(long numberOfResultPhysical) {
        this.numberOfResultPhysical = numberOfResultPhysical;
    }

    public Integer getResultPhysicalLeftTimes() {
        return resultPhysicalLeftTimes;
    }

    public void setResultPhysicalLeftTimes(Integer resultPhysicalLeftTimes) {
        this.resultPhysicalLeftTimes = resultPhysicalLeftTimes;
    }

    public long getNumberOfResultSummary() {
        return numberOfResultSummary;
    }

    public void setNumberOfResultSummary(long numberOfResultSummary) {
        this.numberOfResultSummary = numberOfResultSummary;
    }

    public Integer getResultSummaryLeftTimes() {
        return resultSummaryLeftTimes;
    }

    public void setResultSummaryLeftTimes(Integer resultSummaryLeftTimes) {
        this.resultSummaryLeftTimes = resultSummaryLeftTimes;
    }

    public long getNumberOfResultAllergy() {
        return numberOfResultAllergy;
    }

    public void setNumberOfResultAllergy(long numberOfResultAllergy) {
        this.numberOfResultAllergy = numberOfResultAllergy;
    }

    public Integer getResultAllergyLeftTimes() {
        return resultAllergyLeftTimes;
    }

    public void setResultAllergyLeftTimes(Integer resultAllergyLeftTimes) {
        this.resultAllergyLeftTimes = resultAllergyLeftTimes;
    }

    public long getNumberOfResultBasic1() {
        return numberOfResultBasic1;
    }

    public void setNumberOfResultBasic1(long numberOfResultBasic1) {
        this.numberOfResultBasic1 = numberOfResultBasic1;
    }

    public long getNumberOfResultBasic2() {
        return numberOfResultBasic2;
    }

    public void setNumberOfResultBasic2(long numberOfResultBasic2) {
        this.numberOfResultBasic2 = numberOfResultBasic2;
    }

    public Integer getResultBasic1LeftTimes() {
        return resultBasic1LeftTimes;
    }

    public void setResultBasic1LeftTimes(Integer resultBasic1LeftTimes) {
        this.resultBasic1LeftTimes = resultBasic1LeftTimes;
    }

    public Integer getResultBasic2LeftTimes() {
        return resultBasic2LeftTimes;
    }

    public void setResultBasic2LeftTimes(Integer resultBasic2LeftTimes) {
        this.resultBasic2LeftTimes = resultBasic2LeftTimes;
    }

    public long getNumberOfResultQiZhi2020() {
        return numberOfResultQiZhi2020;
    }

    public void setNumberOfResultQiZhi2020(long numberOfResultQiZhi2020) {
        this.numberOfResultQiZhi2020 = numberOfResultQiZhi2020;
    }

    public Integer getResultQiZhi2020LeftTimes() {
        return resultQiZhi2020LeftTimes;
    }

    public void setResultQiZhi2020LeftTimes(Integer resultQiZhi2020LeftTimes) {
        this.resultQiZhi2020LeftTimes = resultQiZhi2020LeftTimes;
    }
}
