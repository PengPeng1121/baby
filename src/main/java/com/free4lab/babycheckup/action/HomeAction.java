package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
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
    private long numberOfResultTooth;
    private long numberOfResultFeed;
    private long numberOfResultPlan;
    private long numberOfResultBless;
    private long numberOfResultRear;
    private long numberOfResultEye;
    private long numberOfResultEar;
    private long numberOfResultBMD;
    private long numberOfResultBlood;
    private long numberOfResultBone;
    private long numberOfResultUrine;
    private long numberOfResultMicro;
    private long numberOfResultFastAllergy;
    private long numberOfResultFoodAllergy;
    private long numberOfResultHBs;
    private long numberOfResultBloodType;
    private long numberOfResultAttention;
    private long numberOfResultECG;
    private long numberOfResultTooth20;
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
    private Integer resultToothLeftTimes;
    private Integer resultFeedLeftTimes;
    private Integer resultPlanLeftTimes;
    private Integer resultBlessLeftTimes;
    private Integer resultRearLeftTimes;
    private Integer resultEyeLeftTimes;
    private Integer resultEarLeftTimes;
    private Integer resultBMDLeftTimes;
    private Integer resultBloodLeftTimes;
    private Integer resultBoneLeftTimes;
    private Integer resultUrineLeftTimes;
    private Integer resultMicroLeftTimes;
    private Integer resultHBsLeftTimes;
    private Integer resultFastAllergyLeftTimes;
    private Integer resultFoodAllergyLeftTimes;
    private Integer resultBloodTypeLeftTimes;
    private Integer resultAttentionLeftTimes;
    private Integer resultECGLeftTimes;
    private Integer resultTooth20LeftTimes;
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
        numberOfResultTooth = ResultToothManager.countResultByHosIdAndTestId(hoid,36);
        numberOfResultFeed = ResultFeedManager.countResultByHosIdAndTestId(hoid,37);
        numberOfResultPlan = ResultPlanManager.countResultByHosIdAndTestId(hoid,38);
        numberOfResultBless = ResultBlessManager.countResultByHosIdAndTestId(hoid,39);
        numberOfResultRear = ResultRearManager.countResultByHosIdAndTestId(hoid,40);
        numberOfResultEye = ResultEyeManager.countResultByHosIdAndTestId(hoid,41);
        numberOfResultEar = ResultEarManager.countResultByHosIdAndTestId(hoid,42);
        numberOfResultBMD = ResultBMDManager.countResultByHosIdAndTestId(hoid,43);
        numberOfResultBlood = ResultBloodManager.countResultByHosIdAndTestId(hoid,44);
        numberOfResultMicro = ResultMicroManager.countResultByHosIdAndTestId(hoid,45);
        numberOfResultBone = ResultBoneManager.countResultByHosIdAndTestId(hoid,46);
        numberOfResultUrine = ResultUrineManager.countResultByHosIdAndTestId(hoid,47);
        numberOfResultHBs = ResultHbsManager.countResultByHosIdAndTestId(hoid,48);
        numberOfResultFastAllergy = ResultFastAllergyManager.countResultByHosIdAndTestId(hoid,49);
        numberOfResultFoodAllergy = ResultFoodAllergyManager.countResultByHosIdAndTestId(hoid,50);
        numberOfResultBloodType = ResultBloodTypeManager.countResultByHosIdAndTestId(hoid,51);
        numberOfResultAttention = ResultAttentionManager.countResultByHosIdAndTestId(hoid,52);
        numberOfResultECG = ResultEcgManager.countResultByHosIdAndTestId(hoid,53);
        numberOfResultTooth20 = ResultTooth20Manager.countResultByHosIdAndTestId(hoid,54);
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
                        case 36:
                            resultToothLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 37:
                            resultFeedLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 38:
                            resultPlanLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 39:
                            resultBlessLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 40:
                            resultRearLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 41:
                            resultEyeLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 42:
                            resultEarLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 43:
                            resultBMDLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 44:
                            resultBloodLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 45:
                            resultMicroLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 46:
                            resultBoneLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 47:
                            resultUrineLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 48:
                            resultHBsLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 49:
                            resultFastAllergyLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 50:
                            resultFoodAllergyLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 51:
                            resultBloodTypeLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 52:
                            resultAttentionLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 53:
                            resultECGLeftTimes = hospitalTestTimes.getLeftTimes();
                            break;
                        case 54:
                            resultTooth20LeftTimes = hospitalTestTimes.getLeftTimes();
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

    public long getNumberOfResultTooth() {
        return numberOfResultTooth;
    }

    public void setNumberOfResultTooth(long numberOfResultTooth) {
        this.numberOfResultTooth = numberOfResultTooth;
    }

    public Integer getResultToothLeftTimes() {
        return resultToothLeftTimes;
    }

    public void setResultToothLeftTimes(Integer resultToothLeftTimes) {
        this.resultToothLeftTimes = resultToothLeftTimes;
    }

    public long getNumberOfResultFeed() {
        return numberOfResultFeed;
    }

    public void setNumberOfResultFeed(long numberOfResultFeed) {
        this.numberOfResultFeed = numberOfResultFeed;
    }

    public Integer getResultFeedLeftTimes() {
        return resultFeedLeftTimes;
    }

    public void setResultFeedLeftTimes(Integer resultFeedLeftTimes) {
        this.resultFeedLeftTimes = resultFeedLeftTimes;
    }

    public long getNumberOfResultPlan() {
        return numberOfResultPlan;
    }

    public void setNumberOfResultPlan(long numberOfResultPlan) {
        this.numberOfResultPlan = numberOfResultPlan;
    }

    public long getNumberOfResultBless() {
        return numberOfResultBless;
    }

    public void setNumberOfResultBless(long numberOfResultBless) {
        this.numberOfResultBless = numberOfResultBless;
    }

    public Integer getResultPlanLeftTimes() {
        return resultPlanLeftTimes;
    }

    public void setResultPlanLeftTimes(Integer resultPlanLeftTimes) {
        this.resultPlanLeftTimes = resultPlanLeftTimes;
    }

    public Integer getResultBlessLeftTimes() {
        return resultBlessLeftTimes;
    }

    public void setResultBlessLeftTimes(Integer resultBlessLeftTimes) {
        this.resultBlessLeftTimes = resultBlessLeftTimes;
    }

    public long getNumberOfResultRear() {
        return numberOfResultRear;
    }

    public void setNumberOfResultRear(long numberOfResultRear) {
        this.numberOfResultRear = numberOfResultRear;
    }

    public Integer getResultRearLeftTimes() {
        return resultRearLeftTimes;
    }

    public void setResultRearLeftTimes(Integer resultRearLeftTimes) {
        this.resultRearLeftTimes = resultRearLeftTimes;
    }

    public long getNumberOfResultEye() {
        return numberOfResultEye;
    }

    public void setNumberOfResultEye(long numberOfResultEye) {
        this.numberOfResultEye = numberOfResultEye;
    }

    public Integer getResultEyeLeftTimes() {
        return resultEyeLeftTimes;
    }

    public void setResultEyeLeftTimes(Integer resultEyeLeftTimes) {
        this.resultEyeLeftTimes = resultEyeLeftTimes;
    }

    public long getNumberOfResultEar() {
        return numberOfResultEar;
    }

    public void setNumberOfResultEar(long numberOfResultEar) {
        this.numberOfResultEar = numberOfResultEar;
    }

    public long getNumberOfResultBMD() {
        return numberOfResultBMD;
    }

    public void setNumberOfResultBMD(long numberOfResultBMD) {
        this.numberOfResultBMD = numberOfResultBMD;
    }

    public Integer getResultEarLeftTimes() {
        return resultEarLeftTimes;
    }

    public void setResultEarLeftTimes(Integer resultEarLeftTimes) {
        this.resultEarLeftTimes = resultEarLeftTimes;
    }

    public Integer getResultBMDLeftTimes() {
        return resultBMDLeftTimes;
    }

    public void setResultBMDLeftTimes(Integer resultBMDLeftTimes) {
        this.resultBMDLeftTimes = resultBMDLeftTimes;
    }

    public long getNumberOfResultBlood() {
        return numberOfResultBlood;
    }

    public void setNumberOfResultBlood(long numberOfResultBlood) {
        this.numberOfResultBlood = numberOfResultBlood;
    }

    public long getNumberOfResultBone() {
        return numberOfResultBone;
    }

    public void setNumberOfResultBone(long numberOfResultBone) {
        this.numberOfResultBone = numberOfResultBone;
    }

    public long getNumberOfResultUrine() {
        return numberOfResultUrine;
    }

    public void setNumberOfResultUrine(long numberOfResultUrine) {
        this.numberOfResultUrine = numberOfResultUrine;
    }

    public long getNumberOfResultMicro() {
        return numberOfResultMicro;
    }

    public void setNumberOfResultMicro(long numberOfResultMicro) {
        this.numberOfResultMicro = numberOfResultMicro;
    }

    public long getNumberOfResultFastAllergy() {
        return numberOfResultFastAllergy;
    }

    public void setNumberOfResultFastAllergy(long numberOfResultFastAllergy) {
        this.numberOfResultFastAllergy = numberOfResultFastAllergy;
    }

    public long getNumberOfResultFoodAllergy() {
        return numberOfResultFoodAllergy;
    }

    public void setNumberOfResultFoodAllergy(long numberOfResultFoodAllergy) {
        this.numberOfResultFoodAllergy = numberOfResultFoodAllergy;
    }

    public long getNumberOfResultBloodType() {
        return numberOfResultBloodType;
    }

    public void setNumberOfResultBloodType(long numberOfResultBloodType) {
        this.numberOfResultBloodType = numberOfResultBloodType;
    }

    public Integer getResultBloodLeftTimes() {
        return resultBloodLeftTimes;
    }

    public void setResultBloodLeftTimes(Integer resultBloodLeftTimes) {
        this.resultBloodLeftTimes = resultBloodLeftTimes;
    }

    public Integer getResultBoneLeftTimes() {
        return resultBoneLeftTimes;
    }

    public void setResultBoneLeftTimes(Integer resultBoneLeftTimes) {
        this.resultBoneLeftTimes = resultBoneLeftTimes;
    }

    public Integer getResultUrineLeftTimes() {
        return resultUrineLeftTimes;
    }

    public void setResultUrineLeftTimes(Integer resultUrineLeftTimes) {
        this.resultUrineLeftTimes = resultUrineLeftTimes;
    }

    public Integer getResultMicroLeftTimes() {
        return resultMicroLeftTimes;
    }

    public void setResultMicroLeftTimes(Integer resultMicroLeftTimes) {
        this.resultMicroLeftTimes = resultMicroLeftTimes;
    }

    public long getNumberOfResultHBs() {
        return numberOfResultHBs;
    }

    public void setNumberOfResultHBs(long numberOfResultHBs) {
        this.numberOfResultHBs = numberOfResultHBs;
    }

    public Integer getResultHBsLeftTimes() {
        return resultHBsLeftTimes;
    }

    public void setResultHBsLeftTimes(Integer resultHBsLeftTimes) {
        this.resultHBsLeftTimes = resultHBsLeftTimes;
    }

    public Integer getResultFastAllergyLeftTimes() {
        return resultFastAllergyLeftTimes;
    }

    public void setResultFastAllergyLeftTimes(Integer resultFastAllergyLeftTimes) {
        this.resultFastAllergyLeftTimes = resultFastAllergyLeftTimes;
    }

    public Integer getResultFoodAllergyLeftTimes() {
        return resultFoodAllergyLeftTimes;
    }

    public void setResultFoodAllergyLeftTimes(Integer resultFoodAllergyLeftTimes) {
        this.resultFoodAllergyLeftTimes = resultFoodAllergyLeftTimes;
    }

    public Integer getResultBloodTypeLeftTimes() {
        return resultBloodTypeLeftTimes;
    }

    public void setResultBloodTypeLeftTimes(Integer resultBloodTypeLeftTimes) {
        this.resultBloodTypeLeftTimes = resultBloodTypeLeftTimes;
    }

    public long getNumberOfResultAttention() {
        return numberOfResultAttention;
    }

    public void setNumberOfResultAttention(long numberOfResultAttention) {
        this.numberOfResultAttention = numberOfResultAttention;
    }

    public Integer getResultAttentionLeftTimes() {
        return resultAttentionLeftTimes;
    }

    public void setResultAttentionLeftTimes(Integer resultAttentionLeftTimes) {
        this.resultAttentionLeftTimes = resultAttentionLeftTimes;
    }

    public long getNumberOfResultECG() {
        return numberOfResultECG;
    }

    public void setNumberOfResultECG(long numberOfResultECG) {
        this.numberOfResultECG = numberOfResultECG;
    }

    public Integer getResultECGLeftTimes() {
        return resultECGLeftTimes;
    }

    public void setResultECGLeftTimes(Integer resultECGLeftTimes) {
        this.resultECGLeftTimes = resultECGLeftTimes;
    }

    public long getNumberOfResultTooth20() {
        return numberOfResultTooth20;
    }

    public void setNumberOfResultTooth20(long numberOfResultTooth20) {
        this.numberOfResultTooth20 = numberOfResultTooth20;
    }

    public Integer getResultTooth20LeftTimes() {
        return resultTooth20LeftTimes;
    }

    public void setResultTooth20LeftTimes(Integer resultTooth20LeftTimes) {
        this.resultTooth20LeftTimes = resultTooth20LeftTimes;
    }
}
