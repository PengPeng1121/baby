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
        .print{
            position: fixed;
            top: 700px;
            right: 300px;
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
            position: relative;
            z-index: 1;
            top: 240px;
            left: 80px;
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

        #physical .item-line{
            height: 40px;
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
        #test2016 #table2016-1, #table2016-2,  #table2016-4, #doctorRemark2016{
            width: 60%;
            position: relative;
            left: 60px;
            top: 100px;
        }
        #test2016 #table2016-3{
            width: 60%;
            position: relative;
            left: 60px;
            top: 100px;
        }
        #test2016 #tester2016{
            position: relative;
            left: 60px;
            top: 100px;
        }


        #feel #tableFeel1, #tableFeel2,  #tableFeel3, #doctorRemarkFeel{
            
            width: 65%;
            position: relative;
            left: 50px;
            top: 100px;
            margin-bottom: 0px;
            font-size: 12px;
        }
        #feel #testerFeel{
            position: relative;
            left: 60px;
            top: 100px;
        }

        #blood #bloodImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 290px;
            left: 80px;
        }


        #blood #name-table{
            width: 55%;
            border: 0;
            position: relative;
            top: 120px;
            left: 70px;
            font-size: 16px
        }

        #bone #boneImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 290px;
            left: 80px;
        }

        #bone #name-table{
            width: 55%;
            border: 0;
            position: relative;
            top: 120px;
            left: 70px;
            font-size: 16px
        }

        #eye #eyeImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 240px;
            left: 80px;
        }

        #BMD #BMDImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 240px;
            left: 80px;
        }

        #micro #microImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 290px;
            left: 80px;
        }


        #micro #boneImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 600px;
            left: 80px;
        }

        #micro #name-table{
            width: 55%;
            border: 0;
            position: relative;
            top: 120px;
            left: 70px;
            font-size: 16px
        }


        #urine #urineImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 240px;
            left: 80px;
        }

        #urine #name-table{
            width: 55%;
            border: 0;
            position: relative;
            top: 120px;
            left: 70px;
            font-size: 16px
        }

        #ecg #ECGImg{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 290px;
            left: 80px;
        }

        #ecg #name-table{
            width: 55%;
            border: 0;
            position: relative;
            top: 120px;
            left: 70px;
            font-size: 16px
        }

        #ear #earImg1, #earImg2{
            width: 650px;
            position: relative;
            z-index: 1;
            top: 240px;
            left: 80px;
        }

        #attention #name-table{
            width: 55%;
            border: 0;
            position: relative;
            top: 120px;
            left: 70px;
            font-size: 16px
        }
        #attention #table-main{
            border: 0px;
            margin: 0; 
            width: 60%;
            position: relative;
            left: 70px;
            top: 270px;
        }
        #attention #table-1{
            width: 60%;
            position: relative;
            left: 70px;
            top: 300px;
        }

        #tooth #name-table{
            position: relative;
            left: 70px;
            top: 90px;
            width: 25%;
            font-size: 16px;
        }
        #tooth #content-table{
            width: 300px;
            
            border: 0;
            position: relative;
            top: 30px;
            left: 80px;
            display: inline-block;
        }
        #tooth #remarkTextTooth{
            position: relative;
            left: 100px;
            top: 50px;
            background-color: transparent;
        }

        #tooth #tooth-img{
            position: relative;
            left: -520px;
            top: 350px;
        }

        #tooth #info-table{
            position: relative;
            top: 400px;
            left: 220px;
        }


        #tooth .info1{
            width: 0;
            height: 0;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 20px solid #000;
            z-index: 100;
        }
        #tooth .info2{
            border-radius: 50%;
            width: 20px;
            height: 20px;
            background-color: #000; 
        }
        #tooth .info3 {
            position: relative;
            width: 20px;
            height: 20px;
        }

        #tooth .info3::before,
        #tooth .info3::after {
            position: absolute;
            content: ' ';
            background-color: #000;
            left: 10px;
            width: 2px;
            height: 20px;
        }

        #tooth .info3::before {
            transform: rotate(45deg);
        }

        #tooth .info3::after {
            transform: rotate(-45deg);
        }

        #tooth .style0{
            width: 0;
            height: 0;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 20px solid #FFF;
            position: relative;
            z-index: 100;
        }


        #tooth .style1{
            width: 0;
            height: 0;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 20px solid #000;
            position: relative;
            z-index: 100;
        }
        #tooth .style2{
            border-radius: 50%;
            width: 20px;
            height: 20px;
            background-color: #000;
            position: relative;
            z-index: 100; 
        }
        #tooth .style3 {
            width: 20px;
            height: 20px;
            position: relative;
            z-index: 100;
        }

        #tooth .style3::before{
            position: absolute;
            content: ' ';
            background-color: #000;
            left: 10px;
            width: 1px;
            height: 20px;
            z-index: 100;
        }

        #tooth .style3::after {
            position: absolute;
            content: ' ';
            background-color: #000;
            left: 10px;
            width: 1px;
            height: 20px;
            z-index: 100;
        }

        #tooth .style3::before {
            transform: rotate(45deg);
        }

        #tooth .style3::after {
            transform: rotate(-45deg);
        }
        
       
    </style>
    <style type="text/css" media="print">
        @page
        {
            size:  auto portrait;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
        .noprint {
            display: none
        }
        div{
            padding: 0px !important;
            margin: 0px !important;
        }
        input[type="radio"] {
            display: none !important;
        }
        input[type='radio'] + label:before{
            content: "" !important;
            display: inline-block !important;
            width: 20px !important;
            height: 20px !important;
            border: 2px solid #df9390 !important;
            border-radius:50% !important;
            position: relative !important;
            top: 5px !important;
        }
        input[type='radio']:checked + label:before{
            background-color: #000 !important;
            box-shadow: inset 0 0 0 3px #fff !important;
        }
        input[type="checkbox"] {
            display: none !important;
        }
        input[type='checkbox'] + label:before{
            content: "" !important;
            display: inline-block !important;
            width: 20px !important;
            height: 20px !important;
            border: 2px solid #df9390 !important;
            border-radius:50% !important;
            position: relative !important;
            top: 5px !important;
        }
        input[type='checkbox']:checked + label:before{
            background-color: #000 !important;
            box-shadow: inset 0 0 0 3px #fff !important;
        }

        #name-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
        }
        #name-table{
            width: 300px !important;
        }


        #basci1 #faceImg{
            width: 150px !important;
            position: absolute !important;
            z-index: 1 !important;
            top: 200px !important;
            left: 100px !important;
        }
        #basic1 #table1, #table2{
            width: 52% !important;
        }

        #basic2 #table-main{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: relative !important;
            left: 60px !important;
            top: 170px !important;
        }
        #basic2 #table-main1{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: relative !important;
            left: 60px !important;
            top: 235px !important;
        }
        #basic2 #table-main2{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: relative !important;
            left: 60px !important;
            top: 295px !important;
        }
        #basic2 #table-main3{
            border: 0px !important;
            margin: 0 !important; 
            width: 85% !important;
            position: relative !important;
            left: 60px !important;
            top: 295px !important;
        }
        #group #content-table{
            top: 60px !important;
        }

        #group .column-body{
            width: 500px !important;
            height: 240px !important;
            margin-left: 50px !important;
            margin-top: 5px !important;
        }

        #feed #table-main{
            border: 0px !important;
            margin: 0 !important;
            width: 80% !important;
            position: relative !important;
            left: 60px !important;
            top: 200px !important;
        }
        #test2016 #table2016-1, #table2016-2, #table2016-3, #table2016-4, #doctorRemark2016{
            width: 80%;
            position: relative;
            left: 60px;
            top: 100px;
        }
        #test2016 #tester2016{
            position: relative;
            left: 60px;
            top: 100px;
        }

        #feel #tableFeel1, #tableFeel2,  #tableFeel3, #doctorRemarkFeel{
            width: 88%;
        }
        #feel #testerFeel{
            position: relative;
            left: 60px;
            top: 100px;
        }

        #summary #birth-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
        }
        #summary #name-table{
            width: 700px !important;
        }

        #attention #name-table{
            width: 700px !important;
            top: 140px;
            left: 70px;
            
        }
        #attention #table-main{ 
            width: 80%;
            left: 70px;
            top: 270px;
        }
        #attention #table-1{
            width: 80%;
            left: 70px;
            top: 300px;
        }

        #tooth #name-table{
            position: relative;
            left: 70px;
            top: 90px;
            width: 60%;
            font-size: 16px;
        }
        #tooth #content-table{
            width: 300px;
            
            border: 0;
            position: relative;
            top: 180px;
            left: 100px;
            display: inline-block;
        }
        #tooth #remarkTextTooth{
            position: relative;
            left: 100px;
            top: 200px;
            background-color: transparent;
        }

        #tooth #tooth-img{
            position: relative;
            left: 190px;
            top: 200px;
        }

        #tooth #info-table{
            position: relative;
            top: 220px;
            left: 250px;
        }
        .info1{
            width: 0 !important;
            height: 0 !important;
            border-left: 10px solid transparent !important;
            border-right: 10px solid transparent !important;
            border-bottom: 20px solid #000 !important;
            position: absolute !important;
            z-index: 100 !important;
            
            top: 5px !important;
        }
        .info2{
            border-radius: 50% !important;
            width: 20px !important;
            height: 20px !important;
            background-color: #000 !important;
        }
        .info3 {
            position: relative !important;
            width: 20px !important;
            height: 20px !important;
        }

        .info3::before,
        .info3::after {
            position: absolute !important;
            content: ' ' !important;
            background-color: #000 !important;
            left: 10px !important;
            width: 2px !important;
            height: 20px !important;
        }

        .info3::before {
            transform: rotate(45deg) !important;
        }

        .info3::after {
            transform: rotate(-45deg) !important;
        }
        .tooth-icon{
            transform:translate(55px, -150px) !important;
            -webkit-transform:translate(55px, -150px) !important;  
            -moz-transform:translate(55px, -150px) !important;   
        }

        #tooth .style0{
            width: 0 !important;
            height: 0 !important;
            border-left: 10px solid transparent !important;
            border-right: 10px solid transparent !important;
            border-bottom: 20px solid #FFF !important;
            position: relative !important;
            z-index: 100 !important;
        }


        #tooth .style1{
            width: 0 !important;
            height: 0 !important;
            border-left: 10px solid transparent !important;
            border-right: 10px solid transparent !important;
            border-bottom: 20px solid #000 !important;
            position: relative !important;
            z-index: 100 !important;
        }
        #tooth .style2{
            border-radius: 50% !important;
            width: 20px !important;
            height: 20px !important;
            background-color: #000 !important;
            position: relative !important;
            z-index: 100 !important;
        }
        #tooth .style3 {
            width: 20px !important;
            height: 20px !important;
            position: relative !important;
            z-index: 100 !important;
        }

        #tooth .style3::before{
            position: absolute !important;
            content: ' ' !important;
            background-color: #000 !important;
            left: 10px !important;
            width: 1px !important;
            height: 20px !important;
            z-index: 100 !important;
        }

        #tooth .style3::after {
            position: absolute !important;
            content: ' ' !important;
            background-color: #000 !important;
            left: 10px !important;
            width: 1px !important;
            height: 20px !important;
            z-index: 100 !important;
        }

        #tooth .style3::before {
            transform: rotate(45deg) !important;
        }

        #tooth .style3::after {
            transform: rotate(-45deg) !important;
        }

        #eyeImg, #bloodImg, #boneImg, #BMDImg, #microImg, #earImg1, #earImg2, #urineImg, #ECGImg{
            left: 70px !important;
        }


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">
    <div>
        
    
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
        <input type="hidden" id="dq_fix" value="<s:property value="allTestResultVo.result2016.dq"/>">
        <input type="hidden" id="growth_fix" value="<s:property value="allTestResultVo.result2016.growth"/>">
        <input type="hidden" id="testerName2016" value="<s:property value="otherResultVo.record2016.testerName"/>">
        
        <!-- blood -->

        <!-- summary -->
        <input id="summaryRemark" type="hidden" value="<s:property value="allTestResultVo.resultSummary.summary"/>">

        <!-- feel -->
        <input type="hidden" id="feelRemark" value="<s:property value="otherResultVo.recordFeel2020.remark"/>">

        <input type="hidden" id="a1Feel" value="<s:property value="allTestResultVo.resultFeel2020.a1"/>">
        <input type="hidden" id="a2Feel" value="<s:property value="allTestResultVo.resultFeel2020.a2"/>">
        <input type="hidden" id="a3Feel" value="<s:property value="allTestResultVo.resultFeel2020.a3"/>">
        <input type="hidden" id="a4Feel" value="<s:property value="allTestResultVo.resultFeel2020.a4"/>">
        <input type="hidden" id="a5Feel" value="<s:property value="allTestResultVo.resultFeel2020.a5"/>">
        <input type="hidden" id="a6Feel" value="<s:property value="allTestResultVo.resultFeel2020.a6"/>">


        <!-- attention -->

        <input id="a1attention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.a1"/>">
        <input id="a2attention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.a2"/>">
        <input id="a3attention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.a3"/>">
        <input id="a4attention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.a4"/>">
        <input id="a5attention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.a5"/>">
        <input id="scoreAttention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.score"/>">
        <input id="remarkAttention" type="hidden" value="<s:property value="allTestResultVo.resultAttention.suggest"/>">


        <!-- tooth -->

        <input id="attentionBrushWay" type="hidden" value="<s:property value="allTestResultVo.resultTooth.attentionBrushWay"/>">
        <input id="attentionBrushHabit" type="hidden" value="<s:property value="allTestResultVo.resultTooth.attentionBrushHabit"/>">
        <input id="attentionTeethSituation" type="hidden" value="<s:property value="allTestResultVo.resultTooth.attentionTeethSituation"/>">
        <input id="attentionFu" type="hidden" value="<s:property value="allTestResultVo.resultTooth.attentionFu"/>">
        <input id="remarkTooth" type="hidden" value="<s:property value="allTestResultVo.resultTooth.remark"/>">
        
        <input id="leftUp1" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp1"/>">
        <input id="leftUp2" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp2"/>">
        <input id="leftUp3" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp3"/>">
        <input id="leftUp4" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp4"/>">
        <input id="leftUp5" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp5"/>">
        <input id="leftUp6" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp6"/>">
        <input id="leftUp7" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftUp7"/>">
        <input id="rightUp1" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp1"/>">
        <input id="rightUp2" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp2"/>">
        <input id="rightUp3" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp3"/>">
        <input id="rightUp4" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp4"/>">
        <input id="rightUp5" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp5"/>">
        <input id="rightUp6" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp6"/>">
        <input id="rightUp7" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightUp7"/>">
        
        <input id="leftDown1" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown1"/>">
        <input id="leftDown2" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown2"/>">
        <input id="leftDown3" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown3"/>">
        <input id="leftDown4" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown4"/>">
        <input id="leftDown5" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown5"/>">
        <input id="leftDown6" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown6"/>">
        <input id="leftDown7" type="hidden" value="<s:property value="allTestResultVo.resultTooth.leftDown7"/>">
        <input id="rightDown1" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown1"/>">
        <input id="rightDown2" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown2"/>">
        <input id="rightDown3" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown3"/>">
        <input id="rightDown4" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown4"/>">
        <input id="rightDown5" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown5"/>">
        <input id="rightDown6" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown6"/>">
        <input id="rightDown7" type="hidden" value="<s:property value="allTestResultVo.resultTooth.rightDown7"/>">
    </div>

    <s:if test="allTestResultVo.resultBasic1">
    <div class="container" class="hemaFront" id="basic1">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent; margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2Boy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2Girl.jpg">
                </s:if>

                <span style="display: none;">
                    <s:property value="allTestResultVo.resultBasic1.headImgUrl"/>
                </span>
                <img id="faceImg" src="<s:property value="allTestResultVo.resultBasic1.headImgUrl"/>"  onerror="javascript:this.src='statics/img/logoError.png';">
                

                <table style="width: 38%;
                    border: 0;
                    position: relative;
                    top: 40px;
                    left: 270px;
                    font-size: 16px"
                    id="table1">
                    <tr  class="line">

                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/name1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/name2.png">
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
                            <img class="line-img" src="statics/img/nick2.png">
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
                            <img class="line-img" src="statics/img/gender2.png">
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
                            <img class="line-img" src="statics/img/birth2.png">
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
                    top: 100px;
                    left: 270px;
                    font-size: 16px"
                    id="table2">
                    <tr class="line">
                            
                        <td>
                            <s:if test="baby.gender == 1">
                            <img class="line-img" src="statics/img/nation1.png">
                            </s:if>
                            <s:if test="baby.gender == 0">
                            <img class="line-img" src="statics/img/nation2.png">
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
                            <img class="line-img" src="statics/img/add2.png">
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
                            <img class="line-img" src="statics/img/phone2.png">
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
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg7Boy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg7Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg7Girl.jpg">
                </s:if>

                <table style="width: 35%;
                        border: 0;
                        position: relative;
                        top: 80px;
                        left: 50px;
                        font-size: 16px">
                    <tr>
                        <td style=" width: 100px; padding-left: 15px">
                            <span style="letter-spacing: 18px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                        </td>
                        <td  id="name" style="border-bottom: 1px solid #df938f;padding-left: 0px; width: 250px"><s:property value="baby.name"/></td>
                    </tr>
                </table>


                <table id="table-main" align="center" style="border: 0px;margin: 0; width: 60%;position: relative;left: 70px;top: 155px;">
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

                                <span style="margin-left: 30px">
                                    是否早产:
                                </span>
                                <span style="margin-left: 10px">
                                    <s:if test="allTestResultVo.resultBasic2.isPremature == 1">是</s:if><s:else>否</s:else>
                                </span>


                                <span style="margin-left: 60px">
                                    宝贝出生体重:   
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultBasic2.babyBirthWeight"/>      kg
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
                <table  id="table-main1" align="center"  style="border: 0px;margin: 0; width: 60%;position: relative;top: 235px;left: 60px;">
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
                <table  id="table-main2"  align="center"  style="border: 0px;margin: 0;width: 60%;position: relative;top: 295px;left: 60px;">
                    <tbody style="width: 100%">
                        <tr>
                            <td colspan="4">
                                父母系三代有无先天家族遗传性疾病:
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="0" id="checkbox-answer-2-1">
                                <label for="checkbox-answer-2-1" style="font-weight: normal"> 无</label>
                            </td>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="1" id="checkbox-answer-2-2">
                                <label for="checkbox-answer-2-2" style="font-weight: normal"> 高血压</label>
                            </td>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="2" id="checkbox-answer-2-3">
                                <label for="checkbox-answer-2-3" style="font-weight: normal"> 冠心病</label>
                            </td>
                            <td style="width: 180px">
                                <input type="checkbox" name="familyHeredityDisease"  value="3" id="checkbox-answer-2-4">
                                <label for="checkbox-answer-2-4" style="font-weight: normal"> 糖尿病</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <input type="checkbox" name="familyHeredityDisease"  value="4" id="checkbox-answer-2-5">
                                <label for="checkbox-answer-2-5" style="font-weight: normal"> 哮喘</label>
                            </td>
                            <td>    
                                <input type="checkbox" name="familyHeredityDisease"  value="5" id="checkbox-answer-2-6">
                                <label for="checkbox-answer-2-6" style="font-weight: normal"> 癫痫</label>
                            </td>
                            <td colspan="2">
                                <input type="checkbox" name="familyHeredityDisease"  value="6" id="checkbox-answer-2-7">
                                <label for="checkbox-answer-2-7" style="font-weight: normal"> 神经疾病</label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table  id="table-main3" align="center"  style="border: 0px;margin: 0;width: 60%;position: relative;top: 300px;left: 60px;">
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
                                <input type="radio" name="isAllergyHistory" value="1"   id="radio-answer-9-1">
                                <label for="radio-answer-9-1" style="width: 50px;margin-left: 20px;font-weight: normal;"> 是</label>

                                <input type="radio" name="isAllergyHistory" value="0"   id="radio-answer-9-0">
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
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Boy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Girl.jpg">
                </s:if>
                <table style="width: 800px; height:1122px;border:0;font-size: 16px;font-weight: bold; position: relative;top: 60px;" id="content-table">
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
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg3Boy.jpg"> -->
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
                        <td class="col-md-12">
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
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg4Boy.jpg"> -->
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
                        <td style=" width: 100px; padding-left: 15px">
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
                            <textarea id="physicalRemarkText" rows="3" style="resize:none;border: 0;width: 100%; background-color: transparent; font-weight: normal;"></textarea>
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
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Boy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Girl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>

                        <td class="col-md-12">
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
                                    <s:property value="allTestResultVo.resultFeed.currentMilkYield"/> ml/天
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
                                    <s:property value="allTestResultVo.resultFeed.milkRecipeInfo"/> 
                                </span>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    辅食添加情况:
                                </span>
                                <span style="margin-left: 60px">
                                    <s:property value="allTestResultVo.resultFeed.accessoryFoodSituation"/> 
                                </span>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span>
                                    食物过敏情况
                                </span>
                                

                                <input type="radio" name="isFoodAllergy" value="0"   id="radio-answer-1-0">
                                <label for="radio-answer-1-0" style="width: 50px;margin-left: 20px;font-weight: normal;"> 无</label>

                                <input type="radio" name="isFoodAllergy" value="1"   id="radio-answer-1-1">
                                <label for="radio-answer-1-1" style="width: 50px;margin-left: 5px;font-weight: normal;"> 有</label>
                                <input type="radio" name="isFoodAllergy" value="2"   id="radio-answer-1-2">
                                <label for="radio-answer-1-2" style="width: 80px;margin-left: 5px;font-weight: normal;"> 暂不确定</label>
                                
                                <s:property value="allTestResultVo.resultFeed.foodAllergySituation"/>

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
                                    <s:property value="allTestResultVo.resultFeed.accessoryFoodAddDate"/> 
                                </span>
                            </td>
                        </tr>

                        <tr class="item-line">
                            <td>
                                <span>
                                    是否自主进食
                                </span>
                                <input type="radio" name="isOwnFood" value="1"   id="radio-answer-2-1">
                                <label for="radio-answer-2-1" style="width: 60px;margin-left: 26px;font-weight: normal;"> 是</label>

                                <input type="radio" name="isOwnFood" value="0"   id="radio-answer-2-0">
                                <label for="radio-answer-2-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 否</label>
                                
                                <s:property value="allTestResultVo.resultFeed.ownFoodSituation"/>

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
                                    <s:property value="allTestResultVo.resultFeed.shitTimes"/>
                                </span>
                                <span style="margin-left: 100px">
                                    大便性状:
                                </span>
                                <span>
                                    <s:property value="allTestResultVo.resultFeed.shitShape"/>
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

    <s:if test="allTestResultVo.resultTooth">
    <div class="container" class="hemaFront" id="tooth" style="height: 1122px;overflow: hidden;">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg8Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg8Girl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>
                        <td class="col-md-12">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                    </tr>
                </table>
                <table  id="content-table">
                    <tr class="item-line">
                        <td class="item">
                            注意刷牙方法
                        </td>
                        <td style="width: 85px">
                            <input type="radio" name="answer-1-tooth" value="1"   id="radio-answer-1-1-tooth">
                            <label for="radio-answer-1-1-tooth"></label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            注意刷牙习惯
                        </td>
                        <td>
                            <input type="radio" name="answer-2-tooth" value="1"   id="radio-answer-2-1-tooth">
                            <label for="radio-answer-2-1-tooth"></label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            注意换牙后的歪斜情况
                        </td>
                        <td>
                            <input type="radio" name="answer-3-tooth" value="1"   id="radio-answer-3-1-tooth">
                            <label for="radio-answer-3-1-tooth"></label>
                        </td>
                    </tr>
                    <tr class="item-line">
                        <td class="item">
                            已涂氟
                        </td>
                        <td>
                            <input type="radio" name="answer-4-tooth" value="1"   id="radio-answer-4-1-tooth">
                            <label for="radio-answer-4-1-tooth"></label>
                        </td>
                    </tr>
                </table>
                <textarea id="remarkTextTooth" rows="3" style="resize:none;border: 0;width: 350px;height: 120px;background-color: transparent;"></textarea>
                <!-- 牙图 -->
                <img id="tooth-img" src="statics/img/tooth.jpg">
                
                <table  id="info-table">
                    <tr>
                        <td style="width: 30px">
                            <div class="info3"></div>
                        </td>
                        <td style="width: 60px"> 
                            未生长
                        </td>
                        <td style="width: 30px">
                            <div class="info1"></div>
                        </td>
                        <td style="width: 60px"> 
                            歪斜
                        </td>
                        <td style="width: 30px">
                            <div class="info2"></div>
                        </td>
                        <td style="width: 60px"> 
                            龋齿
                        </td>
                    </tr>
                </table>

                <!-- 点 -->
                <div class="rightUp1 tooth-icon " style="top: -218px;left: 323px;"></div>
                <div class="rightUp2 tooth-icon " style="top: -226px;left: 280px;"></div>
                <div class="rightUp3 tooth-icon " style="top: -212px;left: 253px;"></div>
                <div class="rightUp4 tooth-icon " style="top: -200px;left: 225px;"></div>
                <div class="rightUp5 tooth-icon " style="top: -184px;left: 210px;"></div>
                <div class="rightUp6 tooth-icon " style="top: -163px;left: 202px;"></div>
                <div class="rightUp7 tooth-icon " style="top: -137px;left: 197px;"></div>

                <div class="leftUp1 tooth-icon " style="top: -255px;left: 371px;"></div>
                <div class="leftUp2 tooth-icon " style="top: -263px;left: 415px;"></div>
                <div class="leftUp3 tooth-icon " style="top: -247px;left: 442px;"></div>
                <div class="leftUp4 tooth-icon " style="top: -238px;left: 466px;"></div>
                <div class="leftUp5 tooth-icon " style="top: -227px;left: 485px;"></div>
                <div class="leftUp6 tooth-icon " style="top: -203px;left: 494px;"></div>
                <div class="leftUp7 tooth-icon " style="top: -177px;left: 497px;"></div>


                <div class="rightDown7 tooth-icon " style="top: 104px;left: 197px;"></div>
                <div class="rightDown6 tooth-icon " style="top: 124px;left: 202px;"></div>
                <div class="rightDown5 tooth-icon " style="top: 146px;left: 210px;"></div>
                <div class="rightDown4 tooth-icon " style="top: 161px;left: 225px;"></div>
                <div class="rightDown3 tooth-icon " style="top: 172px;left: 253px;"></div>
                <div class="rightDown2 tooth-icon " style="top: 187px;left: 280px;"></div>
                <div class="rightDown1 tooth-icon " style="top: 179px;left: 323px;"></div>

                <div class="leftDown7 tooth-icon " style="top: 63px;left: 497px;"></div>
                <div class="leftDown6 tooth-icon " style="top: 88px;left: 494px;"></div>
                <div class="leftDown5 tooth-icon " style="top: 108px;left: 485px;"></div>
                <div class="leftDown4 tooth-icon " style="top: 123px;left: 466px;"></div>
                <div class="leftDown3 tooth-icon " style="top: 133px;left: 442px;"></div>
                <div class="leftDown2 tooth-icon " style="top: 147px;left: 415px;"></div>
                <div class="leftDown1 tooth-icon " style="top: 139px;left: 371px;"></div>
            </div>
        </div>　
    </div>    
    </s:if>


    <s:if test="allTestResultVo.resultFeel2020">
    <div class="container" class="hemaFront" id="feel" style="height: 1122px;overflow: hidden;">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgFeelBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgFeelGirl.jpg">
                </s:if>
                <table id="tableFeel1">
                    <tbody>
                        <tr>
                            <td class="col-md-3">测评日期:<s:date name="allTestResultVo.resultFeel2020.time" format="yyyy-MM-dd"/></td>
                        </tr>
                    </tbody>
                </table>
                <table class="table" id="tableFeel2">
                    <tbody>
                        <tr>
                            <td style="padding: 0px;width: 40%;">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <td class="col-md-4" style="font-weight: bold;">评定项目</td>
                                        <td class="col-md-3" style="font-weight: bold;">原始分</td>
                                        <td class="col-md-3" style="font-weight: bold;">T值</td>
                                        <td class="col-md-4" style="font-weight: bold;">评定结果</td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1.前脑平衡和大脑双侧分化</td>
                                        <td><s:property value="allTestResultVo.resultFeel2020.a1"/></td>
                                        <td id="b1Feel"></td>
                                        <td id="r1Feel"></td>
                                    </tr>

                                    <tr>
                                        <td>2.脑神经心理抑制困难</td>
                                        <td><s:property value="allTestResultVo.resultFeel2020.a2"/></td>
                                        <td id="b2Feel"></td>
                                        <td id="r2Feel"></td>
                                    </tr>
                                    <tr>
                                        <td>3.触觉防御过多及反应不足</td>
                                        <td><s:property value="allTestResultVo.resultFeel2020.a3"/></td>
                                        <td id="b3Feel"></td>
                                        <td id="r3Feel"></td>
                                    </tr>
                                    <tr>
                                        <td>4.发育期运动障碍</td>
                                        <td><s:property value="allTestResultVo.resultFeel2020.a4"/></td>
                                        <td id="b4Feel"></td>
                                        <td id="r4Feel"></td>
                                    </tr>
                                    <tr>
                                        <td>5.视觉空间，形态</td>
                                        <td><s:property value="allTestResultVo.resultFeel2020.a5"/></td>
                                        <td id="b5Feel"></td>
                                        <td id="r5Feel"></td>
                                    </tr>
                                    <tr>
                                        <td>6.本体觉（重力不安症）</td>
                                        <td><s:property value="allTestResultVo.resultFeel2020.a6"/></td>
                                        <td id="b6Feel"></td>
                                        <td id="r6Feel"></td>
                                    </tr>
                                    </tbody>
                                </table> 
                            </td>
                            <td style="padding: 0px;width: 60%;">
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td style="border:0px">
                                                <div id="columnFeel"></div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="table" id="tableFeel3">
                    <tbody>
                        <tr>
                            <td style="width: 16%; font-weight: bold; padding: 5px 8px;">
                                视觉集中训练
                            </td>
                            <td style="width: 16%; font-weight: bold; padding: 5px 8px;">
                                视觉追踪训练
                            </td>
                            <td style="width: 16%; font-weight: bold; padding: 5px 8px;">
                                听觉统合训练
                            </td>
                            <td style="width: 16%; font-weight: bold; padding: 5px 8px;">
                                触觉训练
                            </td>
                            <td style="width: 16%; font-weight: bold; padding: 5px 8px;">
                                平衡感觉训练
                            </td>
                            <td style="width: 16%; font-weight: bold; padding: 5px 8px;">
                                本体感觉训练
                            </td>
                        </tr>
                        <tr style="border-bottom: 1px solid #ccc">
                            <td id="remark1Feel">
                                1.抱住孩子的头，叫孩子的名字，并深情看孩子让孩子做出反应。<br/>2.准备玩具，和孩子相对而坐。孩子会东张西望，这时候拿出准备好的玩具，放到孩子眼前，吸引孩子目光，让孩子的视线随着玩具移到目前的任务上。
                            </td>
                            <td id="remark2Feel">
                                1.让孩子在运动中踢球，让孩子学会按住滚动的球。<br/>2.让孩子用球扔向另一正在滚动的球。<br/>3.准备好一间房间，一只手电筒。把窗关上，使屋内黑暗，打开电筒的开关，照向墙壁，叫孩子去抓墙上的光。
                            </td>
                            <td id="remark3Feel">
                                1.找寻声音。(3-5分钟)<br/>2.模仿自然界的声音。(7-8分钟)<br/>3.听动训练。(5-10分钟)<br/>4.辨别声音。(5-10分钟)
                            </td>
                            <td id="remark4Feel">
                                1.通过不同的刷子、不同布质的毛巾，给予孩子适当的刺激，可于洗澡时进行。<br/>2.让孩子触摸不同的物件，让其辨别物件的大小、形状和质地等。<br/>3.三温暖治疗。让孩子辨别不同的水温。
                            </td>
                            <td id="remark5Feel">
                                1.荡秋千。<br/>2.攀爬不平稳平面。<br/>3.滑车训练。(此项可训练5-10分钟)<br/>4.倒立走。此项对上肢大肌肉的训练也相当有帮助。(此项训练5-15分钟)
                            </td>
                            <td id="remark6Feel">
                                1.沿直线行走。可适当增加难度，如让孩子端水。<br/>2.攀爬。<br/>3.跳圈游戏。在地上排列两列圆圈若干个，距离左右上下10CM，让孩子双脚跨在不同圆圈上往前跳，可增加圆圈的个数和距离。也可训练平衡感觉。
                            </td>
                        </tr>
                    </tbody>
                </table>
                <textarea id="doctorRemarkFeel" rows="5" style="resize:none;border: 0;background-color: transparent;"></textarea>
                <div id="testerFeel"><p>测评者：<s:property value="otherResultVo.recordFeel2020.testerName"/> </p></div>
            </div>    
        </div>　
    </div>    
    </s:if>



    <s:if test="allTestResultVo.result2016">
    <div class="container" class="hemaFront" id="test2016">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2016Boy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg2016Girl.jpg">
                </s:if>
                <table id="table2016-1">
                    <tbody>
                    <tr>
                        <td class="col-md-2">检查日期</td>
                        <td class="col-md-2">
                            <s:date name="allTestResultVo.result2016.time" format="yyyy-MM-dd"/>
                        </td>
                        <td class="col-md-2">智龄</td>
                        <td class="col-md-2" id="DQ"></td>
                        <td class="col-md-2">发育商DQ</td>
                        <td class="col-md-2" id="growth"></td>
                    </tr>
                </table>

                <table class="table table-striped  front-table" id="table2016-2">
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
                        <td id="scoreSport"><s:property value="allTestResultVo.result2016.scoreSport"/></td>
                        <td id="scoreAct"><s:property value="allTestResultVo.result2016.scoreAct"/></td>
                        <td id="scoreAdapt"><s:property value="allTestResultVo.result2016.scoreAdapt"/></td>
                        <td id="scoreLanguage"><s:property value="allTestResultVo.result2016.scoreLanguage"/></td>
                        <td id="scoreSocial"><s:property value="allTestResultVo.result2016.scoreSocial"/></td>
                    </tr>
                    <tr>
                        <td>单项发育商（DQ）</td>
                        <td id="scoreSport2"><s:property value="otherResultVo.scoreSport"/></td>
                        <td id="scoreAct2"><s:property value="otherResultVo.scoreAct"/></td>
                        <td id="scoreAdapt2"><s:property value="otherResultVo.scoreAdapt"/></td>
                        <td id="scoreLanguage2"><s:property value="otherResultVo.scoreLanguage"/></td>
                        <td id="last" style="border:0px"><s:property value="otherResultVo.scoreSocial"/></td>
                    </tr>
                    </tbody>
                </table>

                <table class="table table-striped  front-table" id="table2016-3">
                    <tbody>
                    <tr>
                        <td style="padding: 0px;width: 100%;">
                            <div id="column" style="height: 200px"></div>
                        </td>
                    </tr>
                    </tbody>
                </table>

                <table class="table table-striped  front-table" id="table2016-4">
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
                            <td id="remark5" style="border: 0px"></td>
                        </tr>
                    </tbody>
                </table>

                <textarea id="doctorRemark2016" rows="8" style="resize:none;border: 0;background-color: transparent;"></textarea>
                <div id="tester2016" ><p>测评者：<s:property value="otherResultVo.record2016.testerName"/></p></div>
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultAttention">
    <div class="container" class="hemaFront" id="attention">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgAttentionBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgAttentionGirl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>
                        <td class="col-md-4">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                        <td class="col-md-4 col-offset-4">
                            <span style="letter-spacing: 1px">出生日期:</span>
                            <div id="birth-text">
                                <s:date name="baby.birthday" format="yyyy-MM-dd"/>
                            </div>
                        </td>
                    </tr>
                </table>
                <table id="table-main" align="center">
                    <tbody style="width: 100%">
                        <tr class="item-line">
                            <td>
                                <span  style="font-weight: bold;font-size: 16px">
                                   抗干扰:
                                </span>

                                <input type="radio" name="a1attention" value="0"   id="radio-answer-1-0-attention">
                                <label for="radio-answer-1-0-attention" style="width: 120px;margin-left: 30px;font-weight: normal;"> 良好</label>

                                <input type="radio" name="a1attention" value="1"   id="radio-answer-1-1-attention">
                                <label for="radio-answer-1-1-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                <input type="radio" name="a1attention" value="2"   id="radio-answer-1-2-attention">
                                <label for="radio-answer-1-2-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                <input type="radio" name="a1attention" value="3"   id="radio-answer-1-3-attention">
                                <label for="radio-answer-1-3-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span  style="font-weight: bold;font-size: 16px">
                                   转移:
                                </span>

                                <input type="radio" name="a2attention" value="0"   id="radio-answer-2-0-attention">
                                <label for="radio-answer-2-0-attention" style="width: 120px;margin-left: 45px;font-weight: normal;"> 良好</label>

                                <input type="radio" name="a2attention" value="1"   id="radio-answer-2-1-attention">
                                <label for="radio-answer-2-1-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                <input type="radio" name="a2attention" value="2"   id="radio-answer-2-2-attention">
                                <label for="radio-answer-2-2-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                <input type="radio" name="a2attention" value="3"   id="radio-answer-2-3-attention">
                                <label for="radio-answer-2-3-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span  style="font-weight: bold;font-size: 16px">
                                   分配:
                                </span>

                                <input type="radio" name="a3attention" value="0"   id="radio-answer-3-0-attention">
                                <label for="radio-answer-3-0-attention" style="width: 120px;margin-left: 45px;font-weight: normal;"> 良好</label>

                                <input type="radio" name="a3attention" value="1"   id="radio-answer-3-1-attention">
                                <label for="radio-answer-3-1-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                <input type="radio" name="a3attention" value="2"   id="radio-answer-3-2-attention">
                                <label for="radio-answer-3-2-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                <input type="radio" name="a3attention" value="3"   id="radio-answer-3-3-attention">
                                <label for="radio-answer-3-3-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td>
                                <span  style="font-weight: bold;font-size: 16px">
                                   广度:
                                </span>

                                <input type="radio" name="a4attention" value="0"   id="radio-answer-4-0-attention">
                                <label for="radio-answer-4-0-attention" style="width: 120px;margin-left: 45px;font-weight: normal;"> 良好</label>

                                <input type="radio" name="a4attention" value="1"   id="radio-answer-4-1-attention">
                                <label for="radio-answer-4-1-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                <input type="radio" name="a4attention" value="2"   id="radio-answer-4-2-attention">
                                <label for="radio-answer-4-2-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                <input type="radio" name="a4attention" value="3"   id="radio-answer-4-3-attention">
                                <label for="radio-answer-4-3-attention" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                
                            </td>
                        </tr>
                        <!-- <tr class="item-line">
                            <td>
                                <span  style="font-weight: bold;font-size: 16px">
                                   同理心:
                                </span>

                                <input type="radio" name="a5" value="0"   id="radio-answer-5-0">
                                <label for="radio-answer-5-0" style="width: 120px;margin-left: 30px;font-weight: normal;"> 良好</label>

                                <input type="radio" name="a5" value="1"   id="radio-answer-5-1">
                                <label for="radio-answer-5-1" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                <input type="radio" name="a5" value="2"   id="radio-answer-5-2">
                                <label for="radio-answer-5-2" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                <input type="radio" name="a5" value="3"   id="radio-answer-5-3">
                                <label for="radio-answer-5-3" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                
                            </td>
                        </tr> -->
                        <tr class="item-line">
                            <td>
                                <span  style="font-weight: bold;font-size: 16px">
                                   智商:
                                </span>
                                <span style="margin-left: 31px">
                                    <s:property value="allTestResultVo.resultAttention.score"/> 
                                </span>
                            </td>
                    </tbody>
                </table>
                <table class="content" id="table-1">
                    <tr>
                        <td style="font-size: 16px;font-weight: bold;">指导建议</td>
                    </tr>
                    <tr>
                        <td>
                            <textarea rows="10" style="resize:none;border: 0;width: 100%; background-color: transparent;" id="remarkTextAttention"></textarea>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>    
    </s:if>


    <s:if test="allTestResultVo.resultEye">
    <div class="container" class="hemaFront" id="eye">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgEyeBoy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgEyeBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgEyeGirl.jpg">
                </s:if>
                <img id="eyeImg" src="<s:property value="allTestResultVo.resultEye.eyeImgUrl"/>">
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultBMD">
    <div class="container" class="hemaFront" id="BMD">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBMDBoy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBMDBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBMDGirl.jpg">
                </s:if>
                <img id="BMDImg" src="<s:property value="allTestResultVo.resultBMD.BMDImgUrl"/>">
            </div>
        </div>
    </div>
    </s:if>

    <s:if test="allTestResultVo.resultEar">
    <div class="container" class="hemaFront" id="ear">
       <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgEarBoy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgEarBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgEarGirl.jpg">
                </s:if>
                <s:if test="allTestResultVo.resultEar.earImgUrlFirst != ''">
                <img id="earImg1" src="<s:property value="allTestResultVo.resultEar.earImgUrlFirst"/>">
                </s:if>

                <s:if test="allTestResultVo.resultEar.earImgUrlSecond != ''">
                <img id="earImg2" src="<s:property value="allTestResultVo.resultEar.earImgUrlSecond"/>">
                </s:if>
            </div>
        </div>
    </div>
    </s:if>

    
    <s:if test="allTestResultVo.resultBlood">    
    <div class="container" class="hemaFront" id="blood">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBloodBoy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBloodBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBloodGirl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>
                        <td class="col-md-12">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                    </tr>
                </table>
                <img id="bloodImg" src="<s:property value="allTestResultVo.resultBlood.bloodImgUrl"/>">
            </div>
        </div>
    </div>
    </s:if>

    

    <!-- 微量元素和骨碱酶 -->
    <s:if test="allTestResultVo.resultMicro">
        <s:if test="allTestResultVo.resultBone">
        <div class="container" class="hemaFront" id="micro">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
                <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                    <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoy.jpg"> -->
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoneBoy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoneGirl.jpg">
                    </s:if>
                    <table id="name-table">
                        <tr>
                            <td class="col-md-12">
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <div id="name-text">
                                    <s:property value="baby.name"/>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <img id="microImg" src="<s:property value="allTestResultVo.resultMicro.microImgUrl"/>">
                    <img id="boneImg" src="<s:property value="allTestResultVo.resultBone.boneImgUrl"/>">
                </div>
            </div>
        </div>
        </s:if>
    </s:if>

    <!-- 只有微量元素 -->
    <s:if test="allTestResultVo.resultMicro">
        <s:if test="!allTestResultVo.resultBone">
        <div class="container" class="hemaFront" id="micro">

            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
                <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                    <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoy.jpg"> -->
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroGirl.jpg">
                    </s:if>
                    <table id="name-table">
                        <tr>
                            <td class="col-md-12">
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <div id="name-text">
                                    <s:property value="baby.name"/>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <img id="microImg" src="<s:property value="allTestResultVo.resultMicro.microImgUrl"/>">
                </div>
            </div>
        </div>
        </s:if>
    </s:if>


    <!-- 只有骨碱酶 -->
    <s:if test="allTestResultVo.resultBone">
        <s:if test="!allTestResultVo.resultMicro">
            <div class="container" class="hemaFront" id="bone">
                <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
                    <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                        <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoy.jpg"> -->
                        <s:if test="baby.gender == 1">
                        <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBoneBoy.jpg">
                        </s:if>
                        <s:if test="baby.gender == 0">
                        <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgBoneGirl.jpg">
                        </s:if>
                        <table id="name-table">
                            <tr>
                                <td class="col-md-12">
                                    <span style="letter-spacing: 10px">姓</span>
                                    <span style="letter-spacing: 1px">名:</span>
                                    <div id="name-text">
                                        <s:property value="baby.name"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <img id="boneImg" src="<s:property value="allTestResultVo.resultBone.boneImgUrl"/>">
                    </div>
                </div>
            </div>
        </s:if>
    </s:if>



    <s:if test="allTestResultVo.resultUrine">
    <div class="container" class="hemaFront" id="urine">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgUrineBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgUrineGirl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>
                        <td class="col-md-12">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                    </tr>
                </table>
                <img id="urineImg" src="<s:property value="allTestResultVo.resultUrine.urineImgUrl"/>">
            </div>
        </div>
    </div>
    </s:if>


    <s:if test="allTestResultVo.resultECG">
    <div class="container" class="hemaFront" id="ecg">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent;margin-bottom: 0px">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgMicroBoy.jpg"> -->
                <s:if test="baby.gender == 1">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgECGBoy.jpg">
                </s:if>
                <s:if test="baby.gender == 0">
                <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgECGGirl.jpg">
                </s:if>
                <table id="name-table">
                    <tr>
                        <td class="col-md-12">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                    </tr>
                </table>
                <img id="ECGImg" src="<s:property value="allTestResultVo.resultECG.ECGImgUrl"/>">
            </div>
        </div>
    </div>
    </s:if>



    <s:if test="allTestResultVo.resultSummary"> 
    <div class="container" class="hemaFront" id="summary" style="height:1122px; overflow: hidden;">
        <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;margin-bottom: 0px">
            <div class="panel-body front-no-padding" style="height:1122px;border:0;background-color: transparent">
                <!-- <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg5Boy.jpg"> -->
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
                    left: 85px;
                    font-size: 16px"
                    id="name-table">
                    <tr>

                        <td class="col-md-4">
                            <span style="letter-spacing: 10px">姓</span>
                            <span style="letter-spacing: 1px">名:</span>
                            <div id="name-text">
                                <s:property value="baby.name"/>
                            </div>
                        </td>
                        

                        <td class="col-md-4 col-offset-4">
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
    </s:if>
    
    <a type="button" class="btn btn-primary noprint pull-right print" style="">打印结果</a>

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

<s:if test="allTestResultVo.result2016">
<script type="text/javascript">
    var dq_fix = $('#dq_fix').html();
    var growth_fix = $('#growth_fix').html();
    $("#DQ").html(dq_fix);
    $("#growth").html(growth_fix);
    var a1 = 0;
    a1 =  parseInt($('#scoreSport').html());//智龄
    var a2 = 0;
    a2 = parseInt($('#scoreAct').html());
    var a3 = 0;
    a3 = parseInt($('#scoreAdapt').html());
    var a4 = 0;
    a4 =  parseInt($('#scoreLanguage').html());
    var a5 = 0;
    a5 =parseInt($('#scoreSocial').html());
    var b1 = 0;
    b1 =  parseInt($('#scoreSport2').html());//智龄
    var b2 = 0;
    b2 = parseInt($('#scoreAct2').html());
    var b3 = 0;
    b3 = parseInt($('#scoreAdapt2').html());
    var b4 = 0;
    b4 =  parseInt($('#scoreLanguage2').html());
    var b5 = 0;
    b5 =parseInt($('#last').html());
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
</script>
</s:if>


<!-- summary -->
<script type="text/javascript">
    var summaryRemark = $('#summaryRemark').val();
    var reg = new RegExp("<br>","g");//g,表示全部替换。
    summaryRemark = summaryRemark.replace(reg,"\n");
    $('#summaryRemarkText').html(summaryRemark);
</script>



<!-- feel -->
<script type="text/javascript">
    var a1Feel = +$('#a1Feel').val();
    var a2Feel = +$('#a2Feel').val();
    var a3Feel = +$('#a3Feel').val();
    var a4Feel = +$('#a4Feel').val();
    var a5Feel = +$('#a5Feel').val();
    var a6Feel = +$('#a6Feel').val();
    var map = {
        1:{
            11:  70,
            12:  64,
            13:  60,
            14:  57,
            15:  54,
            16:  52,
            17:  49,
            18:  47,
            19:  45,
            20:  43,
            21:  41,
            22:  39,
            23:  37,
            24:  36,
            25:  34,
            26:  32,
            27:  31,
            28:  29,
            29:  28,
            30:  27,
            31:  26,
            32:  25,
            33:  25,
            34:  23,
            35:  20,
            36:  16,
            37:  16,
            38:  16,
            39:  16,
            40:  16,
            41:  16,
            42:  16,
            43:  16,
            44:  16,
            45:  16,
            46:  16,
            47:  16,
            48:  16,
            49:  16,
            50:  16,
            51:  16,
            52:  16,
            53:  16,
            54:  16,
            55:  16
        },
        2:{
            9:   73,
            10:  69,
            11:  67,
            12:  64,
            13:  62,
            14:  60,
            15:  58,
            16:  55,
            17:  53,
            18:  51,
            19:  49,
            20:  48,
            21:  46,
            22:  44,
            23:  42,
            24:  40,
            25:  39,
            26:  37,
            27:  36,
            28:  34,
            29:  32,
            30:  30,
            31:  28,
            32:  26,
            33:  25,
            34:  23,
            35:  22,
            36:  20,
            37:  16,
            38:  16,
            39:  16,
            40:  16,
            41:  16,
            42:  16,
            43:  16,
            44:  16,
            45:  16
        },
        3:{
            14:  70,
            15:  65,
            16:  63,
            17:  61,
            18:  59,
            19:  57,
            20:  55,
            21:  53,
            22:  51,
            23:  50,
            24:  48,
            25:  47,
            26:  45,
            27:  44,
            28:  42,
            29:  41,
            30:  40,
            31:  38,
            32:  37,
            33:  36,
            34:  34,
            35:  33,
            36:  32,
            37:  31,
            38:  29,
            39:  28,
            40:  26,
            41:  26,
            42:  25,
            43:  24,
            44:  22,
            45:  22,
            46:  22,
            47:  21,
            48:  21,
            49:  21,
            50:  21,
            51:  20,
            52:  16,
            53:  16,
            54:  16,
            55:  16,
            56:  16,
            57:  16,
            58:  16,
            59:  16,
            60:  16,
            61:  16,
            62:  16,
            63:  16,
            64:  16,
            65:  16,
            66:  16,
            67:  16,
            68:  16,
            69:  16,
            70:  16
        },
        4:{
            11:  65,
            12:  59,
            13:  57,
            14:  55,
            15:  53,
            16:  51,
            17:  49,
            18:  47,
            19:  45,
            20:  44,
            21:  42,
            22:  40,
            23:  39,
            24:  38,
            25:  36,
            26:  35,
            27:  34,
            28:  33,
            29:  32,
            30:  31,
            31:  29,
            32:  28,
            33:  28,
            34:  26,
            35:  25,
            36:  24,
            37:  23,
            38:  22,
            39:  21,
            40:  20,
            41:  20,
            42:  20,
            43:  16,
            44:  16,
            45:  16,
            46:  16,
            47:  16,
            48:  16,
            49:  16,
            50:  16,
            51:  16,
            52:  16,
            53:  16,
            54:  16,
            55:  16
        },
        5:{
            5:   61,
            6:   54,
            7:   50,
            8:   48,
            9:   45,
            10:  41,
            11:  38,
            12:  35,
            13:  32,
            14:  30,
            15:  27,
            16:  25,
            17:  23,
            18:  22,
            19:  20,
            20:  16,
            21:  16,
            22:  16,
            23:  16,
            24:  16,
            25:  16
        },
        6:{
            10:  64,
            11:  59,
            12:  56,
            13:  54,
            14:  52,
            15:  51,
            16:  49,
            17:  48,
            18:  46,
            19:  45,
            20:  43,
            21:  42,
            22:  40,
            23:  38,
            24:  37,
            25:  35,
            26:  34,
            27:  33,
            28:  32,
            29:  30,
            30:  30,
            31:  29,
            32:  26,
            33:  25,
            34:  23,
            36:  22,
            40:  16,
            41:  16,
            42:  16,
            43:  16,
            44:  16,
            45:  16,
            46:  16,
            47:  16,
            48:  16,
            49:  16,
            50:  16
        }
    }
    function getScore (a,i) {
        i = i + 1;
        return map[i][a];
    }
    var resultAll = [
        {a:a1Feel ,b:0, c:''},
        {a:a2Feel ,b:0, c:''},
        {a:a3Feel ,b:0, c:''},
        {a:a4Feel ,b:0, c:''},
        {a:a5Feel ,b:0, c:''},
        {a:a6Feel ,b:0, c:''}
    ]
    var r1,r2,r3,r4,r5,r6;
    var bArr = [];

    var lll = resultAll.length;
    var a = 0;
    var b = 0;
    var c = '';
    for (var i = 0; i < lll; i++) {
        a = resultAll[i]['a'];
        b = getScore(a,i);
        bArr[i] = b;
        resultAll[i]['b'] = b;
        if ( b < 30 ) {
            c = '重度失常'
        } else if ( b < 40) {
            c = '中度失常'
        } else if ( b < 50) {
            c = '轻度失常'
        } else {
            c = '正常'
        }
        resultAll[i]['c'] = c;

    }
    $('#b1Feel').text(resultAll[0]['b'])
    $('#b2Feel').text(resultAll[1]['b'])
    $('#b3Feel').text(resultAll[2]['b'])
    $('#b4Feel').text(resultAll[3]['b'])
    $('#b5Feel').text(resultAll[4]['b'])
    $('#b6Feel').text(resultAll[5]['b'])
    $('#r1Feel').text(resultAll[0]['c'])
    $('#r2Feel').text(resultAll[1]['c'])
    $('#r3Feel').text(resultAll[2]['c'])
    $('#r4Feel').text(resultAll[3]['c'])
    $('#r5Feel').text(resultAll[4]['c'])
    $('#r6Feel').text(resultAll[5]['c'])
    // 柱状图数据
    $(function () {
        var chart1,
            chart2;
        var categories =  ['前脑平衡和大脑双侧分化', '脑神经心理抑制困难', '触觉防御过多及反应不足', '发育期运动障碍', '视觉空间，形态', '本体觉（重力不安症）'];
        var result =  [bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5]];
        $('#columnFeel').highcharts({
            chart: {
                type: 'column'
            },
            credits: {
                enabled: false
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: categories
            },
            yAxis: [{
                min: 0,
                plotLines: [{
                    color: 'red',
                    value: 20,
                    width: 2
                }, {
                    color: 'orange',
                    value: 30,
                    width: 2
                }, {
                    color: 'blue',
                    value: 40,
                    width: 2
                }],
                title: {
                    text: ''
                }
            }],
            legend: {
                shadow: false,
                enabled: false 
            },
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
                name: '得分',
                color: '#ff8547',
                data: result
            }]
        }, function(c){
            chart1 = c;
        });

        var reg = new RegExp("<br>","g");//g,表示全部替换。
        var feelRemark = $("#feelRemark").val();
        feelRemark = feelRemark.replace(reg,"\n");
        $('#doctorRemarkFeel').html(feelRemark);
    });
</script>

<!-- attention -->
<script>
    var a1attention = $('#a1attention').val();
    var a2attention = $('#a2attention').val();
    var a3attention = $('#a3attention').val();
    var a4attention = $('#a4attention').val();
    var a5attention = $('#a5attention').val();

    var remarkAttention = $('#remarkAttention').val();
    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remarkAttention = remarkAttention.replace(reg,"\n");
    $('#remarkTextAttention').html(remarkAttention);

    
    $("input:radio[name='a1attention'][value='"+ a1attention +"']").attr('checked','true');
    
    $("input:radio[name='a2attention'][value='"+ a2attention +"']").attr('checked','true');

    $("input:radio[name='a3attention'][value='"+ a3attention +"']").attr('checked','true');

    $("input:radio[name='a4attention'][value='"+ a4attention +"']").attr('checked','true');

    $("input:radio[name='a5attention'][value='"+ a5attention +"']").attr('checked','true');
</script>



<!-- tooth -->
<script type="text/javascript">
    var leftUp1 = $('#leftUp1').val();
    var leftUp2 = $('#leftUp2').val();
    var leftUp3 = $('#leftUp3').val();
    var leftUp4 = $('#leftUp4').val();
    var leftUp5 = $('#leftUp5').val();
    var leftUp6 = $('#leftUp6').val();
    var leftUp7 = $('#leftUp7').val();

    var rightUp1 = $('#rightUp1').val();
    var rightUp2 = $('#rightUp2').val();
    var rightUp3 = $('#rightUp3').val();
    var rightUp4 = $('#rightUp4').val();
    var rightUp5 = $('#rightUp5').val();
    var rightUp6 = $('#rightUp6').val();
    var rightUp7 = $('#rightUp7').val();

    var leftDown1 = $('#leftDown1').val();
    var leftDown2 = $('#leftDown2').val();
    var leftDown3 = $('#leftDown3').val();
    var leftDown4 = $('#leftDown4').val();
    var leftDown5 = $('#leftDown5').val();
    var leftDown6 = $('#leftDown6').val();
    var leftDown7 = $('#leftDown7').val();

    var rightDown1 = $('#rightDown1').val();
    var rightDown2 = $('#rightDown2').val();
    var rightDown3 = $('#rightDown3').val();
    var rightDown4 = $('#rightDown4').val();
    var rightDown5 = $('#rightDown5').val();
    var rightDown6 = $('#rightDown6').val();
    var rightDown7 = $('#rightDown7').val();

    var a1 = parseInt($("#attentionBrushWay").val());
    var a2 = parseInt($("#attentionBrushHabit").val());
    var a3 = parseInt($("#attentionTeethSituation").val());
    var a4 = parseInt($("#attentionFu").val());


    var remarkTooth = $('#remarkTooth').val();


    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remarkTooth = remarkTooth.replace(reg,"\n");
    $('#remarkTextTooth').html(remarkTooth);

    // 1未生长 0歪斜 2龋齿
    var styles = { '1': "style3", '10': "style1", '11':"style1", '12': "style1", '13': "style1", '2': "style2", '99': "" }

    $("input:radio[name='answer-1-tooth'][value='"+ a1 +"']").attr('checked','true');
    $("input:radio[name='answer-2-tooth'][value='"+ a2 +"']").attr('checked','true');
    $("input:radio[name='answer-3-tooth'][value='"+ a3 +"']").attr('checked','true');
    $("input:radio[name='answer-4-tooth'][value='"+ a4 +"']").attr('checked','true');
    

    // 给div样式
    $(".leftDown1").addClass(styles[leftDown1]);
    $(".leftDown2").addClass(styles[leftDown2]);
    $(".leftDown3").addClass(styles[leftDown3]);
    $(".leftDown4").addClass(styles[leftDown4]);
    $(".leftDown5").addClass(styles[leftDown5]);
    $(".leftDown6").addClass(styles[leftDown6]);
    $(".leftDown7").addClass(styles[leftDown7]);
    $(".rightDown1").addClass(styles[rightDown1]);
    $(".rightDown2").addClass(styles[rightDown2]);
    $(".rightDown3").addClass(styles[rightDown3]);
    $(".rightDown4").addClass(styles[rightDown4]);
    $(".rightDown5").addClass(styles[rightDown5]);
    $(".rightDown6").addClass(styles[rightDown6]);
    $(".rightDown7").addClass(styles[rightDown7]);
    
    $(".leftUp1").addClass(styles[leftUp1]);
    $(".leftUp2").addClass(styles[leftUp2]);  
    $(".leftUp3").addClass(styles[leftUp3]);  
    $(".leftUp4").addClass(styles[leftUp4]);  
    $(".leftUp5").addClass(styles[leftUp5]);  
    $(".leftUp6").addClass(styles[leftUp6]);  
    $(".leftUp7").addClass(styles[leftUp7]);      
    
    $(".rightUp1").addClass(styles[rightUp1]);
    $(".rightUp2").addClass(styles[rightUp2]);
    $(".rightUp3").addClass(styles[rightUp3]);
    $(".rightUp4").addClass(styles[rightUp4]);
    $(".rightUp5").addClass(styles[rightUp5]);
    $(".rightUp6").addClass(styles[rightUp6]);
    $(".rightUp7").addClass(styles[rightUp7]);
</script>


</body>
</html>

