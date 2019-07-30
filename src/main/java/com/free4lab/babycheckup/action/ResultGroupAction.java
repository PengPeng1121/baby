package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.vo.GroupBabyInfo;
import com.free4lab.babycheckup.vo.GroupBasicInfo;
import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import com.pp.common.constant.util.ExactAgeUtil;
import org.apache.commons.lang3.StringUtils;
import org.hsqldb.lib.StringUtil;
import org.springframework.util.CollectionUtils;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/6/29.
 */
public class ResultGroupAction {
    //显示的范围
    private final static Integer RANGE = 30;

    private Baby baby;
    private int id;
    private ResultGroup resultGroup;
    private String SUCCESS = "success";
    private String stime;//检查日期
    private Hospital hospital;
    private String days;
    private String exactAge;
    private Integer babyId;
    private int resultId;
    //儿童测试历史 返回
    private GroupBabyInfo groupBabyInfo;
    //儿童测试基础数据 返回
    private GroupBasicInfo groupBasicInfo;

    //身高别年龄描述
    private String resultTextHA;
    //体重别年龄描述
    private String resultTextWA;
    //身高别体重描述
    private String resultTextWH;
    //身高别体重描述
    private String resultTextWHO;
    //bmi结果描述
    private String resultTextBMI;
    //头围
    private String resultTextHEAD;
    //Z得分身高/年龄
    private String resultTextZHA;
    //Z得分 身高/体重
    private String resultTextZHW;
    //展示bmi统计图 0 不展示 1 展示
    private String showBMI;
    //展示头围统计图 0 不展示 1 展示
    private String showHead;

    //结果页展示方法
    public String showResultGroup() {
        resultGroup = ResultGroupManager.findResultByid(id);
        baby = BabyManager.findById(resultGroup.getBabyId());
        stime = new  SimpleDateFormat("yyyy-MM-dd").format(resultGroup.getTime());
        days = Math.round((differentDays(baby.getBirthday(),new Date()))/30.4)+"";
        Double babyMonthAgeDouble = Double.parseDouble(days);
        Integer babyMonthAge = babyMonthAgeDouble.intValue();//当前月龄
        int sexType = baby.getGender();
        //根据年龄判断 读那个类型数据  0-7岁 读取 dataType = 0  7-18读取dataType =1
        Integer dataType = 0;
        if(babyMonthAge>83){
            dataType = 1;
            //因为2005版没有 l s m 所以大年龄段的用2005年的！没有办法计算Z
            resultTextZHA = "0";
            resultTextZHW = "0";
            resultTextHEAD = "0";
            showHead = "0";
        }else {
            resultTextZHA = _getZValueHA(resultGroup.getHeight(),days,sexType);
            resultTextZHW = _getZValueHW(resultGroup.getHeight(),sexType);

            if(!StringUtil.isEmpty(resultGroup.getHead())){
                resultTextHEAD = _getHead(days,sexType,dataType,Double.parseDouble(resultGroup.getHead()));
                showHead =" 1";
            }else {
                resultTextHEAD = "0";
                showHead = "0";
            }
        }
        resultTextHA = _getHA(days,sexType,dataType,Double.parseDouble(resultGroup.getHeight()));
        resultTextWA = _getWA(days,sexType,dataType,Double.parseDouble(resultGroup.getWeight()));
        resultTextWH = _getWH(resultGroup.getHeight(),sexType,dataType,Double.parseDouble(resultGroup.getWeight()));
        if(!StringUtil.isEmpty(resultGroup.getBmi())) {
            resultTextBMI = _getBMI(days, sexType, dataType, Double.parseDouble(resultGroup.getBmi()));
            showBMI = "1";
        }else {
            resultTextBMI = "";
            showBMI = "0";
        }
        resultTextWHO = _getWHO(resultGroup.getHeight(),sexType,Double.parseDouble(resultGroup.getWeight()));

        //实足年龄
        Calendar calendarTestTime = Calendar.getInstance();
        calendarTestTime.setTime(resultGroup.getTime());//检测时间

        Calendar calendarBirthday = Calendar.getInstance();
        calendarBirthday.setTime(baby.getBirthday());
        int[] timeArray = ExactAgeUtil.getNatureAge(calendarBirthday,calendarTestTime);
        exactAge = String.valueOf(timeArray[0])+"岁"+String.valueOf(timeArray[1])+"月"+String.valueOf(timeArray[2])+"日";

        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    //查询儿童测试历史
    public String groupBabyInfo(){
        //根据babyId 获取该测评
        List<ResultGroup> resultGroups = ResultGroupManager.findResultBybid(babyId);
        GroupBabyInfo groupBabyInfoHistory = new GroupBabyInfo();
        if(!CollectionUtils.isEmpty(resultGroups)){
            Double[][] babyHA = new Double[resultGroups.size()][2];
            Double[][] babyWA = new Double[resultGroups.size()][2];
            Double[][] babyWH = new Double[resultGroups.size()][2];
            Double[][] babyWHO = new Double[resultGroups.size()][2];
            Double[][] babyBMI = new Double[resultGroups.size()][2];
            Double[][] babyHead = new Double[resultGroups.size()][2];
            int m =0;
            int n =0;
            for (int i=0;i<resultGroups.size();i++){
                ResultGroup group = resultGroups.get(i);
                //HA
                babyHA[i][0] = Double.parseDouble(group.getBabyMonthAge());
                babyHA[i][1] = Double.parseDouble(group.getHeight());
                //WA
                babyWA[i][0] = Double.parseDouble(group.getBabyMonthAge());
                babyWA[i][1] = Double.parseDouble(group.getWeight());
                //WH
                babyWH[i][0] = Double.parseDouble(group.getHeight());
                babyWH[i][1] = Double.parseDouble(group.getWeight());
                //BMI
                if(StringUtils.isNotBlank(group.getBmi())) {
                    babyBMI[m][0] = Double.parseDouble(group.getBabyMonthAge());
                    babyBMI[m][1] = Double.parseDouble(group.getBmi());
                    m++;
                }
                //WH
                babyWHO[i][0] = Double.parseDouble(group.getHeight());
                babyWHO[i][1] = Double.parseDouble(group.getWeight());

                if(StringUtils.isNotBlank(group.getHead())){
                    //Head
                    babyHead[n][0] = Double.parseDouble(group.getBabyMonthAge());
                    babyHead[n][1] = Double.parseDouble(group.getHead());
                    n++;
                }
            }
            groupBabyInfoHistory.setBabyHA(babyHA);
            groupBabyInfoHistory.setBabyWA(babyWA);
            groupBabyInfoHistory.setBabyWH(babyWH);
            if(babyBMI.length>0 && babyBMI[0][0]!=null){
                groupBabyInfoHistory.setBabyBMI(babyBMI);
            }

            groupBabyInfoHistory.setBabyWHO(babyWHO);
            if(babyHead.length>0 && babyHead[0][0]!=null){
                groupBabyInfoHistory.setBabyHead(babyHead);
            }

        }
        groupBabyInfo = groupBabyInfoHistory;
        return SUCCESS;
    }

    //查询基础数据
    public String groupBasicInfo(){
        GroupBasicInfo basicInfo = new GroupBasicInfo();
        //查询 儿童
        baby = BabyManager.findById(babyId);
        Double babyMonthAgeDouble = (differentDays(baby.getBirthday(),new Date()))/30.4;
        Integer babyMonthAge = babyMonthAgeDouble.intValue();//当前月龄
        int sexType = baby.getGender();
        //根据年龄判断 读那个类型数据  0-7岁 读取 dataType = 0  7-18读取dataType =1
        Integer dataType = 0;
        if(babyMonthAge>83){
            dataType = 1;
        }
        Integer rangeArray[] = _getRangeByMonthAge(babyMonthAge);
        //身高别年龄
        List<GrowthAndDevelopment> developmentsHA = GrowthAndDevelopmentManager.findConstantsByCondition(rangeArray[0].toString(),rangeArray[1].toString(),2,sexType,dataType);
        if(!CollectionUtils.isEmpty(developmentsHA)){
            Double[][] basicHA3 = new Double[developmentsHA.size()][2];
            Double[][] basicHA50 = new Double[developmentsHA.size()][2];
            Double[][] basicHA97 = new Double[developmentsHA.size()][2];
            for(int i =0;i<developmentsHA.size();i++){
                GrowthAndDevelopment constant = developmentsHA.get(i);
                //HA3
                basicHA3[i][0] = Double.parseDouble(constant.getConstantValue());
                basicHA3[i][1] = Double.parseDouble(constant.getValue3());
                //HA50
                basicHA50[i][0] = Double.parseDouble(constant.getConstantValue());
                basicHA50[i][1] = Double.parseDouble(constant.getValue50());
                //HA95
                basicHA97[i][0] = Double.parseDouble(constant.getConstantValue());
                basicHA97[i][1] = Double.parseDouble(constant.getValue97());
            }
            basicInfo.setBasicHA3(basicHA3);
            basicInfo.setBasicHA50(basicHA50);
            basicInfo.setBasicHA97(basicHA97);
        }
        //体重别年龄
        List<GrowthAndDevelopment> developmentsWA = GrowthAndDevelopmentManager.findConstantsByCondition(rangeArray[0].toString(),rangeArray[1].toString(),3,sexType,dataType);
        if(!CollectionUtils.isEmpty(developmentsWA)){
            Double[][] basicWA3 = new Double[developmentsWA.size()][2];
            Double[][] basicWA50 = new Double[developmentsWA.size()][2];
            Double[][] basicWA97 = new Double[developmentsWA.size()][2];
            for(int i =0;i<developmentsWA.size();i++){
                GrowthAndDevelopment constant = developmentsWA.get(i);
                //WA3
                basicWA3[i][0] = Double.parseDouble(constant.getConstantValue());
                basicWA3[i][1] = Double.parseDouble(constant.getValue3());
                //WA50
                basicWA50[i][0] = Double.parseDouble(constant.getConstantValue());
                basicWA50[i][1] = Double.parseDouble(constant.getValue50());
                //WA97
                basicWA97[i][0] = Double.parseDouble(constant.getConstantValue());
                basicWA97[i][1] = Double.parseDouble(constant.getValue97());
            }
            basicInfo.setBasicWA3(basicWA3);
            basicInfo.setBasicWA50(basicWA50);
            basicInfo.setBasicWA97(basicWA97);
        }
        ResultGroup currentGroup = ResultGroupManager.findResultByid(resultId);
        //身高别体重
        Double beginValue = Double.parseDouble(currentGroup.getHeight()) - RANGE;
        Double endValue = Double.parseDouble(currentGroup.getHeight()) + RANGE;
        List<GrowthAndDevelopment> developmentsWH = GrowthAndDevelopmentManager.findConstantsByCondition(beginValue.toString(),endValue.toString(),4,sexType,dataType);
        if(!CollectionUtils.isEmpty(developmentsWH)){
            Double[][] basicWH3 = new Double[developmentsWH.size()][2];
            Double[][] basicWH50 = new Double[developmentsWH.size()][2];
            Double[][] basicWH97 = new Double[developmentsWH.size()][2];
            for(int i =0;i<developmentsWH.size();i++){
                GrowthAndDevelopment constant = developmentsWH.get(i);
                //WA3
                basicWH3[i][0] = Double.parseDouble(constant.getConstantValue());
                basicWH3[i][1] = Double.parseDouble(constant.getValue3());
                //WA50
                basicWH50[i][0] = Double.parseDouble(constant.getConstantValue());
                basicWH50[i][1] = Double.parseDouble(constant.getValue50());
                //WA95
                basicWH97[i][0] = Double.parseDouble(constant.getConstantValue());
                basicWH97[i][1] = Double.parseDouble(constant.getValue97());
            }
            basicInfo.setBasicWH3(basicWH3);
            basicInfo.setBasicWH50(basicWH50);
            basicInfo.setBasicWH97(basicWH97);
        }
        //BMI
        List<GrowthAndDevelopment> developmentsBMI = GrowthAndDevelopmentManager.findConstantsByCondition(rangeArray[0].toString(),rangeArray[1].toString(),1,sexType,dataType);
        if(!CollectionUtils.isEmpty(developmentsBMI)){
            Double[][] basicBMI3 = new Double[developmentsBMI.size()][2];
            Double[][] basicBMI50 = new Double[developmentsBMI.size()][2];
            Double[][] basicBMI97 = new Double[developmentsBMI.size()][2];
            for(int i =0;i<developmentsBMI.size();i++){
                GrowthAndDevelopment constant = developmentsBMI.get(i);
                //WA3
                basicBMI3[i][0] = Double.parseDouble(constant.getConstantValue());
                basicBMI3[i][1] = Double.parseDouble(constant.getValue3());
                //WA50
                basicBMI50[i][0] = Double.parseDouble(constant.getConstantValue());
                basicBMI50[i][1] = Double.parseDouble(constant.getValue50());
                //WA95
                basicBMI97[i][0] = Double.parseDouble(constant.getConstantValue());
                basicBMI97[i][1] = Double.parseDouble(constant.getValue97());
            }
            basicInfo.setBasicBMI3(basicBMI3);
            basicInfo.setBasicBMI50(basicBMI50);
            basicInfo.setBasicBMI97(basicBMI97);
        }
        //头尾
        List<GrowthAndDevelopment> developmentsHead = GrowthAndDevelopmentManager.findConstantsByCondition(rangeArray[0].toString(),rangeArray[1].toString(),5,sexType,dataType);
        if(!CollectionUtils.isEmpty(developmentsHead)){
            Double[][] basicHead3 = new Double[developmentsHead.size()][2];
            Double[][] basicHead50 = new Double[developmentsHead.size()][2];
            Double[][] basicHead97 = new Double[developmentsHead.size()][2];
            for(int i =0;i<developmentsHead.size();i++){
                GrowthAndDevelopment constant = developmentsHead.get(i);
                //head3
                basicHead3[i][0] = Double.parseDouble(constant.getConstantValue());
                basicHead3[i][1] = Double.parseDouble(constant.getValue3());
                //head50
                basicHead50[i][0] = Double.parseDouble(constant.getConstantValue());
                basicHead50[i][1] = Double.parseDouble(constant.getValue50());
                //head95
                basicHead97[i][0] = Double.parseDouble(constant.getConstantValue());
                basicHead97[i][1] = Double.parseDouble(constant.getValue97());
            }
            basicInfo.setBasicHead3(basicHead3);
            basicInfo.setBasicHead50(basicHead50);
            basicInfo.setBasicHead97(basicHead97);
        }

        //who
        List<WhoFat> whoFats = WhoFatManager.findByHeightValueList(beginValue.toString(),endValue.toString(),sexType);
        if(!CollectionUtils.isEmpty(whoFats)){
            Double[][] basicNormal = new Double[whoFats.size()][2];//正常体重值
            Double[][] basicOverWeight = new Double[whoFats.size()][2];//超重体重值
            Double[][] basicLittle = new Double[whoFats.size()][2];//轻度体重值
            Double[][] basicMiddle = new Double[whoFats.size()][2]; //中度体重值
            Double[][] basicSerious = new Double[whoFats.size()][2];//重度体重值
            for(int i =0;i<whoFats.size();i++){
                WhoFat whoFat = whoFats.get(i);
                //正常体重值
                basicNormal[i][0] = Double.parseDouble(whoFat.getHeightValue());
                basicNormal[i][1] = Double.parseDouble(whoFat.getNormalValue());
                //超重体重值
                basicOverWeight[i][0] = Double.parseDouble(whoFat.getHeightValue());
                basicOverWeight[i][1] = Double.parseDouble(whoFat.getOverweightValue());
                //轻度体重值
                basicLittle[i][0] = Double.parseDouble(whoFat.getHeightValue());
                basicLittle[i][1] = Double.parseDouble(whoFat.getLittleFatValue());
                //中度体重值
                basicMiddle[i][0] = Double.parseDouble(whoFat.getHeightValue());
                basicMiddle[i][1] = Double.parseDouble(whoFat.getMiddleFatValue());
                //重度体重值
                basicSerious[i][0] = Double.parseDouble(whoFat.getHeightValue());
                basicSerious[i][1] = Double.parseDouble(whoFat.getSeriousFatValue());
            }
            basicInfo.setBasicNormal(basicNormal);
            basicInfo.setBasicOverWeight(basicOverWeight);
            basicInfo.setBasicLittle(basicLittle);
            basicInfo.setBasicMiddle(basicMiddle);
            basicInfo.setBasicSerious(basicSerious);
        }
        groupBasicInfo = basicInfo;
        return SUCCESS;
    }

    public int differentDays(Date d1, Date d2){
        int days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    //0~6个月、6个月~2岁、2岁~3岁、3岁~7岁、7岁~18岁   图标显示范围
    private Integer[] _getRangeByMonthAge(Integer monthAge){
        Integer[] rangeArray = new Integer[2];
        if(0<=monthAge && monthAge<6){
            rangeArray[0] = 0;
            rangeArray[1] = 5;
        }else if(6<=monthAge && monthAge<24){
            rangeArray[0] = 6;
            rangeArray[1] = 23;
        }else if(24<=monthAge && monthAge<36){
            rangeArray[0] = 24;
            rangeArray[1] = 35;
        }else if(36<=monthAge && monthAge<84){
            rangeArray[0] = 36;
            rangeArray[1] = 83;
        }else if(84<=monthAge && monthAge<=216){
            rangeArray[0] = 84;
            rangeArray[1] = 216;
        }
        return rangeArray;
    }

    //获取HA
    private String _getHA(String constant,Integer sexType,Integer dataType,Double height){
        String text =  "身高别年龄";
        GrowthAndDevelopment developmentHA = GrowthAndDevelopmentManager.findConstantByCondition(constant,2,sexType,dataType);
        if(developmentHA!=null){
            if(height<Double.parseDouble(developmentHA.getValue3())){
                text += "<3";
            }else if(height<Double.parseDouble(developmentHA.getValue50())){
                text += ">3";
            }else if(height<Double.parseDouble(developmentHA.getValue97())){
                text += ">50";
            }else {
                text += ">97";
            }
        }else {
            text = "";
        }
        return text;
    }

    //获取WA
    private String _getWA(String constant,Integer sexType,Integer dataType,Double weight){
        String text =  "体重别年龄";
        GrowthAndDevelopment developmentWA = GrowthAndDevelopmentManager.findConstantByCondition(constant,3,sexType,dataType);
        if(developmentWA!=null){
            if(weight<Double.parseDouble(developmentWA.getValue3())){
                text += "<3";
            }else if(weight<Double.parseDouble(developmentWA.getValue50())){
                text += ">3";
            }else if(weight<Double.parseDouble(developmentWA.getValue97())){
                text += ">50";
            }else {
                text += ">97";
            }
        }else {
            text = "";
        }
        return text;
    }

    //获取WH
    private String _getWH(String constant,Integer sexType,Integer dataType,Double weight){
        String text =  "身高别体重";
        GrowthAndDevelopment developmentWH = GrowthAndDevelopmentManager.findConstantByCondition(constant,4,sexType,dataType);
        if(null!=developmentWH){
            if(weight<Double.parseDouble(developmentWH.getValue3())){
                text += "<3";
            }else if(weight<Double.parseDouble(developmentWH.getValue50())){
                text += ">3";
            }else if(weight<Double.parseDouble(developmentWH.getValue97())){
                text += ">50";
            }else {
                text += ">97";
            }
        }else {
            text = "";
        }
        return text;
    }

    //获取BMI
    private String _getBMI(String constant,Integer sexType,Integer dataType,Double bmi){
        String text =  "BMI";
        GrowthAndDevelopment developmentBMI = GrowthAndDevelopmentManager.findConstantByCondition(constant,1,sexType,dataType);
        if(null != developmentBMI){
            if(bmi<Double.parseDouble(developmentBMI.getValue3())){
                text += "<3";
            }else if(bmi<Double.parseDouble(developmentBMI.getValue50())){
                text += ">3";
            }else if(bmi<Double.parseDouble(developmentBMI.getValue97())){
                text += ">50";
            }else {
                text += ">97";
            }
        }else {
            text = "";
        }
        return text;
    }

    //获取Head Z值
    private String _getHead(String constant,Integer sexType,Integer dataType,Double head){
        GrowthAndDevelopment developmentHead = GrowthAndDevelopmentManager.findConstantByCondition(constant,5,sexType,dataType);
        if(developmentHead!=null){
            try{
                Double M = Double.parseDouble(developmentHead.getValueM());
                Double L = Double.parseDouble(developmentHead.getValueL());
                Double S = Double.parseDouble(developmentHead.getValueS());
                Double value = head;
                return _calculateZ(M,L,S,value);
            }catch (Exception e){

            }
        }
        return  "0";
    }

    //获取WHO
    private String _getWHO(String constant,Integer sexType,Double weight){
        String text =  "WHO肥胖评定结果：";
        WhoFat whoFat = WhoFatManager.findByHeightValue(constant,sexType);
        if(null != whoFat){
            if(weight<Double.parseDouble(whoFat.getNormalValue())){
                text += "<正常";
            }else if(weight<Double.parseDouble(whoFat.getOverweightValue())){
                text += "正常";
            }else if(weight<Double.parseDouble(whoFat.getLittleFatValue())){
                text += "超重";
            }else if(weight<Double.parseDouble(whoFat.getMiddleFatValue())) {
                text += "轻度肥胖";
            }else if(weight<Double.parseDouble(whoFat.getSeriousFatValue())) {
                text += "重度肥胖";
            }else {
                text += "重度肥胖";
            }
        }else {
            text = "";
        }
        return text;
    }

    /**
     * 根据结果Id计算Z值
     * 身高别年龄
     * @param height
     * @param sexType
     * @return
     */
    private String _getZValueHA(String height,String days,Integer sexType){
        GrowthAndDevelopment developmentHA = GrowthAndDevelopmentManager.findConstantByCondition(days,2,sexType,0);
        if(developmentHA!=null){
            try{
                Double M = Double.parseDouble(developmentHA.getValueM());
                Double L = Double.parseDouble(developmentHA.getValueL());
                Double S = Double.parseDouble(developmentHA.getValueS());
                Double value = Double.parseDouble(height);
                return _calculateZ(M,L,S,value);
            }catch (Exception e){

            }
        }
        return  "0";
    }

    /**
     * 根据结果Id计算Z值
     * 身高别体重
     * @param height
     * @param sexType
     * @return
     */
    private String _getZValueHW(String height,Integer sexType){
        GrowthAndDevelopment developmentHA = GrowthAndDevelopmentManager.findConstantByCondition(height,4,sexType,0);
        if(developmentHA!=null){
            try{
                Double M = Double.parseDouble(developmentHA.getValueM());
                Double L = Double.parseDouble(developmentHA.getValueL());
                Double S = Double.parseDouble(developmentHA.getValueS());
                Double value = Double.parseDouble(height);
                return _calculateZ(M,L,S,value);
            }catch (Exception e){

            }
        }
        return  "0";
    }


    /**
     * 计算Z值
     * @param M
     * @param L
     * @param S
     * @param value
     * @return
     */
    private String _calculateZ(Double M,Double L,Double S,Double value){
//        Z=[（测量值/M）L-1]/（S/L）
        try{
            Double result = null;
            Double temp1 = value/M;
            Double temp2 = Math.pow(temp1,L);
            Double temp3 = temp2 - 1;
            result = temp3/S/L;

            if(result!=null){
                BigDecimal  bigDecimalResult  =  new BigDecimal(result);
                result = bigDecimalResult.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue();
                return result.toString();
            }
        }catch (Exception e){
        }
        return "0";
    }

    public Baby getBaby() {
        return baby;
    }

    public void setBaby(Baby baby) {
        this.baby = baby;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public ResultGroup getResultGroup() {
        return resultGroup;
    }

    public void setResultGroup(ResultGroup resultGroup) {
        this.resultGroup = resultGroup;
    }

    public Integer getBabyId() {
        return babyId;
    }

    public void setBabyId(Integer babyId) {
        this.babyId = babyId;
    }

    public GroupBabyInfo getGroupBabyInfo() {
        return groupBabyInfo;
    }

    public void setGroupBabyInfo(GroupBabyInfo groupBabyInfo) {
        this.groupBabyInfo = groupBabyInfo;
    }

    public GroupBasicInfo getGroupBasicInfo() {
        return groupBasicInfo;
    }

    public void setGroupBasicInfo(GroupBasicInfo groupBasicInfo) {
        this.groupBasicInfo = groupBasicInfo;
    }

    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    public String getResultTextHA() {
        return resultTextHA;
    }

    public void setResultTextHA(String resultTextHA) {
        this.resultTextHA = resultTextHA;
    }

    public String getResultTextWA() {
        return resultTextWA;
    }

    public void setResultTextWA(String resultTextWA) {
        this.resultTextWA = resultTextWA;
    }

    public String getResultTextWH() {
        return resultTextWH;
    }

    public void setResultTextWH(String resultTextWH) {
        this.resultTextWH = resultTextWH;
    }

    public String getResultTextBMI() {
        return resultTextBMI;
    }

    public void setResultTextBMI(String resultTextBMI) {
        this.resultTextBMI = resultTextBMI;
    }

    public String getExactAge() {
        return exactAge;
    }

    public void setExactAge(String exactAge) {
        this.exactAge = exactAge;
    }

    public String getResultTextHEAD() {
        return resultTextHEAD;
    }

    public void setResultTextHEAD(String resultTextHEAD) {
        this.resultTextHEAD = resultTextHEAD;
    }

    public String getResultTextWHO() {
        return resultTextWHO;
    }

    public void setResultTextWHO(String resultTextWHO) {
        this.resultTextWHO = resultTextWHO;
    }

    public String getResultTextZHA() {
        return resultTextZHA;
    }

    public void setResultTextZHA(String resultTextZHA) {
        this.resultTextZHA = resultTextZHA;
    }

    public String getResultTextZHW() {
        return resultTextZHW;
    }

    public void setResultTextZHW(String resultTextZHW) {
        this.resultTextZHW = resultTextZHW;
    }

    public String getShowBMI() {
        return showBMI;
    }

    public void setShowBMI(String showBMI) {
        this.showBMI = showBMI;
    }

    public String getShowHead() {
        return showHead;
    }

    public void setShowHead(String showHead) {
        this.showHead = showHead;
    }
}
