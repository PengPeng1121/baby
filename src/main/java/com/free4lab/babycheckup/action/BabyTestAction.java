package com.free4lab.babycheckup.action;


import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.free4lab.babycheckup.vo.AllTestResultVo;
import com.free4lab.babycheckup.vo.OtherResultVo;
import org.apache.commons.lang.StringUtils;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DecimalFormat;

/**
 * Created by Administrator on 2020/10/28
 */
public class BabyTestAction {
    private String SUCCESS = "success";
    private int babyid;
    private Baby baby;
    private String ps;
    private AllTestResultVo allTestResultVo;
    private OtherResultVo otherResultVo;
    /**
     * 删除标识 1 成功  0没有
     */
    private int deleteFlag;
    private int testId;
    private int resultId;

    public String showResultAll(){
        if(StringUtils.isBlank(ps)){
            return SUCCESS;
        }
        String[] testResultListArr = ps.split(",");
        allTestResultVo = new AllTestResultVo();
        otherResultVo = new OtherResultVo();
        baby = BabyManager.findById(babyid);
        for(int i =0; i<testResultListArr.length;i++){
            if(StringUtils.isBlank(testResultListArr[i])){
                continue;
            }
            String[] testResultStrArr = testResultListArr[i].split("_");
            if(testResultStrArr == null || testResultStrArr.length<2){
                continue;
            }
            int resultId = Integer.parseInt(testResultStrArr[0]);
            int testId = Integer.parseInt(testResultStrArr[1]);
            switch (testId) {
                case 19:
                    allTestResultVo.setResultCognize(ResultCognizeManager.findResultByid(resultId));
                    break;
                case 21:
                    allTestResultVo.setResultDDST(ResultDDSTManager.findResultByid(resultId));
                    break;
                case 22:
                    allTestResultVo.setResultNei(ResultNeiManager.findResultByid(resultId));
                    break;
                case 23:
                    allTestResultVo.setResultGroup(ResultGroupManager.findResultByid(resultId));
                    break;
                case 24:
                    allTestResultVo.setResultQiZhi(ResultQiZhiManager.findResultByid(resultId));
                    break;
                case 25:
                    allTestResultVo.setResultFeel(ResultFeelManager.findResultByid(resultId));
                    break;
                case 26:
                    Result2016 result2016 = ResultManager2016.findResultByid(resultId);
                    if(null != result2016){
                        Double monthage = diffDays(baby.getBirthday(),result2016.getTime());
                        BigDecimal bigDecimalScoreSport = new BigDecimal(result2016.getScoreSport()*100/monthage);
                        otherResultVo.setScoreSport(bigDecimalScoreSport.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());

                        BigDecimal bigDecimalScoreAct = new BigDecimal(result2016.getScoreAct()*100/monthage);
                        otherResultVo.setScoreAct(bigDecimalScoreAct.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());

                        BigDecimal bigDecimalScoreAdapt = new BigDecimal(result2016.getScoreAdapt()*100/monthage);
                        otherResultVo.setScoreAdapt(bigDecimalScoreAdapt.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());

                        BigDecimal bigDecimalScoreLanguage = new BigDecimal(result2016.getScoreLanguage()*100/monthage);
                        otherResultVo.setScoreLanguage(bigDecimalScoreLanguage.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());

                        BigDecimal bigDecimalScoreSocial = new BigDecimal(result2016.getScoreSocial()*100/monthage);
                        otherResultVo.setScoreSocial( bigDecimalScoreSocial.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue());
                    }
                    otherResultVo.setRecord2016(TestResultRecordManager.find(testId,resultId));
                    allTestResultVo.setResult2016(result2016);
                    break;
                case 27:
                    allTestResultVo.setResultADHD(ResultADHDManager.findResultByid(resultId));
                    break;
                case 28:
                    otherResultVo.setRecordFeel2020(TestResultRecordManager.find(testId,resultId));
                    allTestResultVo.setResultFeel2020(ResultFeel2020Manager.findResultByid(resultId));
                    break;
                case 29:
                    allTestResultVo.setResultGroup2020(ResultGroup2020Manager.findResultByid(resultId));
                    break;
                case 30:
                    allTestResultVo.setResultPhysical(ResultPhysicalManager.findResultByid(resultId));
                    break;
                case 31:
                    allTestResultVo.setResultSummary(ResultSummaryManager.findResultByid(resultId));
                    break;
                case 32:
                    allTestResultVo.setResultAllergy(ResultAllergyManager.findResultByid(resultId));
                    break;
                case 33:
                    allTestResultVo.setResultBasic1(ResultBasic1Manager.findResultByid(resultId));
                    break;
                case 34:
                    allTestResultVo.setResultBasic2(ResultBasic2Manager.findResultByid(resultId));
                    break;
                case 35:
                    allTestResultVo.setResultQiZhi2020(ResultQiZhi2020Manager.findResultByid(resultId));
                    break;
                case 36:
                    allTestResultVo.setResultTooth(ResultToothManager.findResultByid(resultId));
                    break;
                case 37:
                    allTestResultVo.setResultFeed(ResultFeedManager.findResultByid(resultId));
                    break;
                case 38:
                    allTestResultVo.setResultPlan(ResultPlanManager.findResultByid(resultId));
                    break;
                case 39:
                    allTestResultVo.setResultBless(ResultBlessManager.findResultByid(resultId));
                    break;
                case 40:
                    allTestResultVo.setResultRear(ResultRearManager.findResultByid(resultId));
                    break;
                case 41:
                    allTestResultVo.setResultEye(ResultEyeManager.findResultByid(resultId));
                    break;
                case 42:
                    allTestResultVo.setResultEar(ResultEarManager.findResultByid(resultId));
                    break;
                case 43:
                    allTestResultVo.setResultBMD(ResultBMDManager.findResultByid(resultId));
                    break;
                case 44:
                    allTestResultVo.setResultBlood(ResultBloodManager.findResultByid(resultId));
                    break;
                case 45:
                    allTestResultVo.setResultMicro(ResultMicroManager.findResultByid(resultId));
                    break;
                case 46:
                    allTestResultVo.setResultBone(ResultBoneManager.findResultByid(resultId));
                    break;
                case 47:
                    allTestResultVo.setResultUrine(ResultUrineManager.findResultByid(resultId));
                    break;
                case 48:
                    allTestResultVo.setResultHbs(ResultHbsManager.findResultByid(resultId));
                    break;
                case 49:
                    allTestResultVo.setResultFastAllergy(ResultFastAllergyManager.findResultByid(resultId));
                    break;
                case 50:
                    allTestResultVo.setResultFoodAllergy(ResultFoodAllergyManager.findResultByid(resultId));
                    break;
                case 51:
                    allTestResultVo.setResultBloodType(ResultBloodTypeManager.findResultByid(resultId));
                    break;
                case 52:
                    allTestResultVo.setResultAttention(ResultAttentionManager.findResultByid(resultId));
                    break;
                case 53:
                    allTestResultVo.setResultECG(ResultEcgManager.findResultByid(resultId));
                    break;
                case 54:
                    allTestResultVo.setResultTooth20(ResultTooth20Manager.findResultByid(resultId));
                    break;
            }
        }
        return SUCCESS;
    }


    /**
     * 删除
     * @return
     */
    public String delTest(){
        baby = BabyManager.findById(babyid);
        if(null == baby){
            return "fail";
        }
        switch (testId) {
            case 19:
                ResultCognize resultCognize = ResultCognizeManager.findResultByid(resultId);
                if(resultCognize != null && resultCognize.getBabyId() == babyid){
                    ResultCognizeManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 21:
                ResultDDST resultDDST = ResultDDSTManager.findResultByid(resultId);
                if(resultDDST != null && resultDDST.getBabyId() == babyid){
                    ResultDDSTManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 22:
                ResultNei resultNei = ResultNeiManager.findResultByid(resultId);
                if(resultNei != null && resultNei.getBabyId() == babyid){
                    ResultNeiManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 23:
                ResultGroup resultGroup = ResultGroupManager.findResultByid(resultId);
                if(resultGroup != null && resultGroup.getBabyId() == babyid){
                    ResultGroupManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 24:
                ResultQiZhi resultQiZhi = ResultQiZhiManager.findResultByid(resultId);
                if(resultQiZhi != null && resultQiZhi.getBabyId() == babyid){
                    ResultQiZhiManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 25:
                ResultFeel resultFeel = ResultFeelManager.findResultByid(resultId);
                if(resultFeel != null && resultFeel.getBabyId() == babyid){
                    ResultFeelManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 26:
                Result2016 result2016 = ResultManager2016.findResultByid(resultId);
                if(result2016 != null && result2016.getBabyid() == babyid){
                    ResultManager2016.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 27:
                ResultADHD resultADHD = ResultADHDManager.findResultByid(resultId);
                if(resultADHD != null && resultADHD.getBabyId() == babyid){
                    ResultADHDManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 28:
                ResultFeel2020 resultFeel2020 = ResultFeel2020Manager.findResultByid(resultId);
                if(resultFeel2020 != null && resultFeel2020.getBabyId() == babyid){
                    ResultFeel2020Manager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 29:
                ResultGroup2020 resultGroup2020 = ResultGroup2020Manager.findResultByid(resultId);
                if(resultGroup2020 != null && resultGroup2020.getBabyId() == babyid){
                    ResultGroup2020Manager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 30:
                ResultPhysical resultPhysical = ResultPhysicalManager.findResultByid(resultId);
                if(resultPhysical != null && resultPhysical.getBabyId() == babyid){
                    ResultPhysicalManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 31:
                ResultSummary resultSummary = ResultSummaryManager.findResultByid(resultId);
                if(resultSummary != null && resultSummary.getBabyId() == babyid){
                    ResultSummaryManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 32:
                ResultAllergy resultAllergy = ResultAllergyManager.findResultByid(resultId);
                if(resultAllergy != null && resultAllergy.getBabyId() == babyid){
                    ResultAllergyManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 33:
                ResultBasic1 resultBasic1 = ResultBasic1Manager.findResultByid(resultId);
                if(resultBasic1 != null && resultBasic1.getBabyId() == babyid){
                    ResultBasic1Manager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 34:
                ResultBasic2 resultBasic2 = ResultBasic2Manager.findResultByid(resultId);
                if(resultBasic2 != null && resultBasic2.getBabyId() == babyid){
                    ResultBasic2Manager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 35:
                ResultQiZhi2020 resultQiZhi2020 = ResultQiZhi2020Manager.findResultByid(resultId);
                if(resultQiZhi2020 != null && resultQiZhi2020.getBabyId() == babyid){
                    ResultQiZhi2020Manager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 36:
                ResultTooth resultTooth = ResultToothManager.findResultByid(resultId);
                if(resultTooth != null && resultTooth.getBabyId() == babyid){
                    ResultToothManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 37:
                ResultFeed resultFeed = ResultFeedManager.findResultByid(resultId);
                if(resultFeed != null && resultFeed.getBabyId() == babyid){
                    ResultFeedManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 38:
                ResultPlan resultPlan = ResultPlanManager.findResultByid(resultId);
                if(resultPlan != null && resultPlan.getBabyId() == babyid){
                    ResultPlanManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 39:
                ResultBless resultBless = ResultBlessManager.findResultByid(resultId);
                if(resultBless != null && resultBless.getBabyId() == babyid){
                    ResultBlessManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 40:
                ResultRear resultRear = ResultRearManager.findResultByid(resultId);
                if(resultRear != null && resultRear.getBabyId() == babyid){
                    ResultRearManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 41:
                ResultEye resultEye = ResultEyeManager.findResultByid(resultId);
                if(resultEye != null && resultEye.getBabyId() == babyid){
                    ResultEyeManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 42:
                ResultEar resultEar = ResultEarManager.findResultByid(resultId);
                if(resultEar != null && resultEar.getBabyId() == babyid){
                    ResultEarManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 43:
                ResultBMD resultBMD = ResultBMDManager.findResultByid(resultId);
                if(resultBMD != null && resultBMD.getBabyId() == babyid){
                    ResultBMDManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 44:
                ResultBlood resultBlood = ResultBloodManager.findResultByid(resultId);
                if(resultBlood != null && resultBlood.getBabyId() == babyid){
                    ResultBloodManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 45:
                  ResultMicro resultMicro = ResultMicroManager.findResultByid(resultId);
                  if(resultMicro != null && resultMicro.getBabyId() == babyid){
                      ResultMicroManager.deleteResult(resultId);
                      BabyTestRecordManager.delete(testId,resultId,babyid);
                  }
                break;
            case 46:
                ResultBone resultBone = ResultBoneManager.findResultByid(resultId);
                if(resultBone != null && resultBone.getBabyId() == babyid){
                    ResultBoneManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 47:
                ResultUrine resultUrine = ResultUrineManager.findResultByid(resultId);
                if(resultUrine != null && resultUrine.getBabyId() == babyid){
                    ResultUrineManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 48:
                ResultHbs resultHbs = ResultHbsManager.findResultByid(resultId);
                if(resultHbs != null && resultHbs.getBabyId() == babyid){
                    ResultHbsManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 49:
                ResultFastAllergy resultFastAllergy = ResultFastAllergyManager.findResultByid(resultId);
                if(resultFastAllergy != null && resultFastAllergy.getBabyId() == babyid){
                    ResultFastAllergyManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 50:
                ResultFoodAllergy resultFoodAllergy = ResultFoodAllergyManager.findResultByid(resultId);
                if(resultFoodAllergy != null && resultFoodAllergy.getBabyId() == babyid){
                    ResultFoodAllergyManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 51:
                ResultBloodType resultBloodType = ResultBloodTypeManager.findResultByid(resultId);
                if(resultBloodType != null && resultBloodType.getBabyId() == babyid){
                    ResultBloodTypeManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 52:
                ResultAttention resultAttention = ResultAttentionManager.findResultByid(resultId);
                if(resultAttention != null && resultAttention.getBabyId() == babyid){
                    ResultAttentionManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 53:
                ResultEcg resultEcg = ResultEcgManager.findResultByid(resultId);
                if(resultEcg != null && resultEcg.getBabyId() == babyid){
                    ResultEcgManager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
            case 54:
                ResultTooth20 resultTooth20 = ResultTooth20Manager.findResultByid(resultId);
                if(resultTooth20 != null && resultTooth20.getBabyId() == babyid){
                    ResultTooth20Manager.deleteResult(resultId);
                    BabyTestRecordManager.delete(testId,resultId,babyid);
                }
                break;
        }
        return SUCCESS;
    }

    public Double diffDays(Date d1, Timestamp d2){
        DecimalFormat df=new DecimalFormat("0.0");
        return Double.parseDouble(df.format((float)(d2.getTime()-d1.getTime())/(1000*3600*24)/30.4));
    }

    public Baby getBaby() {
        return baby;
    }

    public void setBaby(Baby baby) {
        this.baby = baby;
    }

    public int getBabyid() {
        return babyid;
    }

    public void setBabyid(int babyid) {
        this.babyid = babyid;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps;
    }

    public AllTestResultVo getAllTestResultVo() {
        return allTestResultVo;
    }

    public void setAllTestResultVo(AllTestResultVo allTestResultVo) {
        this.allTestResultVo = allTestResultVo;
    }

    public OtherResultVo getOtherResultVo() {
        return otherResultVo;
    }

    public void setOtherResultVo(OtherResultVo otherResultVo) {
        this.otherResultVo = otherResultVo;
    }

    public int getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(int deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }
}
