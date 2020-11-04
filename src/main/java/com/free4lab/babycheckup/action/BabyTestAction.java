package com.free4lab.babycheckup.action;


import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.vo.AllTestResultVo;
import org.apache.commons.lang.StringUtils;

/**
 * Created by Administrator on 2020/10/28
 */
public class BabyTestAction {
    private String SUCCESS = "success";
    private int babyid;
    private String ps;
    private AllTestResultVo allTestResultVo;

    public String showResultAll(){
        if(StringUtils.isBlank(ps)){
            return SUCCESS;
        }
        String[] testResultListArr = ps.split(",");
        allTestResultVo = new AllTestResultVo();
        for(int i =0; i<testResultListArr.length;i++){
            System.out.println(testResultListArr[i]);
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
                    allTestResultVo.setResult2016(ResultManager2016.findResultByid(resultId));
                    break;
                case 27:
                    allTestResultVo.setResultADHD(ResultADHDManager.findResultByid(resultId));
                    break;
                case 28:
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
            }
        }

        System.out.println(babyid);

        return SUCCESS;
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
}
