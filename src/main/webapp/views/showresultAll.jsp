<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/"/>
    <title>评测结果-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style>
        body, table, tbody, tr, td {
            background-color: transparent;
        }
        input[type="radio"] {
            display: none;
        }
        input[type='radio'] + label:before{
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 2px solid #df9390;
            border-radius:50%;
            position: relative;
            top: 5px;
        }
        input[type='radio']:checked + label:before{
            background-color: #000;
            box-shadow: inset 0 0 0 3px #fff;
        }
        input[type="checkbox"] {
            display: none;
        }
        input[type='checkbox'] + label:before{
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 2px solid #df9390;
            border-radius:50%;
            position: relative;
            top: 5px;
        }
        input[type='checkbox']:checked + label:before{
            background-color: #000;
            box-shadow: inset 0 0 0 3px #fff;
        }
        label {
            font-size: 14px;
            letter-spacing: 3px;
            font-weight: normal;
        }
        .item-line{
            border-bottom: 1px solid #df9390;
            height: 45px;
        }
        #name-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
        }

        #name-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
        }

        #birth-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
        }


        #basic1 .line{
            border-bottom: 1px solid #df9390;
            height: 40px;
        }
        #basic1 .line-img{
            width: 20px;
            z-index: 1;
            padding-bottom: 4px;
        }
        #basic1 .value{
            margin-left: 10px;
        }
        #basic1 #faceImg{
            width: 150px;
            position: absolute;
            z-index: 1;
            top: 290px;
            left: 460px;
        }

        #group .column-body{
            width: 500px;
            height: 240px;
            margin-left: 50px;
            margin-top: 5px;
        }
        #allergy .item-line{
            /*border-bottom: 1px solid #df9390;*/
            height: 40px;
            font-weight: normal;
            font-size: 14px;
        }
        #allergy .item{
            letter-spacing: 1px;
            width: 300px;
        }
        #allergy li{
           padding-bottom: 10px;
        }
        
        #physical .detail{
            margin: 0px;
            font-weight: normal;
            font-size: 14px;
        }

        #feed .item-line{
            border-bottom: 1px solid #df9390;
            height: 40px;
        }
        #feed #name-table{
            position: relative;
            left: 60px;
            top: 130px;
            width: 25%;
            font-size: 16px;
        }
        #feed #table-main{
            border: 0px;
            margin: 0;
            width: 60%;
            position: relative;
            left: 60px;
            top: 205px;
        }
        #feed #remark-table{
            width: 590px !important;
            height: 400px !important;
            border:0 !important;
            font-size: 16px !important;
            position: relative !important;
            top: 280px !important;
            left: 60px !important;
        }

        #test2016 #remark1, #remark2, #remark3, #remark4, #remark5, #doctorRemark{
            font-size: 10px;
        }

        #blood #bloodImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 290px;
            left: 460px;
        }
       
    </style>
    <style type="text/css" media="print">
        
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">
    <!-- 通用 -->
    <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
    <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
    <input id="name" type="hidden" value="<s:property value="baby.name"/>">
    <input id="birthday" type="hidden" value="<s:property value="baby.birthday"/>">
    <input id="nation" type="hidden" value="<s:property value="baby.nation"/>">

    <!-- basci1 -->
    
    <input id="nickName" type="hidden" value="<s:property value="allTestResultVo.resultBasic1.nickName"/>">
    <input id="address" type="hidden" value="<s:property value="allTestResultVo.resultBasic1.address"/>">
    <input id="contactMobile" type="hidden" value="<s:property value="allTestResultVo.resultBasic1.contactMobile"/>">
    <input id="headImgUrl" type="hidden" value="<s:property value="allTestResultVo.resultBasic1.headImgUrl"/>">
    <!-- basci2 -->
    <input id="isNormalChildbirth" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.isNormalChildbirth"/>">
    <input id="childbirthSituation" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.childbirthSituation"/>">
    <input id="familyHeredityDisease" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.familyHeredityDisease"/>">
    <input id="isHeredityDisease1" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.isHeredityDisease1"/>">
    <input id="isHeredityDisease2" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.isHeredityDisease2"/>">
    <input id="isHeredityDisease3" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.isHeredityDisease3"/>">
    <input id="isHeredityDisease4" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.isHeredityDisease4"/>">
    <input id="isAllergyHistory" type="hidden" value="<s:property value="allTestResultVo.resultBasic2.isAllergyHistory"/>">
    <!-- group -->
    <input id="resultidGroup" type="hidden" value="<s:property value="allTestResultVo.resultGroup2020.id"/>">
    <input id="height" type="hidden" value="<s:property value="allTestResultVo.resultGroup2020.height"/>">

    <!-- Allergy -->
    <input id="r1" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r1" />">
    <input id="r2" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r2" />">
    <input id="r3" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r3" />">
    <input id="r4" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r4" />">
    <input id="r5" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r5" />">
    <input id="r6" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r6" />">
    <input id="r7" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r7" />">
    <input id="r8" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r8" />">
    <input id="r9" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r9" />">
    <input id="r10" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r10" />">
    <input id="r11" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r11" />">
    <input id="r12" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r12" />">
    <input id="r13" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r13" />">
    <input id="r14" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r14" />">
    <input id="r15" type="hidden" value="<s:property value="allTestResultVo.resultAllergy.r15" />">

    <!-- physical -->
    <input id="hairIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.hairIsNormal"/>">
    <input id="fingernailIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.fingernailIsNormal"/>">
    <input id="skinIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.skinIsNormal"/>">
    <input id="faceIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.faceIsNormal"/>">
    <input id="headIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.headIsNormal"/>">
    <input id="eyeIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.eyeIsNormal"/>">
    <input id="earIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.earIsNormal"/>">
    <input id="mouthIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.mouthIsNormal"/>">
    <input id="neckIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.neckIsNormal"/>">
    <input id="lymphIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.lymphIsNormal"/>">
    <input id="thoracicCavityIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.thoracicCavityIsNormal"/>">
    <input id="heartIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.heartIsNormal"/>">
    <input id="lungIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.lungIsNormal"/>"
    <input id="stomachIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.stomachIsNormal"/>">
    <input id="limbIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.limbIsNormal"/>">
    <input id="sexFeaturesIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.sexFeaturesIsNormal"/>">
    <input id="vdIsNormal" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.vdIsNormal"/>">
    <input id="hairReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.hairReason"/>">
    <input id="fingernailReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.fingernailReason"/>">
    <input id="skinReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.skinReason"/>">
    <input id="faceReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.faceReason"/>">
    <input id="headReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.headReason"/>">
    <input id="eyeReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.eyeReason"/>">
    <input id="earReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.earReason"/>">
    <input id="mouthReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.mouthReason"/>">
    <input id="neckReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.neckReason"/>">
    <input id="lymphReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.lymphReason"/>">
    <input id="thoracicCavityReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.thoracicCavityReason"/>">
    <input id="heartReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.heartReason"/>">
    <input id="lungReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.lungReason"/>">
    <input id="stomachReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.stomachReason"/>">
    <input id="limbReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.limbReason"/>">
    <input id="sexFeaturesReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.sexFeaturesReason"/>">
    <input id="vdReason" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.vdReason"/>">

    <input id="physicalRemark" type="hidden" value="<s:property value="allTestResultVo.resultPhysical.remark"/>">

    <!-- Feed -->
    <input id="currentMilkYield" type="hidden" value="<s:property value="allTestResultVo.resultFeed.currentMilkYield"/>">
    <input id="milkType" type="hidden" value="<s:property value="allTestResultVo.resultFeed.milkType"/>">
    <input id="milkRecipe" type="hidden" value="<s:property value="allTestResultVo.resultFeed.milkRecipe"/>">
    <input id="accessoryFoodSituation" type="hidden" value="<s:property value="allTestResultVo.resultFeed.accessoryFoodSituation"/>">
    <input id="isFoodAllergy" type="hidden" value="<s:property value="allTestResultVo.resultFeed.isFoodAllergy"/>">
    <input id="foodAllergySituation" type="hidden" value="<s:property value="allTestResultVo.allTestResultVo.resultFeed.foodAllergySituation"/>">
    <input id="accessoryFoodAddTimes" type="hidden" value="<s:property value="allTestResultVo.resultFeed.accessoryFoodAddTimes"/>">
    <input id="accessoryFoodShape" type="hidden" value="<s:property value="allTestResultVo.resultFeed.accessoryFoodShape"/>">
    <input id="accessoryFoodAddDate" type="hidden" value="<s:property value="allTestResultVo.resultFeed.accessoryFoodAddDate"/>">
    <input id="isOwnFood" type="hidden" value="<s:property value="allTestResultVo.resultFeed.isOwnFood"/>">
    <input id="ownFoodSituation" type="hidden" value="<s:property value="allTestResultVo.resultFeed.ownFoodSituation"/>">
    <input id="shitTimes" type="hidden" value="<s:property value="allTestResultVo.resultFeed.shitTimes"/>">
    <input id="shitShape" type="hidden" value="<s:property value="allTestResultVo.resultFeed.shitShape"/>">
    <input id="feedSuggest" type="hidden" value="<s:property value="allTestResultVo.resultFeed.feedSuggest"/>">
    <!-- 2016 -->
    <input type="hidden" id="resultID2016" value="<s:property value="allTestResultVo.result2016.id"/>">
    <input type="hidden" id="testerName2016" value="<s:property value="allTestResultVo.resultRecord.testerName"/>">
    <!-- blood -->

    <!-- summary -->
    <input id="summaryRemark" type="hidden" value="<s:property value="allTestResultVo.resultSummary.summary"/>">


    <s:if test="allTestResultVo.resultBasic1">
    <div class="container" class="hemaFront" id="basic1">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent; margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2Girl.jpg">
                </s:if>



                <img id="faceImg" src="<s:property value="resultBasic1.headImgUrl"/>">

                <table style="width: 38%;
                    border: 0;
                    position: relative;
                    top: 220px;
                    left: 270px;
                    font-size: 16px"
                    id="table1">
                    <tr  class="line">

                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/name1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/name2.png">">
                            </s:if>
                            <span style="letter-spacing: 10px;margin-left: 10px ">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <span class="value">
                                <s:property value="baby.name"/>
                            </span>
                        </td>
                        
                    </tr>

                    <tr  class="line">
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/nick1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/nick2.png">">
                            </s:if>
                            <span style="letter-spacing: 10px;margin-left: 10px ">小</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <span class="value">
                                <s:property value="allTestResultVo.resultBasic1.nickName"/>
                            </span>
                        </td>
                        
                    </tr>

                    <tr  class="line">
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/gender1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/gender2.png">">
                            </s:if>
                            <span style="letter-spacing: 10px;margin-left: 10px ">性</span>
                            <span style="letter-spacing: 1px">别:</span>
                            <span class="value">
                                <s:if test="baby.gender == 1">男</s:if><s:else>女</s:else>
                            </span>
                        </td>
                    </tr>

                    <tr  class="line">
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/birth1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/birth2.png">">
                            </s:if>
                            <span style="letter-spacing: 1px;margin-left: 10px ">出生日期:</span>
                            <span class="value">
                                <s:date name="baby.birthday" format="yyyy-MM-dd"/>
                            </span>
                        </td>
                    </tr>
                </table>

                <table style="width: 38%;
                    border: 0;
                    position: relative;
                    top: 320px;
                    left: 270px;
                    font-size: 16px"
                    id="table2">
                    <tr class="line">
                            
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/nation1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/nation2.png">">
                            </s:if>
                            <span style="letter-spacing: 10px;margin-left: 10px ">民</span>
                            <span style="letter-spacing: 1px">族:</span>
                            <span class="value">
                                <s:property value="baby.nation"/>
                            </span>
                        </td>
                        
                    </tr>

                    <tr class="line">
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/add1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/add2.png">">
                            </s:if>
                            <span style="letter-spacing: 10px;margin-left: 10px ">地</span>
                            <span style="letter-spacing: 1px">址:</span>
                            <span class="value">
                                <s:property value="allTestResultVo.resultBasic1.address"/>
                            </span>
                        </td>
                        
                    </tr>



                    <tr class="line">
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/phone1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/phone2.png">">
                            </s:if>
                            <span style="letter-spacing: 1px;margin-left: 10px ">联系电话:</span>
                            <span class="value">
                                <s:property value="allTestResultVo.resultBasic1.contactMobile"/>
                            </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultBasic2">
    <div class="container" class="hemaFront" id="basic2">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent; margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg7Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg7Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg7Girl.jpg">
                </s:if>


                <table id="table-main" align="center" style="border: 0px;margin: 0; width: 35%;position: absolute;left: 440px;top: 1350px;">
                    <tbody style="width: 100%">
                        <tr class="item-line">
                            <td>
                                <span>
                                   生产方式:
                                </span>

                                <input type="radio" name="isNormalChildbirth" value="1"   id="radio-answer-1-1">
                                <label for="radio-answer-1-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 顺产</label>

                                <input type="radio" name="isNormalChildbirth" value="0"   id="radio-answer-1-0">
                                <label for="radio-answer-1-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 剖腹产</label>
                                
                            </td>
                        </tr>

                        <tr>
                            <td>
                                出生时有无以下情况:
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="childbirthSituation"  value="0" id="checkbox-answer-1-1">
                                <label for="checkbox-answer-1-1" style="font-weight: normal"> 无</label>
                                <input type="checkbox" name="childbirthSituation"  value="1" id="checkbox-answer-1-2">
                                <label for="checkbox-answer-1-2" style="font-weight: normal;margin-left: 100px"> 缺氧</label>
                                <input type="checkbox" name="childbirthSituation"  value="2" id="checkbox-answer-1-3">
                                <label for="checkbox-answer-1-3" style="font-weight: normal;margin-left: 100px"> 黄疸(病理性)</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <input type="checkbox" name="childbirthSituation"  value="3" id="checkbox-answer-1-4">
                                <label for="checkbox-answer-1-4" style="font-weight: normal"> 感染</label>
                                <input type="checkbox" name="childbirthSituation"  value="4" id="checkbox-answer-1-5">
                                <label for="checkbox-answer-1-5" style="font-weight: normal;margin-left: 86px"> 住保温箱</label>
                                <input type="checkbox" name="childbirthSituation"  value="5" id="checkbox-answer-1-6">
                                <label for="checkbox-answer-1-6" style="font-weight: normal;margin-left: 73px"> 新生儿手术(外科治疗)</label>
                            </td>
                        </tr>

                        <tr class="item-line">
                            <td>
                                <span>
                                    生产胎龄:
                                </span>
                                <span style="margin-left: 60px">
                                    <s:property value="allTestResultVo.resultBasic2.babyBirthWeekAge"/>  (正常为38-42周)
                                </span>
                                <span style="margin-left: 160px">
                                    宝贝出生体重:   
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.babyBirthWeight"/>      g
                                </span>

                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    母亲生育年龄:
                                </span>
                                <span style="margin-left: 31px">
                                    <s:property value="allTestResultVo.resultBasic2.childBearingAge"/> 周岁
                                </span>
                                <span style="margin-left: 105px">
                                    胎次:
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.babyCount"/>
                                </span>
                                <span style="margin-left: 100px">
                                    产次:
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.pregnantCount"/>
                                </span>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    母亲妊娠期患病情况:
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.motherPregnancyDiseaseSituation"/>
                                </span>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    父亲身高:
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.fatherHeight"/> cm
                                </span>
                                <span style="margin-left: 220px">
                                    母亲身高:
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.motherHeight"/> cm
                                </span>
                            </td>
                           
                        </tr>
                    </tbody>
                </table>
                <table  id="table-main1" align="center"  style="border: 0px;margin: 0; width: 35%;position: absolute;top: 1755px;left: 440px;">
                    <tbody style="width: 100%">
                        <tr class="item-line">
                            <td style="border:0px;width: 200px">
                                有无重大疾病或发生意外情况:
                            </td>
                            <td style="border:0px">
                                <s:property value="allTestResultVo.resultBasic2.diseasePastHistory"/>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table  id="table-main2"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 1860px;left: 440px;">
                    <tbody style="width: 100%">
                        <tr>
                            <td colspan="4">
                                父母系三代有先天家族遗传性疾病:
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="0">
                                <label style="font-weight: normal"> 无</label>
                            </td>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="1">
                                <label style="font-weight: normal"> 高血压</label>
                            </td>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="2">
                                <label style="font-weight: normal"> 冠心病</label>
                            </td>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="3">
                                <label style="font-weight: normal"> 糖尿病</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <input type="checkbox" name="familyHeredityDisease"  value="4">
                                <label style="font-weight: normal"> 哮喘</label>
                            </td>
                            <td>    
                                <input type="checkbox" name="familyHeredityDisease"  value="5">
                                <label style="font-weight: normal"> 癫痫</label>
                            </td>
                            <td colspan="2">
                                <input type="checkbox" name="familyHeredityDisease"  value="6">
                                <label style="font-weight: normal"> 神经疾病</label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table  id="table-main3" align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 1975px;left: 440px;">
                    <tbody style="width: 100%">
                        <tr>
                            <td style="width: 510px">
                                外祖父母、祖父母有慢性咳嗽、季节性咳嗽、运动后咳嗽或哮喘病史。
                            </td>
                            <td>
                                <input type="radio" name="isHeredityDisease1" value="1"   id="radio-answer-5-1">
                                <label for="radio-answer-5-1" style="width: 60px;margin-left: 20px;font-weight: normal;"> 有</label>
                            </td>
                            <td>
                                <input type="radio" name="isHeredityDisease1" value="0"   id="radio-answer-5-0">
                                <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                父母双方有皮肤发痒、荨麻疹、药疹、湿疹病史。
                            </td>

                            <td>
                                <input type="radio" name="isHeredityDisease2" value="1"   id="radio-answer-6-1">
                                <label for="radio-answer-6-1" style="width: 60px;margin-left: 20px;font-weight: normal;"> 有</label>
                            </td>
                            <td>
                                <input type="radio" name="isHeredityDisease2" value="0"   id="radio-answer-6-0">
                                <label for="radio-answer-6-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                父母双方有哮喘、鼻炎、慢性咳嗽病史。
                            </td>

                            <td>
                                <input type="radio" name="isHeredityDisease3" value="1"   id="radio-answer-7-1">
                                <label for="radio-answer-7-1" style="width: 60px;margin-left: 20px;font-weight: normal;"> 有</label>
                            </td>
                            <td>
                                <input type="radio" name="isHeredityDisease3" value="0"   id="radio-answer-7-0">
                                <label for="radio-answer-7-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                父母双方有食物吸收差、身体消瘦、排便异常病史。
                            </td>


                            <td>
                                <input type="radio" name="isHeredityDisease4" value="1"   id="radio-answer-8-1">
                                <label for="radio-answer-8-1" style="width: 60px;margin-left: 20px;font-weight: normal;"> 有</label>
                            </td>
                            <td>
                                <input type="radio" name="isHeredityDisease4" value="0"   id="radio-answer-8-0">
                                <label for="radio-answer-8-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                是否有过敏史:
                                <input type="radio" name="isAllergyHistory" value="1"   id="radio-answer-8-1">
                                <label for="radio-answer-9-1" style="width: 50px;margin-left: 20px;font-weight: normal;"> 是</label>

                                <input type="radio" name="isAllergyHistory" value="0"   id="radio-answer-8-1">
                                <label for="radio-answer-9-0" style="width: 50px;margin-left: 20px;font-weight: normal;"> 否</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span> 过敏情况: </span>
                                <span > <s:property value="allTestResultVo.resultBasic2.allergySituation"/>  </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </s:if>


    <s:if test="allTestResultVo.resultGroup2020">
    <div class="container" class="hemaFront" id="group">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent; margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Girl.jpg">
                </s:if>
                <table style="width: 800px; height:1060px;border:0;font-size: 16px;font-weight: bold; position: absolute;top: 2320px;" id="content-table">
                    <tr>
                        <td class="col-md-8 content-1">
                            <div id="column1" class="column-body"></div>
                            <div id="column2" class="column-body"></div>
                            <div id="column3" class="column-body"></div>
                        </td>
                        <td class="col-md-4 content-2">
                            <div class="panel panel-default front-panel" id="info" style="border: 0px; background-color: transparent;position: relative;top: -280px;left: -15px">
                                <div class="panel-body front-no-padding" style="padding: 5px;border:0;background-color: transparent">
                                    <table style="width: 100%;border:0;font-size: 14px; font-weight: normal;">
                                        <tr style="height: 40px">
                                            <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">姓名:</td>
                                            <td class="col-md-6" style="padding-left: 0px"><span style="text-decoration: underline;"><s:property value="baby.name"/></span></td>
                                        </tr>
                                        <tr style="height: 40px">
                                            <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">体重:</td>
                                            <td class="col-md-6" style="padding-left: 0px"><span style="text-decoration: underline;"><s:property value="allTestResultVo.resultGroup2020.weight"/></span> kg</td>
                                        </tr>
                                        <tr style="height: 40px">
                                            <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">身高:</td>
                                            <td class="col-md-6" style="padding-left: 0px"> <span style="text-decoration: underline;"><s:property value="allTestResultVo.resultGroup2020.height"/></span> cm</td>
                                        </tr>
                                        <tr style="height: 40px">
                                            <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">头围:</td>
                                            <td class="col-md-6" style="padding-left: 0px">
                                                <span style="text-decoration: underline;"><s:property value="allTestResultVo.resultGroup2020.head"/></span> cm</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <!-- <img style="width: 275px;position: absolute;top: 60px;" src="statics/img/hemaWho.png"> -->
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultAllergy">
    <div class="container" class="hemaFront" id="allergy">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg3Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg3Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg3Girl.jpg">
                </s:if>

                <table style="width: 25%;
                    border: 0;
                    position: relative;
                    top: 120px;
                    left: 50px;
                    font-size: 16px"
                    id="name-table">
                    <tr>
                        <td class="col-md-12" style="font-weight: bold;">
                            <span style="letter-spacing: 18px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                        
                    </tr>
                </table>

                <table style="width: 660px; height:615px;border:0;font-size: 16px;font-weight: bold; position: relative;top: 210px;left: 60px" id="content-table">
                    <tr class="item-line">
                        <td class="item">
                            眼圈发紫或指尖发白
                        </td>
                        <td style="width: 40px">
                            <input type="radio" name="allergy-answer-1" value="1"   id="radio-answer-1-1">
                            <label for="radio-answer-1-1">有</label>
                        </td>
                        <td style="width: 40px">
                            <input type="radio" name="allergy-answer-1" value="0" id="radio-answer-1-0">
                            <label for="radio-answer-1-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            头发稀疏偏黄，头两侧缺少头发
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-2" value="1"   id="radio-answer-2-1">
                            <label for="radio-answer-2-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-2" value="0" id="radio-answer-2-0">
                            <label for="radio-answer-2-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            有荨麻疹、慢性湿疹、口水疹、尿布疹病史
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-3" value="1"   id="radio-answer-3-1">
                            <label for="radio-answer-3-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-3" value="0" id="radio-answer-3-0">
                            <label for="radio-answer-3-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            皮肤爱红、爱痒
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-4" value="1"   id="radio-answer-4-1">
                            <label for="radio-answer-4-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-4" value="0" id="radio-answer-4-0">
                            <label for="radio-answer-4-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            喜欢揉鼻子、揉眼睛、挠耳朵
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-5" value="1"  id="radio-answer-5-1">
                            <label for="radio-answer-5-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-5" value="0" id="radio-answer-5-0">
                            <label for="radio-answer-5-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            排便异常，腹泻、便秘、便血
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-6" value="1"  id="radio-answer-6-1">
                            <label for="radio-answer-6-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-6" value="0"  id="radio-answer-6-0">
                            <label for="radio-answer-6-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            睡眠差，俯卧睡，经常腹痛
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-7" value="1"  id="radio-answer-7-1">
                            <label for="radio-answer-7-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-7" value="0" id="radio-answer-7-0">
                            <label for="radio-answer-7-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            无原因的反复咳嗽、流涕、打喷嚏、喘息
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-8" value="1"  id="radio-answer-8-1" >
                            <label for="radio-answer-8-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-8" value="0" id="radio-answer-8-0" >
                            <label for="radio-answer-8-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            偶有吐奶、厌奶、吃完食物出现呕吐及腹泻
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-9" value="1"  id="radio-answer-9-1" >
                            <label for="radio-answer-9-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-9" value="0" id="radio-answer-9-0" >
                            <label for="radio-answer-9-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            一段时间内体重不增，或体重异常增加
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-10" value="1"  id="radio-answer-10-1" >
                            <label for="radio-answer-10-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-10" value="0"  id="radio-answer-10-0" >
                            <label for="radio-answer-10-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            身高体重增长缓慢
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-11" value="1"   id="radio-answer-11-1" >
                            <label for="radio-answer-11-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-11" value="0"  id="radio-answer-11-0" >
                            <label for="radio-answer-11-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            食欲差，积食，厌食厌奶
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-12" value="1"  id="radio-answer-12-1">
                            <label for="radio-answer-12-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-12" value="0" id="radio-answer-12-0">
                            <label for="radio-answer-12-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            两种以上微量元素缺乏(如果未化验或不清楚，请填写‘无’)
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-13" value="1"   id="radio-answer-13-1">
                            <label for="radio-answer-13-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-13" value="0" id="radio-answer-13-0">
                            <label for="radio-answer-13-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            反复呼吸道感染
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-14" value="1"  id="radio-answer-14-1">
                            <label for="radio-answer-14-1">有</label>
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-14" value="0" id="radio-answer-14-0">
                            <label for="radio-answer-14-0">无</label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            嗓子呼噜声
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-15" value="1"  id="radio-answer-15-1" >
                            <label for="radio-answer-15-1">有</label>        
                        </td>
                        <td>
                            <input type="radio" name="allergy-answer-15" value="0" id="radio-answer-15-0"  >
                            <label for="radio-answer-15-0">无</label>
                        </td>
                    </tr>
                </table>
                <ul style="
                    position: relative;
                    top: 240px;
                    left: 28px;
                    width: 600px;
                    font-size: 12px;
                ">
                    <li>
                        自评0分无过敏风险
                    </li>
                    <li>
                        1-2分有轻度过敏风险，需进行过敏咨询，适当避免过敏原。
                    </li>
                    <li>
                        3-4分有中度过敏风险，建议完善过敏原筛查，进行过敏营养咨询。且容易并发消化系统、呼吸系统、免疫系统疾病，尽早发现尽早治疗。
                    </li>
                    <li>
                        5分以上可明确诊断过敏，需要进行过敏源筛查，进行规律治疗。否则会出现哮喘、生长发育落后、免疫力低下、慢性肠道疾病的严重后果。
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultPhysical">
    <div class="container" class="hemaFront" id="physical">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg4Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg4Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg4Girl.jpg">
                </s:if>

                <table style="width: 35%;
                    border: 0;
                    position: relative;
                    top: 120px;
                    left: 50px;
                    font-size: 16px">
                    <tr>
                        <td style="font-weight: bold; width: 100px; padding-left: 15px">
                            <span style="letter-spacing: 18px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                        </td>
                        <td  id="name" style="border-bottom: 1px solid #df938f;padding-left: 0px; width: 250px"><s:property value="baby.name"/></td>
                    </tr>
                </table>

                <table style="width: 660px; height:760px;border:0;font-size: 16px;font-weight: bold; position: relative;top: 210px;left: 60px" id="content-table">
                    <tr class="item-line">
                        <td class="item">
                            毛发
                        </td>
                        <td style="width: 85px">
                            <input type="radio" name="answer-1" value="1"   id="radio-answer-1-1">
                            <label for="radio-answer-1-1">正常</label>
                        </td>
                        <td style="width: 75px">
                            <input type="radio" name="answer-1" value="0" id="radio-answer-1-0">
                            <label for="radio-answer-1-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-1-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            指甲
                        </td>
                        <td>
                            <input type="radio" name="answer-2" value="1"   id="radio-answer-2-1">
                            <label for="radio-answer-2-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-2" value="0" id="radio-answer-2-0">
                            <label for="radio-answer-2-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-2-detail" class="detail"/>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            皮肤
                        </td>
                        <td>
                            <input type="radio" name="answer-3" value="1"   id="radio-answer-3-1">
                            <label for="radio-answer-3-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-3" value="0" id="radio-answer-3-0">
                            <label for="radio-answer-3-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-3-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            面色
                        </td>
                        <td>
                            <input type="radio" name="answer-4" value="1"   id="radio-answer-4-1">
                            <label for="radio-answer-4-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-4" value="0" id="radio-answer-4-0">
                            <label for="radio-answer-4-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-4-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            头部
                        </td>
                        <td>
                            <input type="radio" name="answer-5" value="1"  id="radio-answer-5-1">
                            <label for="radio-answer-5-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-5" value="0" id="radio-answer-5-0">
                            <label for="radio-answer-5-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-5-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            眼
                        </td>
                        <td>
                            <input type="radio" name="answer-6" value="1"  id="radio-answer-6-1">
                            <label for="radio-answer-6-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-6" value="0"  id="radio-answer-6-0">
                            <label for="radio-answer-6-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-6-detail" class="detail"  />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            耳
                        </td>
                        <td>
                            <input type="radio" name="answer-7" value="1"  id="radio-answer-7-1">
                            <label for="radio-answer-7-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-7" value="0" id="radio-answer-7-0">
                            <label for="radio-answer-7-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-7-detail" class="detail"  />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            口腔
                        </td>
                        <td>
                            <input type="radio" name="answer-8" value="1"  id="radio-answer-8-1" >
                            <label for="radio-answer-8-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-8" value="0" id="radio-answer-8-0" >
                            <label for="radio-answer-8-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-8-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            颈部
                        </td>
                        <td>
                            <input type="radio" name="answer-9" value="1"  id="radio-answer-9-1" >
                            <label for="radio-answer-9-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-9" value="0" id="radio-answer-9-0" >
                            <label for="radio-answer-9-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-9-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            淋巴结
                        </td>
                        <td>
                            <input type="radio" name="answer-10" value="1"  id="radio-answer-10-1" >
                            <label for="radio-answer-10-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-10" value="0"  id="radio-answer-10-0" >
                            <label for="radio-answer-10-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-10-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            胸廓
                        </td>
                        <td>
                            <input type="radio" name="answer-11" value="1"   id="radio-answer-11-1" >
                            <label for="radio-answer-11-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-11" value="0"  id="radio-answer-11-0" >
                            <label for="radio-answer-11-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-11-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            心脏
                        </td>
                        <td>
                            <input type="radio" name="answer-12" value="1"  id="radio-answer-12-1">
                            <label for="radio-answer-12-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-12" value="0" id="radio-answer-12-0">
                            <label for="radio-answer-12-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-12-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            肺
                        </td>
                        <td>
                            <input type="radio" name="answer-13" value="1"   id="radio-answer-13-1">
                            <label for="radio-answer-13-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-13" value="0" id="radio-answer-13-0">
                            <label for="radio-answer-13-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-13-detail" class="detail"/>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            腹
                        </td>
                        <td>
                            <input type="radio" name="answer-14" value="1"  id="radio-answer-14-1">
                            <label for="radio-answer-14-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-14" value="0" id="radio-answer-14-0">
                            <label for="radio-answer-14-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-14-detail" class="detail" />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            四肢
                        </td>
                        <td>
                            <input type="radio" name="answer-15" value="1"  id="radio-answer-15-1" >
                            <label for="radio-answer-15-1">正常</label>        
                        </td>
                        <td>
                            <input type="radio" name="answer-15" value="0" id="radio-answer-15-0"  >
                            <label for="radio-answer-15-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-15-detail" class="detail"  />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item" style="letter-spacing: 1px">
                            肛门/外生殖器
                        </td>
                        <td>
                            <input type="radio" name="answer-16" value="1"  id="radio-answer-16-1"  >
                            <label for="radio-answer-16-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-16" value="0" id="radio-answer-16-0"  >
                            <label for="radio-answer-16-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-16-detail" class="detail"  />
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item" style="letter-spacing: 1px">
                            可疑VD缺乏症状
                        </td>
                        <td>
                            <input type="radio" name="answer-17" value="1" id="radio-answer-17-1"  >
                            <label for="radio-answer-17-1">正常</label>
                        </td>
                        <td>
                            <input type="radio" name="answer-17" value="0" id="radio-answer-17-0" >
                            <label for="radio-answer-17-0">其他</label>
                        </td>
                        <td>
                            <p id="answer-17-detail" class="detail"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <!-- <p id="remarkText" style="font-weight: normal;"></p> -->
                            <textarea id="physicalRemarkText" rows="3" style="resize:none;border: 0;width: 100%;height: 100%; font-weight: normal;"></textarea>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultFeed">
    <div class="container" class="hemaFront" id="feed">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Girl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>

                        <td class="col-md-12" style="font-weight: bold;">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>

                    </tr>
                </table>




                <table id="table-main" align="center">
                    <tbody style="width: 100%">
                        <tr class="item-line">
                            <td>
                                <span>
                                   当前总奶量:
                                </span>
                                <span style="margin-left: 40px">
                                    <s:property value="resultFeed.currentMilkYield"/> ml/天
                                </span>

                                <input type="checkbox" name="milkType"  value="0">
                                <label style="font-weight: normal;margin-left: 100px"> 母乳</label>
                                <input type="checkbox" name="milkType"  value="1" style="">
                                <label style="font-weight: normal;margin-left: 40px"> 配方</label>
                                <input type="checkbox" name="milkType"  value="2" style="">
                                <label style="font-weight: normal;margin-left: 40px"> 混合</label>
                                
                            </td>
                        </tr>

                        <tr class="item-line">
                            <td>
                                <span>
                                  配方种类:  
                                </span>
                                <input type="checkbox" name="milkRecipe"  value="0">
                                <label style="font-weight: normal;margin-left: 50px"> 普通</label>
                                <input type="checkbox" name="milkRecipe"  value="1" style="">
                                <label style="font-weight: normal;margin-left: 5px"> 适度</label>
                                <input type="checkbox" name="milkRecipe"  value="2" style="">
                                <label style="font-weight: normal;margin-left: 5px"> 深度</label>
                                <input type="checkbox" name="milkRecipe"  value="3">
                                <label style="font-weight: normal;margin-left: 5px"> 氨基酸</label>
                                <input type="checkbox" name="milkRecipe"  value="4" style="">
                                <label style="font-weight: normal;margin-left: 5px"> 羊奶粉</label>
                                <input type="checkbox" name="milkRecipe"  value="5" style="">
                                <label style="font-weight: normal;margin-left: 5px"> 其他</label>
                                <span style="margin-left: 5px">
                                    <s:property value="resultFeed.milkRecipeInfo"/> 
                                </span>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    辅食添加情况:
                                </span>
                                <span style="margin-left: 60px">
                                    <s:property value="resultFeed.accessoryFoodSituation"/> 
                                </span>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    食物过敏情况
                                </span>
                                <input type="radio" name="isFoodAllergy" value="1"   id="radio-answer-5-1">
                                <label for="radio-answer-5-1" style="width: 60px;margin-left: 25px;font-weight: normal;"> 有</label>

                                <input type="radio" name="isFoodAllergy" value="0"   id="radio-answer-5-0">
                                <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>
                                
                                <s:property value="resultFeed.foodAllergySituation"/>

                            </td>
                            </td>
                        </tr>

                        <tr class="item-line">
                            <td>
                                <span>
                                  辅食添加次数/天  
                                </span>
                                <input type="checkbox" name="accessoryFoodAddTimes"  value="0">
                                <label style="font-weight: normal;margin-left: 7px"> 一餐</label>
                                <input type="checkbox" name="accessoryFoodAddTimes"  value="1" style="">
                                <label style="font-weight: normal;margin-left: 100px"> 二餐</label>
                                <input type="checkbox" name="accessoryFoodAddTimes"  value="2" style="">
                                <label style="font-weight: normal;margin-left: 100px"> 三餐</label>
                                
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                  辅食性状
                                </span>
                                <input type="checkbox" name="accessoryFoodShape"  value="0">
                                <label style="font-weight: normal;margin-left: 53px"> 泥糊</label>
                                <input type="checkbox" name="accessoryFoodShape"  value="1" style="">
                                <label style="font-weight: normal;margin-left: 40px"> 泥糊带小颗粒</label>
                                <input type="checkbox" name="accessoryFoodShape"  value="2" style="">
                                <label style="font-weight: normal;margin-left: 40px"> 小丁块</label>
                                <input type="checkbox" name="accessoryFoodShape"  value="3" style="">
                                <label style="font-weight: normal;margin-left: 40px"> 大丁块</label>
                                
                            </td>
                        </tr>


                        <tr class="item-line">
                            <td>
                                <span>
                                    辅食添加时间:
                                </span>
                                <span style="margin-left: 60px">
                                    <s:property value="resultFeed.accessoryFoodAddDate"/> 
                                </span>
                            </td>
                        </tr>

                        <tr class="item-line">
                            <td>
                                <span>
                                    是否自主进食
                                </span>
                                <input type="radio" name="isOwnFood" value="1"   id="radio-answer-5-1">
                                <label for="radio-answer-5-1" style="width: 60px;margin-left: 26px;font-weight: normal;"> 是</label>

                                <input type="radio" name="isOwnFood" value="0"   id="radio-answer-5-0">
                                <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 否</label>
                                
                                <s:property value="resultFeed.ownFoodSituation"/>

                            </td>
                            </td>
                        </tr>



                        <tr class="item-line">
                            <td>
                                <span>
                                    排便情况:
                                </span>
                                <span style="margin-left: 50px">
                                    大便次数:
                                </span>
                                <span>
                                    <s:property value="resultFeed.shitTimes"/>
                                </span>
                                <span style="margin-left: 100px">
                                    大便性状:
                                </span>
                                <span>
                                    <s:property value="resultFeed.shitShape"/>
                                </span>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table id="remark-table">
                    <tr>
                        <td>
                            <textarea rows="10" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="feedRemarkText"></textarea>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.result2016">
    <!-- <div class="container" id="test2016">
        <img id="ruiweiyue" class="pull-right" style="height: 100px;width: 100px;" src="statics/img/hemaCode.png" alt="Logo">
        <img id="hema" class="pull-left" style="height: 120px;width: 720px;" src="statics/img/hema.png" alt="Logo">

        <div class="panel panel-default front-panel" id="info" style="margin-top: 120px">
            <div class="panel-body front-no-padding" style="padding: 15px;">
                <table style="width: 100%">
                    <tbody>
                    <tr>
                        <td class="col-md-2">姓名</td>
                        <td class="col-md-2"><s:property value="baby.name"/></td>
                        <td class="col-md-2">性别</td>
                        <td class="col-md-2"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-2">出生日期</td>
                        <td class="col-md-2"><s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                    </tr>
                    <tr>
                        <td class="col-md-2">检查日期</td>
                        <td class="col-md-2"><s:property value="stime"/></td>
                        <td class="col-md-2">智龄</td>
                        <td class="col-md-2" id="DQ"></td>
                        <td class="col-md-2">发育商DQ</td>
                        <td class="col-md-2" id="growth"></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-body front-no-padding">
                <table class="table table-striped table-bordered front-table">
                    <thead>
                    <tr>
                        <th class="col-md-2">测试项目</th>
                        <th class="col-md-2">大运动</th>
                        <th class="col-md-2">精细运动</th>
                        <th class="col-md-2">适应能力</th>
                        <th class="col-md-2">语言</th>
                        <th class="col-md-2">社交行为</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>智龄（月）</td>
                        <td id="scoreSport"><s:property value="result2016.scoreSport"/></td>
                        <td id="scoreAct"><s:property value="result2016.scoreAct"/></td>
                        <td id="scoreAdapt"><s:property value="result2016.scoreAdapt"/></td>
                        <td id="scoreLanguage"><s:property value="result2016.scoreLanguage"/></td>
                        <td id="scoreSocial"><s:property value="result2016.scoreSocial"/></td>
                    </tr>
                    <tr>
                        <td>单项发育商（DQ）</td>
                        <td><s:property value="scoreSport"/></td>
                        <td><s:property value="scoreAct"/></td>
                        <td><s:property value="scoreAdapt"/></td>
                        <td><s:property value="scoreLanguage"/></td>
                        <td id="last"><s:property value="scoreSocial"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <table class="table table-striped  table-bordered front-table">
            <tbody>
            <tr>
                <td style="padding: 0px;width: 100%;">
                    <div id="column" style="height: 200px"></div>
                </td>
            </tr>
            </tbody>
        </table>

        <table class="table table-striped  table-bordered front-table">
            <tbody>
                <tr>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        大运动
                    </td>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        精细运动
                    </td>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        适应能力
                    </td>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        语言
                    </td>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;"> 
                        社交能力
                    </td>
                </tr>
                <tr>
                    <td id="remark1"></td>
                    <td id="remark2"></td>
                    <td id="remark3"></td>
                    <td id="remark4"></td>
                    <td id="remark5"></td>
                </tr>
            </tbody>
        </table>
        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading" style="text-align: left; padding: 5px 8px; font-weight: bold;">医师评价及建议</div>
            <div class="panel-body front-no-padding">
                <textarea id="doctorRemark2016" rows="10" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div>
        </div>
        <div style="width:270px;float: right">
            <div ><p style="margin-top: 20px;font-size: 16px;">测评者： <input  id="testerName"/> </p></div>
        </div>　
    </div> -->
    </s:if>



    
        
    <div class="container" class="hemaFront" id="blood">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBloodBoy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBloodBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBloodGirl.jpg">
                </s:if>
                <img id="bloodImg" src="<s:property value="allTestResultVo.resultBlood.bloodImgUrl"/>">
            </div>
        </div>
    </div>

    <div class="container" class="hemaFront" id="summary">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg5Boy.jpg">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg5Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg5Girl.jpg">
                </s:if>

                <table style="width: 55%;
                    border: 0;
                    position: relative;
                    top: 120px;
                    left: 70px;
                    font-size: 16px"
                    id="name-table">
                    <tr>

                        <td class="col-md-4" style="font-weight: bold;">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                        

                        <td class="col-md-4 col-offset-4" style="font-weight: bold;">
                            <span style="letter-spacing: 1px">出生日期:</span>
                            <div id="birth-text">
                                <s:date name="baby.birthday" format="yyyy-MM-dd"/>
                            </div>
                        </td>
                        

                    </tr>
                </table>

                <table style="width: 590px; height:660px;border:0;font-size: 16px; position: relative;top: 240px;left: 120px" id="content-table">
                    <tr>
                        <td>
                            <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="summaryRemarkText"></textarea>
                        </td>
                    </tr>
                </table>

                <p id="date" style="
                    position: relative;
                    top: 200px;
                    left: 600px;
                    font-weight: bold;
                    font-size: 16px;
                ">
                    <s:date name="allTestResultVo.resultSummary.summaryDate" format="yyyy-MM-dd"/>
                </p>
            </div>
        </div>　
    </div>
    

    <footer class="footer-default noprint">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script src="statics/highcharts/solid-gauge.js"></script>
<script src="statics/highcharts/variwide.js"></script>
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var days = $('#days').val();
    var gender = $('#gender').val();
    $('.print').click(function(){
        window.print();
    });
</script>
<!-- basci2 -->
<script type="text/javascript">
    var isNormalChildbirth = $('#isNormalChildbirth').val();
    var childbirthSituation = $('#childbirthSituation').val();
    var childbirthSituationArr = $('#childbirthSituation').val().split(',');
    var isHeredityDisease1 = $('#isHeredityDisease1').val();
    var isHeredityDisease2 = $('#isHeredityDisease2').val();
    var isHeredityDisease3 = $('#isHeredityDisease3').val();
    var isHeredityDisease4 = $('#isHeredityDisease4').val();
    var isAllergyHistory = $('#isAllergyHistory').val();
    var familyHeredityDisease = $('#familyHeredityDisease').val();
    var familyHeredityDiseaseArr = familyHeredityDisease.split(',');

    $("input:radio[name='isNormalChildbirth'][value='"+ isNormalChildbirth +"']").attr('checked','true');
    $("input:radio[name='isAllergyHistory'][value='"+ isAllergyHistory +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease1'][value='"+ isHeredityDisease1 +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease2'][value='"+ isHeredityDisease2 +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease3'][value='"+ isHeredityDisease3 +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease4'][value='"+ isHeredityDisease4 +"']").attr('checked','true');
    for (var i = 0, len = familyHeredityDiseaseArr.length; i < len; i++) {
        $("input:checkbox[name='familyHeredityDisease'][value='" + familyHeredityDiseaseArr[i] + "']").attr('checked','true');
    }
    for (var j = 0, llen = childbirthSituationArr.length; j < llen; j++) {
        $("input:checkbox[name='childbirthSituation'][value='" + childbirthSituationArr[j] + "']").attr('checked','true');
    }
    // 多选框赋值
    $("input:checkbox[name='childbirthSituation'][value='1']").attr('checked','true');
</script>

<!-- group -->
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var resultidGroup = $('#resultidGroup').val();
    var chart1;
    var chart2;
    var chart3;

    var babyHA,
        babyWA,
        babyHead,
        basicHA1,
        basicHA2,
        basicHA3,
        basicHA4,
        basicHA5,
        basicHA6,
        basicHA7,
        basicWA1,
        basicWA2,
        basicWA3,
        basicWA4,
        basicWA5,
        basicWA6,
        basicWA7,
        basicHead1,
        basicHead2,
        basicHead3,
        basicHead4,
        basicHead5,
        basicHead6,
        basicHead7,
        flag = 0;
    var data = "{";
        data += "'babyId':" + babyid+ ",";
        data += "'resultId':" + resultidGroup+ ",";
        data += "}";
    $.ajax({
        url: 'group2020BabyInfo',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            babyHA = json.babyHA;
            babyWA = json.babyWA;
            babyHead = json.babyHead;
            flag += 1;
        }
    })

    $.ajax({
        url: 'group2020BasicInfo',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            basicHA1 = json.basicHA1;
            basicHA2 = json.basicHA2;
            basicHA3 = json.basicHA3;
            basicHA4 = json.basicHA4;
            basicHA5 = json.basicHA5;
            basicHA6 = json.basicHA6;
            basicHA7 = json.basicHA7;

            basicWA1 = json.basicWA1;
            basicWA2 = json.basicWA2;
            basicWA3 = json.basicWA3;
            basicWA4 = json.basicWA4;
            basicWA5 = json.basicWA5;
            basicWA6 = json.basicWA6;
            basicWA7 = json.basicWA7;

            basicHead1 = json.basicHead1;
            basicHead2 = json.basicHead2;
            basicHead3 = json.basicHead3;
            basicHead4 = json.basicHead4;
            basicHead5 = json.basicHead5;
            basicHead6 = json.basicHead6;
            basicHead7 = json.basicHead7;

            flag += 1;
        }
    })


    setInterval(function() {
        if (flag === 2) {
            draw();
            flag = 0;
        }
    }, 1000)
 
    function draw() {
        
        var chartData1 =  [{
            name: '97th',
            data: basicHA2,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '85th',
            data: basicHA3,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '50th',
            data: basicHA4,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'green'
        },{
            name: '15th',
            data: basicHA5,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '3rd',
            data: basicHA6,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '实际',
            data: babyHA,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:1,
            },
            color: 'black'
        }];

        var chartData2 =  [{
            name: '1',
            data: basicWA2,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '3',
            data: basicWA3,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '4',
            data: basicWA4,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'green'
        },{
            name: '5',
            data: basicWA5,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '7',
            data: basicWA6,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '实际',
            data: babyWA,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:1,
            },
            color: 'black'
        }];


        var chartData3 =  [{
            name: '97th',
            data: basicHead2,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '85th',
            data: basicHead3,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '50th',
            data: basicHead4,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'green'
        },{
            name: '15th',
            data: basicHead5,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '3rd',
            data: basicHead6,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '实际',
            data: babyHead,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:1,
            },
            color: 'black'
        }];
        // var age = {
        //     0: 'Birth 出生',
        //     12: '1year 1岁',
        //     24: '2years 2岁',
        //     36: '3years 3岁',
        //     48: '4years 4岁',
        //     60: '5years 5岁',
        // }
        var age = {
            0: '出生',
            12: '1岁',
            24: '2岁',
            36: '3岁',
            48: '4岁',
            60: '5岁',
        }
        $('#column1').highcharts({
            chart: {
                backgroundColor:"#29b2f7",
                plotBackgroundColor: '#FFF',
                spacing: [10, 10, 0, 0]
            },
            title: {
                text: '',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: 'Length/Height(cm) 身高',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                labels:{
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                tickPositions: [45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115, 120, 125]
            },
            xAxis: {
                title: {
                    text: 'Age(completed months and years) 年龄 (整月和整年)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                // tickAmount: 20,
                tickInterval: 2,
                labels: {
                    formatter: function () {
                        if (age[this.value]) {
                            return age[this.value];
                        } else {
                            return this.value % 12;
                        }
                    },
                    style: {
                        color: 'white',
                        fontSize: '8px'
                    }
                },
            },
            legend: {
                align: 'right',
                // layout: 'vertical',
                verticalAlign: 'top',
                x: -80,
                y: -5,
                floating: true,
                itemStyle:{
                    fontSize:'8px'
                }
            },
            series: chartData1
        }, function(c){
            chart1 = c;
        });

        $('#column2').highcharts({
            chart: {
                backgroundColor:"#29b2f7",
                plotBackgroundColor: '#FFF',
                spacing: [10, 10, 0, 0]
            },
            title: {
                text: '',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '体重 Weight(kg)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                labels:{
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                tickPositions: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
            },
            xAxis: {
                title: {
                    text: 'Age(completed months and years) 年龄 (整月和整年)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                // tickAmount: 20,
                tickInterval: 2,
                labels: {
                    formatter: function () {
                        if (age[this.value]) {
                            return age[this.value];
                        } else {
                            return this.value % 12;
                        }
                    },
                    style: {
                        color: 'white',
                        fontSize: '8px'
                    }
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle',
                enabled: false
            },
            series: chartData2
        }, function(c){
            chart2 = c;
        });
        $('#column3').highcharts({
            chart: {
                backgroundColor:"#29b2f7",
                plotBackgroundColor: '#FFF',
                spacing: [10, 10, 0, 0]
            },
            title: {
                text: '',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '头围 Head circumference(cm)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                labels:{
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                tickPositions: [28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60]
            },
            xAxis: {
                title: {
                    text: 'Age(completed months and years) 年龄 (整月和整年)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                // tickAmount: 20,
                tickInterval: 2,
                labels: {
                    formatter: function () {
                        if (age[this.value]) {
                            return age[this.value];
                        } else {
                            return this.value % 12;
                        }
                    },
                    style: {
                        color: 'white',
                        fontSize: '8px'
                    }
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle'
                enabled: false
            },
            series: chartData3
        }, function(c){
            chart3 = c;
        });
        
        chart1.reflow();
        chart2.reflow();
        chart3.reflow();
    }
</script>

<!-- allergy -->
<script type="text/javascript">
    var r1 = $('#r1').val();
    var r2 = $('#r2').val();
    var r3 = $('#r3').val();
    var r4 = $('#r4').val();
    var r5 = $('#r5').val();
    var r6 = $('#r6').val();
    var r7 = $('#r7').val();
    var r8 = $('#r8').val();
    var r9 = $('#r9').val();
    var r10 = $('#r10').val();
    var r11 = $('#r11').val();
    var r12 = $('#r12').val();
    var r13 = $('#r13').val();
    var r14 = $('#r14').val();
    var r15 = $('#r15').val();

    $("input:radio[name='allergy-answer-1'][value='"+ r1 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-2'][value='"+ r2 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-3'][value='"+ r3 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-4'][value='"+ r4 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-5'][value='"+ r5 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-6'][value='"+ r6 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-7'][value='"+ r7 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-8'][value='"+ r8 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-9'][value='"+ r9 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-10'][value='"+ r10 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-11'][value='"+ r11 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-12'][value='"+ r12 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-13'][value='"+ r13 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-14'][value='"+ r14 +"']").attr('checked','true');
    $("input:radio[name='allergy-answer-15'][value='"+ r15 +"']").attr('checked','true');
</script>

<!-- physical -->
<script type="text/javascript">
    var physicalRemark = $('#physicalRemark').val();

    var hairIsNormal = $('#hairIsNormal').val();
    var hairReason = $('#hairReason').val();
    $("#answer-1-detail").text(hairReason);

    var fingernailIsNormal = $('#fingernailIsNormal').val();
    var fingernailReason = $('#fingernailReason').val();
    $("#answer-2-detail").text(fingernailReason);

    var skinIsNormal = $('#skinIsNormal').val();
    var skinReason = $('#skinReason').val();
    $("#answer-3-detail").text(skinReason);

    var faceIsNormal = $('#faceIsNormal').val();
    var faceReason = $('#faceReason').val();
    $("#answer-4-detail").text(faceReason);

    var headIsNormal = $('#headIsNormal').val();
    var headReason = $('#headReason').val();
    $("#answer-5-detail").text(headReason);

    var eyeIsNormal = $('#eyeIsNormal').val();
    var eyeReason = $('#eyeReason').val();
    $("#answer-6-detail").text(eyeReason);

    var earIsNormal = $('#earIsNormal').val();
    var earReason = $('#earReason').val();
    $("#answer-7-detail").text(earReason);

    var mouthIsNormal = $('#mouthIsNormal').val();
    var mouthReason = $('#mouthReason').val();
    $("#answer-8-detail").text(mouthReason);

    var neckIsNormal = $('#neckIsNormal').val();
    var neckReason = $('#neckReason').val();
    $("#answer-9-detail").text(neckReason);

    var lymphIsNormal = $('#lymphIsNormal').val();
    var lymphReason = $('#lymphReason').val();
    $("#answer-10-detail").text(lymphReason);

    var thoracicCavityIsNormal = $('#thoracicCavityIsNormal').val();
    var thoracicCavityReason = $('#thoracicCavityReason').val();
    $("#answer-11-detail").text(thoracicCavityReason);

    var heartIsNormal = $('#heartIsNormal').val();
    var heartReason = $('#heartReason').val();
    $("#answer-12-detail").text(heartReason);

    var lungIsNormal = $('#lungIsNormal').val();
    var lungReason = $('#lungReason').val();
    $("#answer-13-detail").text(lungReason);

    var stomachIsNormal = $('#stomachIsNormal').val();
    var stomachReason = $('#stomachReason').val();
    $("#answer-14-detail").text(stomachReason);

    var limbIsNormal = $('#limbIsNormal').val();
    var limbReason = $('#limbReason').val();
    $("#answer-15-detail").text(limbReason);

    var sexFeaturesIsNormal = $('#sexFeaturesIsNormal').val();
    var sexFeaturesReason = $('#sexFeaturesReason').val();
    $("#answer-16-detail").text(sexFeaturesReason);

    var vdIsNormal = $('#vdIsNormal').val();
    var vdReason = $('#vdReason').val();
    $("#answer-17-detail").text(vdReason);

    $("input:radio[name='answer-1'][value='"+ hairIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-2'][value='"+ fingernailIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-3'][value='"+ skinIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-4'][value='"+ faceIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-5'][value='"+ headIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-6'][value='"+ eyeIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-7'][value='"+ earIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-8'][value='"+ mouthIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-9'][value='"+ neckIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-10'][value='"+ lymphIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-11'][value='"+ thoracicCavityIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-12'][value='"+ heartIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-13'][value='"+ lungIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-14'][value='"+ stomachIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-15'][value='"+ limbIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-16'][value='"+ sexFeaturesIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-17'][value='"+ vdIsNormal +"']").attr('checked','true');



    var reg = new RegExp("<br>","g");//g,表示全部替换。
    physicalRemark = physicalRemark.replace(reg,"\n");
    $('#physicalRemarkText').html(physicalRemark);
</script>

<!-- feed -->
<script type="text/javascript">
    var feedSuggest = $('#feedSuggest').val();
    var milkTypeArr = $('#milkType').val().split(',');
    var milkRecipeArr = $('#milkRecipe').val().split(',');
    var accessoryFoodAddTimesArr = $('#accessoryFoodAddTimes').val().split(',');
    var accessoryFoodShapeArr = $('#accessoryFoodShape').val().split(',');
    var isFoodAllergy = $('#isFoodAllergy').val();
    var isOwnFood = $('#isOwnFood').val(); 
    $("input:radio[name='isFoodAllergy'][value='"+ isFoodAllergy +"']").attr('checked','true');
    $("input:radio[name='isOwnFood'][value='"+ isOwnFood +"']").attr('checked','true');
    
    for (var i = 0, len = milkTypeArr.length; i < len; i++) {
        $("input:checkbox[name='milkType'][value='" + milkTypeArr[i] + "']").attr('checked','true');
    }

    for (var j = 0, llen = milkRecipeArr.length; j < llen; j++) {
        $("input:checkbox[name='milkRecipe'][value='" + milkRecipeArr[j] + "']").attr('checked','true');
    }

    for (var k = 0, lllen = accessoryFoodAddTimesArr.length; k < lllen; k++) {
        $("input:checkbox[name='accessoryFoodAddTimes'][value='" + accessoryFoodAddTimesArr[k] + "']").attr('checked','true');
    }


    for (var m = 0, llllen = accessoryFoodShapeArr.length; m < llllen; m++) {
        $("input:checkbox[name='accessoryFoodShape'][value='" + accessoryFoodShapeArr[m] + "']").attr('checked','true');
    }

    var reg = new RegExp("<br>","g");//g,表示全部替换。
    feedSuggest = feedSuggest.replace(reg,"\n");
    $('#feedRemarkText').html(feedSuggest);
</script>

<!-- 2016 -->
<!-- <script type="text/javascript">
    var dq_fix = <s:property value="allTestResultVo.result2016.dq"/>;
    var growth_fix = <s:property value="allTestResultVo.result2016.growth"/>;
    $("#DQ").html(dq_fix);
    $("#growth").html(growth_fix);
    var a1 = 0;
    a1 = <s:property value="allTestResultVo.result2016.scoreSport"/>;//智龄
    var a2 = 0;
    a2 = <s:property value="allTestResultVo.result2016.scoreAct"/>;
    var a3 = 0;
    a3 = <s:property value="allTestResultVo.result2016.scoreAdapt"/>;
    var a4 = 0;
    a4 = <s:property value="allTestResultVo.result2016.scoreLanguage"/>;
    var a5 = 0;
    a5 = <s:property value="allTestResultVo.result2016.scoreSocial"/>;
    var b1 = 0;
    b1 = <s:property value="scoreSport"/>;//发育商
    var b2 = 0;
    b2 = <s:property value="allTestResultVo.scoreAct"/>;
    var b3 = 0;
    b3 = <s:property value="allTestResultVo.scoreAdapt"/>;
    var b4 = 0;
    b4 = <s:property value="allTestResultVo.scoreLanguage"/>;
    var b5 = 0;
    b5 = <s:property value="allTestResultVo.scoreSocial"/>;
    var a = [b1, b2, b3, b4, b5];
    a = a.sort();
    var max = a[0];
    if (max < 100) {
        max = 120;
    } else if (max < 150) {
        max = 150;
    } else if (max < 200) {
        max = 200;
    }

    $(function () {
        var chart1,
            chart2;
        $('#column').highcharts({
            chart: {
                type: ''
            },
            credits: {
                enabled: false
            },
            legend: {
                enabled: false
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: [
                    '大运动',
                    '精细动作',
                    '适应能力',
                    '语言',
                    '社交行为'
                ]
            },
            yAxis: [ {
                title: {
                    text: '发育商'
                },
                min: 30,
                max: 200,
                labels: {
                    useHTML: true,
                    formatter: function () {
                        if(this.value == 70){
                            return '<span style="color:red">' +
                                this.value + '</span>';
                        }
                        if(this.value == 80){
                            return '<span style="color:orange;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 110){
                            return '<span style="color:#5029c8">' +
                                this.value + '</span>';
                        }
                        if(this.value == 130){
                            return '<span style="color:blue">' +
                                this.value + '</span>';
                        }
                        if(this.value == 180){
                            return '<span style="color:green">' +
                                this.value + '</span>';
                        }
                    }
                },
                tickPositions: [0, 70, 80, 110, 130, 180],
                opposite: true
            }],
            tooltip: {
                shared: true
            },
            plotOptions: {
                column: {
                    grouping: false,
                    shadow: false,
                    borderWidth: 0
                }
            },
            series: [{
                name: '发育商',
                color: '#000000',
                data: [b1, b2, b3, b4, b5],
                pointPadding: 0.3,
                pointPlacement: 0.2,
                yAxis: 0
            }]
        }, function(c){
            chart1 = c;
        });
        $('#spider').highcharts({
            chart: {
                polar: true,
                type: 'area'
            },
            credits: {
                enabled: false
            },
            title: {
                text: '',
                x: -80
            },
            pane: {
                size: '80%'
            },
            xAxis: {
                categories: ['大运动',
                    '精细动作',
                    '适应能力',
                    '语言',
                    '社交行为'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                max: max,
                min: 30,
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'rgb(144, 238, 126)',
                    value: 70,
                    width: 2,
                    label: {
                        text: '70',
                        y: 30
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 85,
                    width: 2,
                    label: {
                        text: '85',
                        y: 10
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 115,
                    width: 2,
                    label: {
                        text: '115',
                        y: 10
                    }
                }],
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '发育商',
                data: [b1, b2, b3, b4, b5],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
        var resultID2016 = $('#resultID2016').val()
        var instructions = [];
        var str1 = '';
        var str2 = '';
        var str3 = '';
        var str4 = '';
        var str5 = '';
        $.ajax({
            url: 'getRemark',
            type: 'post',
            data: {
                'resultID': resultID2016
            },
            success:function (json) {
                instructions = json.instructions
                item = {}
                for (var i = 0, len = instructions.length; i < len ; i++) {
                    item = instructions[i];
                    switch (item['type']) {
                        case 1:
                            str1 += item['content'];
                            str1 += '<br/>';
                            break;
                        case 2:
                            str2 += item['content'];
                            str2 += '<br/>';
                            break;
                        case 4:
                            str3 += item['content'];
                            str3 += '<br/>';
                            break;
                        case 3:
                            str4 += item['content'];
                            str4 += '<br/>';
                            break;
                        case 5:
                            str5 += item['content'];
                            str5 += '<br/>';
                            break;
                    } 
                }
                $('#remark1').html(str1)
                $('#remark2').html(str2)
                $('#remark3').html(str3)
                $('#remark4').html(str4)
                $('#remark5').html(str5)
            }
        })
        str6 = "语言、社交、适应能力:"
        str7 = "运动发育:"
        // 宋佳医生建议
        $.ajax({
            url: 'getRemarkHeMa',
            type: 'post',
            data: {
                'resultID': resultID2016
            },
            success:function (json) {
                instructions = json.instructions
                item = {}
                for (var i = 0, len = instructions.length; i < len ; i++) {
                    item = instructions[i];
                    switch (item['type']) {
                        case 6:
                            
                            str6 += '\n';
                            str6 += '&nbsp;&nbsp;';
                            str6 += item['content'];
                            break;
                        case 7:
                            
                            str7 += '\n';
                            str7 += '&nbsp;&nbsp;';
                            str7 += item['content'];
                            break;
                    } 
                }
                $('#doctorRemark2016').html(str6 + '\n' + str7)
            }
        })
        $('#testerName').val($("#testerName2016").val());
    });
</script> -->


<!-- summary -->
<script type="text/javascript">
    var summaryRemark = $('#summaryRemark').val();
    var reg = new RegExp("<br>","g");//g,表示全部替换。
    summaryRemark = summaryRemark.replace(reg,"\n");
    $('#summaryRemarkText').html(summaryRemark);
</script>



</body>
</html>

