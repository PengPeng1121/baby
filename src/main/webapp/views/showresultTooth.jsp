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
        #name-table {
            width: 25%;
            border: 0;
            position: relative;
            top: 100px;
            left: 70px;
            font-size: 16px;
        }
        #name-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
        }
        #content-table{
            width: 300px;
            height: 120px;
            border: 0;
            /*font-size: 16px;
            font-weight: bold;*/
            position: relative;
            top: 160px;
            left: 80px;
        }
        #info-table{
            position: absolute;
            top: 1000px;
            left: 577px;
        }
        #remarkText{
            position: absolute;
            left: 800px;
            top: 270px;
            background-color: transparent;
        }
        #tooth-img{
            width: 450px !important;
            position: absolute !important;
            z-index: 1 !important;
            top: 410px !important;
            left: 460px !important;
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
        .style1{
            width: 0;
            height: 0;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 20px solid #000;
            position: absolute;
            z-index: 100;
        }
        .style2{
            border-radius: 50%;
            width: 20px;
            height: 20px;
            background-color: #000;
            position: absolute;
            z-index: 100; 
        }
        .style3 {
            position: relative;
            width: 20px;
            height: 20px;
            position: absolute;
            z-index: 100;
        }

        .style3::before,
        .style3::after {
            position: absolute;
            content: ' ';
            background-color: #000;
            left: 10px;
            width: 1px;
            height: 20px;
        }

        .style3::before {
            transform: rotate(45deg);
        }

        .style3::after {
            transform: rotate(-45deg);
        }


        .info1{
            width: 0;
            height: 0;
            border-left: 10px solid transparent;
            border-right: 10px solid transparent;
            border-bottom: 20px solid #000;
            position: absolute;
            z-index: 100;
            
            top: 5px;
        }
        .info2{
            border-radius: 50%;
            width: 20px;
            height: 20px;
            background-color: #000; 
        }
        .info3 {
            position: relative;
            width: 20px;
            height: 20px;
        }

        .info3::before,
        .info3::after {
            position: absolute;
            content: ' ';
            background-color: #000;
            left: 10px;
            width: 2px;
            height: 20px;
        }

        .info3::before {
            transform: rotate(45deg);
        }

        .info3::after {
            transform: rotate(-45deg);
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
        #name-table {
            width: 300px !important;
            border: 0 !important;
            position: relative !important;
            top: 120px !important;
            left: 70px !important;
            font-size: 16px !important;
        }
        #name-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
        }
        #content-table{
            width: 300px !important;
            height: 120px !important;
            border: 0 !important;
            /*font-size: 16px;
            font-weight: bold;*/
            position: relative !important;
            top: 160px !important;
            left: 80px !important;
        }
        #info-table{
            position: absolute !important;
            top: 970px;
            left: 267px;
        }
        #remarkText{
            position: absolute !important;
            left: 420px !important;
            top: 200px !important;
        }
        #tooth-img{
            width: 450px !important;
            position: absolute !important;
            z-index: 1 !important;
            top: 380px !important;
            left: 160px !important;
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
        .style1{
            width: 0 !important;
            height: 0 !important;
            border-left: 10px solid transparent !important;
            border-right: 10px solid transparent !important;
            border-bottom: 20px solid #000 !important;
            position: absolute !important;
            z-index: 100 !important;
        }
        .style2{
            border-radius: 50% !important;
            width: 20px !important;
            height: 20px !important;
            background-color: #000 !important;
            position: absolute !important;
            z-index: 100 !important;
        }
        .style3 {
            position: relative !important;
            width: 20px !important;
            height: 20px !important;
            position: absolute !important;
            z-index: 100 !important;
        }

        .style3::before,
        .style3::after {
            position: absolute !important;
            content: ' ' !important;
            background-color: #000 !important;
            left: 10px !important;
            width: 1px !important;
            height: 20px !important;
        }

        .style3::before {
            transform: rotate(45deg) !important;
        }

        .style3::after {
            transform: rotate(-45deg) !important;
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
            transform:translate(-300px, -30px) !important;
            -webkit-transform:translate(-300px, -30px) !important;  
            -moz-transform:translate(-300px, -30px) !important;   
        }





    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultTooth.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultTooth.id"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">



        <input id="babyid" type="hidden" value="<s:property value="resultTooth.babyid"/>">
        <input id="attentionBrushWay" type="hidden" value="<s:property value="resultTooth.attentionBrushWay"/>">
        <input id="attentionBrushHabit" type="hidden" value="<s:property value="resultTooth.attentionBrushHabit"/>">
        <input id="attentionTeethSituation" type="hidden" value="<s:property value="resultTooth.attentionTeethSituation"/>">
        <input id="attentionFu" type="hidden" value="<s:property value="resultTooth.attentionFu"/>">
        <input id="remark" type="hidden" value="<s:property value="resultTooth.remark"/>">
        
        <input id="leftUp1" type="hidden" value="<s:property value="resultTooth.leftUp1"/>">
        <input id="leftUp2" type="hidden" value="<s:property value="resultTooth.leftUp2"/>">
        <input id="leftUp3" type="hidden" value="<s:property value="resultTooth.leftUp3"/>">
        <input id="leftUp4" type="hidden" value="<s:property value="resultTooth.leftUp4"/>">
        <input id="leftUp5" type="hidden" value="<s:property value="resultTooth.leftUp5"/>">
        <input id="leftUp6" type="hidden" value="<s:property value="resultTooth.leftUp6"/>">
        <input id="leftUp7" type="hidden" value="<s:property value="resultTooth.leftUp7"/>">
        <input id="rightUp1" type="hidden" value="<s:property value="resultTooth.rightUp1"/>">
        <input id="rightUp2" type="hidden" value="<s:property value="resultTooth.rightUp2"/>">
        <input id="rightUp3" type="hidden" value="<s:property value="resultTooth.rightUp3"/>">
        <input id="rightUp4" type="hidden" value="<s:property value="resultTooth.rightUp4"/>">
        <input id="rightUp5" type="hidden" value="<s:property value="resultTooth.rightUp5"/>">
        <input id="rightUp6" type="hidden" value="<s:property value="resultTooth.rightUp6"/>">
        <input id="rightUp7" type="hidden" value="<s:property value="resultTooth.rightUp7"/>">
        
        <input id="leftDown1" type="hidden" value="<s:property value="resultTooth.leftDown1"/>">
        <input id="leftDown2" type="hidden" value="<s:property value="resultTooth.leftDown2"/>">
        <input id="leftDown3" type="hidden" value="<s:property value="resultTooth.leftDown3"/>">
        <input id="leftDown4" type="hidden" value="<s:property value="resultTooth.leftDown4"/>">
        <input id="leftDown5" type="hidden" value="<s:property value="resultTooth.leftDown5"/>">
        <input id="leftDown6" type="hidden" value="<s:property value="resultTooth.leftDown6"/>">
        <input id="leftDown7" type="hidden" value="<s:property value="resultTooth.leftDown7"/>">
        <input id="rightDown1" type="hidden" value="<s:property value="resultTooth.rightDown1"/>">
        <input id="rightDown2" type="hidden" value="<s:property value="resultTooth.rightDown2"/>">
        <input id="rightDown3" type="hidden" value="<s:property value="resultTooth.rightDown3"/>">
        <input id="rightDown4" type="hidden" value="<s:property value="resultTooth.rightDown4"/>">
        <input id="rightDown5" type="hidden" value="<s:property value="resultTooth.rightDown5"/>">
        <input id="rightDown6" type="hidden" value="<s:property value="resultTooth.rightDown6"/>">
        <input id="rightDown7" type="hidden" value="<s:property value="resultTooth.rightDown7"/>">


        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
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
                                <input type="radio" name="answer-1" value="1"   id="radio-answer-1-1">
                                <label for="radio-answer-1-1"></label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                注意刷牙习惯
                            </td>
                            <td>
                                <input type="radio" name="answer-2" value="1"   id="radio-answer-2-1">
                                <label for="radio-answer-2-1"></label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                注意换牙后的歪斜情况
                            </td>
                            <td>
                                <input type="radio" name="answer-3" value="1"   id="radio-answer-3-1">
                                <label for="radio-answer-3-1"></label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                已涂氟
                            </td>
                            <td>
                                <input type="radio" name="answer-4" value="1"   id="radio-answer-4-1">
                                <label for="radio-answer-4-1"></label>
                            </td>
                        </tr>
                    </table>

                    <textarea id="remarkText" rows="3" style="resize:none;border: 0;width: 350px;height: 120px"></textarea>


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
                    <div class="rightUp1 tooth-icon" style="top: 433px;left: 645px;"></div>
                    <div class="rightUp2 tooth-icon" style="top: 448px;left: 602px;"></div>
                    <div class="rightUp3 tooth-icon" style="top: 476px;left: 576px;"></div>
                    <div class="rightUp4 tooth-icon" style="top: 508px;left: 550px;"></div>
                    <div class="rightUp5 tooth-icon" style="top: 544px;left: 535px;"></div>
                    <div class="rightUp6 tooth-icon" style="top: 584px;left: 527px;"></div>
                    <div class="rightUp7 tooth-icon" style="top: 630px;left: 524px;"></div>

                    <div class="leftUp1 tooth-icon" style="top: 433px;left: 693px;"></div>
                    <div class="leftUp2 tooth-icon" style="top: 448px;left: 738px;"></div>
                    <div class="leftUp3 tooth-icon" style="top: 476px;left: 765px;"></div>
                    <div class="leftUp4 tooth-icon" style="top: 508px;left: 792px;"></div>
                    <div class="leftUp5 tooth-icon" style="top: 544px;left: 810px;"></div>
                    <div class="leftUp6 tooth-icon" style="top: 584px;left: 818px;"></div>
                    <div class="leftUp7 tooth-icon" style="top: 630px;left: 818px;"></div>


                    <div class="rightDown7 tooth-icon" style="top: 726px;left: 524px;"></div>
                    <div class="rightDown6 tooth-icon" style="top: 771px;left: 524px;"></div>
                    <div class="rightDown5 tooth-icon" style="top: 813px;left: 534px;"></div>
                    <div class="rightDown4 tooth-icon" style="top: 849px;left: 551px;"></div>
                    <div class="rightDown3 tooth-icon" style="top: 879px;left: 572px;"></div>
                    <div class="rightDown2 tooth-icon" style="top: 916px;left: 598px;"></div>
                    <div class="rightDown1 tooth-icon" style="top: 923px;left: 646px;"></div>

                    <div class="leftDown7 tooth-icon" style="top: 726px;left: 818px;"></div>
                    <div class="leftDown6 tooth-icon" style="top: 771px;left: 818px;"></div>
                    <div class="leftDown5 tooth-icon" style="top: 813px;left: 810px;"></div>
                    <div class="leftDown4 tooth-icon" style="top: 849px;left: 792px;"></div>
                    <div class="leftDown3 tooth-icon" style="top: 879px;left: 765px;"></div>
                    <div class="leftDown2 tooth-icon" style="top: 916px;left: 738px;"></div>
                    <div class="leftDown1 tooth-icon" style="top: 923px;left: 693px;"></div>
    

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


    var remark = $('#remark').val();


    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remark = remark.replace(reg,"\n");
    $('#remarkText').html(remark);

    // 1未生长 0歪斜 2龋齿 
    var styles = { '1': "style3", '10': "style1", '11':
"style1", '12': "style1", '13': "style1", '2': "style2", '99': "" }

    $("input:radio[name='answer-1'][value='"+ a1 +"']").attr('checked','true');
    $("input:radio[name='answer-2'][value='"+ a2 +"']").attr('checked','true');
    $("input:radio[name='answer-3'][value='"+ a3 +"']").attr('checked','true');
    $("input:radio[name='answer-4'][value='"+ a4 +"']").attr('checked','true');
    

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


    $('.print').click(function(){
        window.print();
    });


</script>
</body>
</html>

