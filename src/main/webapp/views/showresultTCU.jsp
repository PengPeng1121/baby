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
            top: 350px !important;
        }
        #table-main2{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: absolute !important;
            left: 60px !important;
            top: 530px !important;
        }
        #table-main3{
            border: 0px !important;
            margin: 0 !important; 
            width: 85% !important;
            position: absolute !important;
            left: 60px !important;
            top: 650px !important;
        }
        #table-main4{
            border: 0px !important;
            margin: 0 !important; 
            width: 80% !important;
            position: absolute !important;
            left: 60px !important;
            top: 730px !important;
        }
        #table-main5{
            border: 0px !important;
            margin: 0 !important; 
            width: 85% !important;
            position: absolute !important;
            left: 60px !important;
            top: 1000px !important;
        }
        #table-main6{
            border: 0px !important;
            margin: 0 !important; 
            width: 85% !important;
            position: absolute !important;
            left: 60px !important;
            top: 1030px !important;
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

        <input id="babyid" type="hidden" value="<s:property value="resultTCU.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultTCU.id"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        <input id="time" type="hidden" value="<s:property value="resultTCU.nextVisitTime"/>">
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">

        <input id="r1" type="hidden" value="<s:property value="resultTCU.r1"/>">
        <input id="r2" type="hidden" value="<s:property value="resultTCU.r2"/>">
        <input id="r3" type="hidden" value="<s:property value="resultTCU.r3"/>">
        <input id="r4" type="hidden" value="<s:property value="resultTCU.r4"/>">
        <input id="r5" type="hidden" value="<s:property value="resultTCU.r5"/>">
        <input id="r6" type="hidden" value="<s:property value="resultTCU.r6"/>">
        <input id="r7" type="hidden" value="<s:property value="resultTCU.r7"/>">
        <input id="r7" type="hidden" value="<s:property value="resultTCU.r8"/>">



        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgTCUBoy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgTCUGirl.jpg">
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
                    <table id="table-main"    align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;left: 440px;top: 260px;">
                        <tbody style="width: 100%">
                            <tr>
                                <td>
                                    <s:date name="resultTCU.nextVisitTime" format="yyyy-MM-dd"/>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <table  id="table-main1"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 390px;left: 440px;">
                        <tbody style="width: 100%">
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r2"  value="0" id="checkbox-answer-2-1">
                                    <label for="checkbox-answer-2-1" style="font-weight: normal"> 儿心测评</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r2"  value="1" id="checkbox-answer-2-2">
                                    <label for="checkbox-answer-2-2" style="font-weight: normal"> 感觉统合测评</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r2"  value="2" id="checkbox-answer-2-3">
                                    <label for="checkbox-answer-2-3" style="font-weight: normal"> 儿童学习能力提升</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r2"  value="3" id="checkbox-answer-2-4">
                                    <label for="checkbox-answer-2-4" style="font-weight: normal"> 智商能力评估</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r2"  value="4" id="checkbox-answer-2-5">
                                    <label for="checkbox-answer-2-5" style="font-weight: normal"> 注意力评估与指导</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r2"  value="5" id="checkbox-answer-2-6">
                                    <label for="checkbox-answer-2-6" style="font-weight: normal"> 儿童综合能力评估与指导</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table  id="table-main2"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 580px;left: 440px;">
                        <tbody style="width: 100%">
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r3"  value="0" id="checkbox-answer-3-1">
                                    <label for="checkbox-answer-3-1" style="font-weight: normal"> 营养评估与饮食指导</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r3"  value="1" id="checkbox-answer-3-2">
                                    <label for="checkbox-answer-3-2" style="font-weight: normal"> 个性化食谱制定</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r3"  value="2" id="checkbox-answer-3-3">
                                    <label for="checkbox-answer-3-3" style="font-weight: normal"> 乳母饮食指导</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table  id="table-main3"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 710px;left: 440px;">
                        <tbody style="width: 100%">
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r4"  value="0" id="checkbox-answer-4-1">
                                    <label for="checkbox-answer-4-1" style="font-weight: normal"> 口腔检查</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r4"  value="1" id="checkbox-answer-4-2">
                                    <label for="checkbox-answer-4-2" style="font-weight: normal"> 牙齿涂氟</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r4"  value="2" id="checkbox-answer-4-3">
                                    <label for="checkbox-answer-4-3" style="font-weight: normal"> 窝沟封闭</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r4"  value="3" id="checkbox-answer-4-4">
                                    <label for="checkbox-answer-4-4" style="font-weight: normal"> 视力筛查</label>
                                </td>
                                
                            </tr>
                        </tbody>
                    </table>

                    <table  id="table-main4"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 800px;left: 440px;">
                        <tbody style="width: 100%">
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="0" id="checkbox-answer-5-1">
                                    <label for="checkbox-answer-5-1" style="font-weight: normal"> 血常规</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="1" id="checkbox-answer-5-2">
                                    <label for="checkbox-answer-5-2" style="font-weight: normal"> 骨源性碱性磷酸酶</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="2" id="checkbox-answer-5-3">
                                    <label for="checkbox-answer-5-3" style="font-weight: normal"> ABO+Rh血型鉴定</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="3" id="checkbox-answer-5-4">
                                    <label for="checkbox-answer-5-4" style="font-weight: normal"> 尿常规</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="4" id="checkbox-answer-5-5">
                                    <label for="checkbox-answer-5-5" style="font-weight: normal"> 维生素D</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="5" id="checkbox-answer-5-6">
                                    <label for="checkbox-answer-5-6" style="font-weight: normal"> 14项慢性食物过敏原检测</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="6" id="checkbox-answer-5-7">
                                    <label for="checkbox-answer-5-7" style="font-weight: normal"> 21项速发性过敏原检测</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="7" id="checkbox-answer-5-8">
                                    <label for="checkbox-answer-5-8" style="font-weight: normal"> 微量元素</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="8" id="checkbox-answer-5-9">
                                    <label for="checkbox-answer-5-9" style="font-weight: normal"> 乙肝两对半定性</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="9" id="checkbox-answer-5-10">
                                    <label for="checkbox-answer-5-10" style="font-weight: normal"> 乙肝表面抗体定量</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="10" id="checkbox-answer-5-11">
                                    <label for="checkbox-answer-5-11" style="font-weight: normal"> 总IgE</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="11" id="checkbox-answer-5-12">
                                    <label for="checkbox-answer-5-12" style="font-weight: normal"> 心肌酶谱5项</label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="12" id="checkbox-answer-5-13">
                                    <label for="checkbox-answer-5-13" style="font-weight: normal"> 肝功能</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="13" id="checkbox-answer-5-14">
                                    <label for="checkbox-answer-5-14" style="font-weight: normal"> 乙肝两对半定量</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r5"  value="14" id="checkbox-answer-5-15">
                                    <label for="checkbox-answer-5-15" style="font-weight: normal"> 肠道菌群</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <table  id="table-main5"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 1060px;left: 440px;">
                        <tbody style="width: 100%">
                            
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r6"  value="0" id="checkbox-answer-6-1">
                                    <label for="checkbox-answer-6-1" style="font-weight: normal"> 身高增长综合体检</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r6"  value="1" id="checkbox-answer-6-2">
                                    <label for="checkbox-answer-6-2" style="font-weight: normal"> 综合体检套餐</label>
                                </td>    
                            </tr>
                        </tbody>
                    </table>

                    <table  id="table-main6"  align="center"  style="border: 0px;margin: 0;width: 35%;position: absolute;top: 1110px;left: 440px;">
                        <tbody style="width: 100%">
                            
                            <tr>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r7"  value="0" id="checkbox-answer-7-1">
                                    <label for="checkbox-answer-7-1" style="font-weight: normal"> B</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r7"  value="1" id="checkbox-answer-7-2">
                                    <label for="checkbox-answer-7-2" style="font-weight: normal"> H</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r7"  value="2" id="checkbox-answer-7-3">
                                    <label for="checkbox-answer-7-3" style="font-weight: normal"> Z</label>
                                </td>
                                <td style="width: 180px">
                                    <input type="checkbox" name="r7"  value="3" id="checkbox-answer-7-4">
                                    <label for="checkbox-answer-7-4" style="font-weight: normal"> C</label>
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
    var username = $("#username").val();

    if (username.indexOf('家长') != -1) {
        console.log('家长视角。。。。。。');
        $('#table-main6').hide();
    }



    var babyid = $('#babyid').val();
    var resultid = $('#resultid').val();
    var time = $('#time').val();
    // var r1 = $('#r1').val();
    var r2 = $('#r2').val();
    var r3 = $('#r3').val();
    var r4 = $('#r4').val();
    var r5 = $('#r5').val();
    var r6 = $('#r6').val();
    var r7 = $('#r7').val();
    // var r8 = $('#r8').val();
    // var r1Arr = $('#r1').val().split(',');
    var r2Arr = $('#r2').val().split(',');
    var r3Arr = $('#r3').val().split(',');
    var r4Arr = $('#r4').val().split(',');
    var r5Arr = $('#r5').val().split(',');
    var r6Arr = $('#r6').val().split(',');
    var r7Arr = $('#r7').val().split(',');
    // var r8Arr = $('#r8').val().split(',');

    

    // for (var i = 0, len = r1Arr.length; i < len; i++) {
    //     $("input:checkbox[name='r1'][value='" + r1Arr[i] + "']").attr('checked','true');
    // }
    for (var j = 0, jlen = r2Arr.length; j < jlen; j++) {
        $("input:checkbox[name='r2'][value='" + r2Arr[j] + "']").attr('checked','true');
    }
    for (var k = 0, klen = r3Arr.length; k < klen; k++) {
        $("input:checkbox[name='r3'][value='" + r3Arr[k] + "']").attr('checked','true');
    }
    for (var m = 0, mlen = r4Arr.length; m < mlen; m++) {
        $("input:checkbox[name='r4'][value='" + r4Arr[m] + "']").attr('checked','true');
    }
    for (var n = 0, nlen = r5Arr.length; n < nlen; n++) {
        $("input:checkbox[name='r5'][value='" + r5Arr[n] + "']").attr('checked','true');
    }
    for (var p = 0, plen = r6Arr.length; p < plen; p++) {
        $("input:checkbox[name='r6'][value='" + r6Arr[p] + "']").attr('checked','true');
    }
    for (var q = 0, qlen = r7Arr.length; q < qlen; q++) {
        $("input:checkbox[name='r7'][value='" + r7Arr[q] + "']").attr('checked','true');
    }
    // for (var r = 0, rlen = r8Arr.length; r < rlen; q++) {
    //     $("input:checkbox[name='r8'][value='" + r8Arr[r] + "']").attr('checked','true');
    // }

    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

