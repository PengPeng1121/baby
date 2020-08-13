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
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg6Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg6Girl.jpg">
                    </s:if>


                    <table id="name-table">
                        <tr>

                            <td class="col-md-2" style="font-weight: bold;">
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                            </td>
                            <td class="col-md-3" style="border-bottom: 1px solid #df938f;padding-left: 0px"><s:property value="baby.name"/></td>

                        </tr>
                    </table>




                    <table id="table-main" align="center" style="border: 0px;margin: 0; width: 35%;position: absolute;left: 440px;top: 280px;">
                        <tbody style="width: 100%">
                            <tr class="item-line">
                                <td>
                                    <span>
                                       当前总奶量:
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.babyBirthWeight"/> ml/天
                                    </span>

                                    <input type="checkbox" name="childbirthSituation"  value="0">
                                    <label style="font-weight: normal"> 母乳</label>
                                    <input type="checkbox" name="childbirthSituation"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 配方</label>
                                    <input type="checkbox" name="childbirthSituation"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 混合</label>
                                    
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <span>
                                      配方种类:  
                                    </span>
                                    <input type="checkbox" name="childbirthSituation"  value="0">
                                    <label style="font-weight: normal"> 普通</label>
                                    <input type="checkbox" name="childbirthSituation"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 适度</label>
                                    <input type="checkbox" name="childbirthSituation"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 深度</label>
                                    <input type="checkbox" name="childbirthSituation"  value="0">
                                    <label style="font-weight: normal"> 氨基酸</label>
                                    <input type="checkbox" name="childbirthSituation"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 羊奶粉</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>
                                        辅食添加情况:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultBasic2.babyBirthWeekAge"/> 周 (正常为38-42周)
                                    </span>
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                        食物过敏情况
                                    </span>
                                    <input type="radio" name="isHeredityDisease1" value="1"   id="radio-answer-5-1">
                                    <label for="radio-answer-5-1" style="width: 60px;margin-left: 20px;font-weight: normal;"> 有</label>

                                    <input type="radio" name="isHeredityDisease1" value="0"   id="radio-answer-5-0">
                                    <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>
                                    
                                    <s:property value="resultBasic2.babyBirthWeekAge"/>

                                </td>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                      辅食添加次数/天  
                                    </span>
                                    <input type="checkbox" name="childbirthSituation"  value="0">
                                    <label style="font-weight: normal"> 一餐</label>
                                    <input type="checkbox" name="childbirthSituation"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 二餐</label>
                                    <input type="checkbox" name="childbirthSituation"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 三餐</label>
                                    
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                      辅食性状
                                    </span>
                                    <input type="checkbox" name="childbirthSituation"  value="0">
                                    <label style="font-weight: normal"> 泥糊</label>
                                    <input type="checkbox" name="childbirthSituation"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 泥糊带小颗粒</label>
                                    <input type="checkbox" name="childbirthSituation"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 小丁块</label>
                                    <input type="checkbox" name="childbirthSituation"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 大丁块</label>
                                    
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <span>
                                        辅食添加时间:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultBasic2.babyBirthWeekAge"/> 周 (正常为38-42周)
                                    </span>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                        是否自主进食
                                    </span>
                                    <input type="radio" name="isHeredityDisease1" value="1"   id="radio-answer-5-1">
                                    <label for="radio-answer-5-1" style="width: 60px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="isHeredityDisease1" value="0"   id="radio-answer-5-0">
                                    <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 否</label>
                                    
                                    <s:property value="resultBasic2.babyBirthWeekAge"/>

                                </td>
                                </td>
                            </tr>



                            <tr class="item-line">
                                <td>
                                    <span>
                                        排便情况:
                                    </span>
                                    <span style="margin-left: 105px">
                                        大便次数:
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.babyCount"/>
                                    </span>
                                    <span style="margin-left: 100px">
                                        大便性状:
                                    </span>
                                    <span>
                                        <s:property value="resultBasic2.pregnantCount"/>
                                    </span>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>

                    <table style="width: 590px; height:660px;border:0;font-size: 16px; position: absolute;top: 300px;left: 490px" id="remark-table">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="remarkText"></textarea>
                            </td>
                        </tr>
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

