<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/"/>
    <title>评测结果-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style>
        #hemaFront {
            /*background-image: url(statics/img/hemaGroupBgBoy.png); */
            background-size: 100% 100%;
            padding-top: 0px;
            /*margin-top: 70px;*/
            background-color: transparent;
            /*width: 800px;*/
        }
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
        .item-line{
            border-bottom: 1px solid #df9390;
            height: 45px;
        }
    </style>
    <style type="text/css" media="print">
        @page
        {
            size:  auto portrait;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
        input, .noprint {
            display: none
        }
        div{
            padding: 0px !important;
            margin: 0px !important;
        }
        body, table, tbody, tr, td {
            background-color: transparent;
        }
        #table-main{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: absolute !important;
            left: 60px !important;
            top: 200px !important;
        }
        #table-main1{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: absolute !important;
            left: 60px !important;
            top: 590px !important;
        }
        #table-main2{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: absolute !important;
            left: 60px !important;
            top: 680px !important;
        }
        #table-main3{
            border: 0px !important;
            margin: 0 !important; 
            width: 85% !important;
            position: absolute !important;
            left: 60px !important;
            top: 790px !important;
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


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultBasic2.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultBasic2.id"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">

        <input id="isNormalChildbirth" type="hidden" value="<s:property value="resultBasic2.isNormalChildbirth"/>">
        <input id="childbirthSituation" type="hidden" value="<s:property value="resultBasic2.childbirthSituation"/>">
        <input id="familyHeredityDisease" type="hidden" value="<s:property value="resultBasic2.familyHeredityDisease"/>">
        <input id="isHeredityDisease1" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease1"/>">
        <input id="isHeredityDisease2" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease2"/>">
        <input id="isHeredityDisease3" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease3"/>">
        <input id="isHeredityDisease4" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease4"/>">
        <input id="isAllergyHistory" type="hidden" value="<s:property value="resultBasic2.isAllergyHistory"/>">


        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg7Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg7Girl.jpg">
                    </s:if>


                    <table id="table-main" align="center" style="border: 0px;margin: 0; width: 35%;position: absolute;left: 440px;top: 280px;">
                        <tbody style="width: 100%">
                            <tr class="item-line">
                                <td>
                                    <span>
                                       生产方式:
                                    </span>

                                    <input type="radio" name="isNormalChildbirth" value="1"   id="radio-answer-1-1">
                                    <label for="radio-answer-1-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 顺产</label>

                                    <input type="radio" name="isNormalChildbirth" value="0"   id="radio-answer-1-1">
                                    <label for="radio-answer-1-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 刨腹产</label>
                                    
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    出生时有无以下情况:
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="childbirthSituation"  value="0">
                                    <label style="font-weight: normal"> 无</label>
                                    <input type="checkbox" name="childbirthSituation"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 缺氧</label>
                                    <input type="checkbox" name="childbirthSituation"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 黄疸(病理性)</label>
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <input type="checkbox" name="childbirthSituation"  value="3">
                                    <label style="font-weight: normal"> 感染</label>
                                    <input type="checkbox" name="childbirthSituation"  value="4" style="">
                                    <label style="font-weight: normal;margin-left: 86px"> 住保温箱</label>
                                    <input type="checkbox" name="childbirthSituation"  value="5" style="">
                                    <label style="font-weight: normal;margin-left: 73px"> 新生儿手术(外科治疗)</label>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                        生产胎龄:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultBasic2.babyBirthWeekAge"/> 周 (正常为38-42周)
                                    </span>
                                    <span style="margin-left: 160px">
                                        宝贝出生体重:   
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.babyBirthWeight"/> KG
                                    </span>

                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                        母亲生育年龄:
                                    </span>
                                    <span style="margin-left: 31px">
                                        <s:property value="resultBasic2.childBearingAge"/> 周岁
                                    </span>
                                    <span style="margin-left: 105px">
                                        胎次:
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.babyCount"/>
                                    </span>
                                    <span style="margin-left: 100px">
                                        产次:
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.pregnantCount"/>
                                    </span>
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                        母亲妊娠期患病情况:
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.motherPregnancyDiseaseSituation"/>
                                    </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table  id="table-main1" align="center"  style="border: 0px;margin: 0; width: 35%;position: absolute;top: 660px;left: 440px;">
                        <tbody style="width: 100%">
                            <tr>
                                <td style="border:0px;width: 200px">
                                    有无重大疾病或发生意外情况:
                                </td>
                                <td style="border:0px">
                                    <s:property value="resultBasic2.diseasePastHistory"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table  id="table-main2"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 750px;left: 440px;">
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
                    <table  id="table-main3" align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 860px;left: 440px;">
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
                                    父母双方有食物吸收查、身体消瘦、排便异常病史。
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
                                    <input type="radio" name="isHeredityDisease4" value="1"   id="radio-answer-8-1">
                                    <label for="radio-answer-9-1" style="width: 50px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="isHeredityDisease4" value="0"   id="radio-answer-8-1">
                                    <label for="radio-answer-9-0" style="width: 50px;margin-left: 20px;font-weight: normal;"> 否</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span> 过敏情况: </span>
                                    <span style="border-bottom: 1px #df9390 solid;"> <s:property value="resultBasic2.allergySituation"/>  </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div style="width:270px;float: right">
                <!-- <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div> -->
                <div ><a type="button" class="btn btn-primary noprint pull-right print" style="">打印结果</a></div>
            </div>　
        </div>
    <footer class="footer-default noprint">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
</script>
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var resultid = $('#resultid').val();
    var days = $('#days').val();
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
    // $("input:checkbox[name='childbirthSituation'][value='1']").attr('checked','true');
    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

