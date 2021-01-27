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
                    allTestResultVo.setResultQiZhi(ResultQiZhiManager.findResultByid(resultId));
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
}
