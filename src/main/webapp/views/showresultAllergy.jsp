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
        .column-body{
            width: 500px;
            height: 240px;
            margin-left: 50px;
            margin-top: 5px;
        }
        .item-line{
            border-bottom: 1px solid #df9390;
            height: 40px;
        }
        .item{
            letter-spacing: 8px;
            width: 230px;
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
        }
        label {
            font-size: 14px;
            letter-spacing: 3px;
            font-weight: normal;
        }
        .detail{
            margin: 0px;
            font-weight: normal;
            font-size: 14px;
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
        .column-body{
            width: 500px !important;
            height: 240px !important;
            margin-left: 50px !important;
            margin-top: 5px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultPhysical.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultPhysical.id"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">


        <input id="r1" type="hidden" value="<s:property value="resultPhysical.r1" />">
        <input id="r2" type="hidden" value="<s:property value="resultPhysical.r2" />">
        <input id="r3" type="hidden" value="<s:property value="resultPhysical.r3" />">
        <input id="r4" type="hidden" value="<s:property value="resultPhysical.r4" />">
        <input id="r5" type="hidden" value="<s:property value="resultPhysical.r5" />">
        <input id="r6" type="hidden" value="<s:property value="resultPhysical.r6" />">
        <input id="r7" type="hidden" value="<s:property value="resultPhysical.r7" />">
        <input id="r8" type="hidden" value="<s:property value="resultPhysical.r8" />">
        <input id="r9" type="hidden" value="<s:property value="resultPhysical.r9" />">
        <input id="r10" type="hidden" value="<s:property value="resultPhysical.r10" />">
        <input id="r11" type="hidden" value="<s:property value="resultPhysical.r11" />">
        <input id="r12" type="hidden" value="<s:property value="resultPhysical.r12" />">
        <input id="r13" type="hidden" value="<s:property value="resultPhysical.r13" />">
        <input id="r14" type="hidden" value="<s:property value="resultPhysical.r14" />">
        <input id="r15" type="hidden" value="<s:property value="resultPhysical.r15" />">



        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg4Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg4Girl.jpg"">
                    </s:if>

                    <table style="width: 20%;
                        border: 0;
                        position: relative;
                        top: 120px;
                        left: 50px;
                        font-size: 16px">
                        <tr>
                            <td class="col-md-5" style="font-weight: bold;">
                                <span style="letter-spacing: 18px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                            </td>
                            <td class="col-md-7" style="border-bottom: 1px solid #df938f;padding-left: 0px"><s:property value="baby.name"/></td>
                        </tr>
                    </table>

                    <table style="width: 660px; height:760px;border:0;font-size: 16px;font-weight: bold; position: relative;top: 210px;left: 60px" id="content-table">
                        <tr class="item-line">
                            <td class="item">
                                眼圈发紫或指尖发白
                            </td>
                            <td style="width: 75px">
                                <input type="radio" name="answer-1" value="1" checked  id="radio-answer-1-1">
                                <label for="radio-answer-1-1">有</label>
                            </td>
                            <td style="width: 75px">
                                <input type="radio" name="answer-1" value="0" id="radio-answer-1-0">
                                <label for="radio-answer-1-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                头发稀疏偏黄，头两侧缺少头发
                            </td>
                            <td>
                                <input type="radio" name="answer-2" value="1" checked  id="radio-answer-2-1">
                                <label for="radio-answer-2-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-2" value="0" id="radio-answer-2-0">
                                <label for="radio-answer-2-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                有荨麻疹、慢性湿疹、口水疹、尿布疹病史
                            </td>
                            <td>
                                <input type="radio" name="answer-3" value="1" checked  id="radio-answer-3-1">
                                <label for="radio-answer-3-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-3" value="0" id="radio-answer-3-0">
                                <label for="radio-answer-3-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                皮肤爱红、爱痒
                            </td>
                            <td>
                                <input type="radio" name="answer-4" value="1" checked  id="radio-answer-4-1">
                                <label for="radio-answer-4-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-4" value="0" id="radio-answer-4-0">
                                <label for="radio-answer-4-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                喜欢揉鼻子、揉眼睛、挠耳朵
                            </td>
                            <td>
                                <input type="radio" name="answer-5" value="1" checked id="radio-answer-5-1">
                                <label for="radio-answer-5-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-5" value="0" id="radio-answer-5-0">
                                <label for="radio-answer-5-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                排便异常，腹泻、便秘、便血
                            </td>
                            <td>
                                <input type="radio" name="answer-6" value="1" checked id="radio-answer-6-1">
                                <label for="radio-answer-6-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-6" value="0"  id="radio-answer-6-0">
                                <label for="radio-answer-6-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                睡眠差，俯卧睡，经常腹痛
                            </td>
                            <td>
                                <input type="radio" name="answer-7" value="1" checked id="radio-answer-7-1">
                                <label for="radio-answer-7-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-7" value="0" id="radio-answer-7-0">
                                <label for="radio-answer-7-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                无原因的反复咳嗽、流涕、打喷嚏、喘息
                            </td>
                            <td>
                                <input type="radio" name="answer-8" value="1" checked id="radio-answer-8-1" >
                                <label for="radio-answer-8-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-8" value="0" id="radio-answer-8-0" >
                                <label for="radio-answer-8-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                偶有吐奶、厌奶、吃完食物出现呕吐及腹泻
                            </td>
                            <td>
                                <input type="radio" name="answer-9" value="1" checked id="radio-answer-9-1" >
                                <label for="radio-answer-9-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-9" value="0" id="radio-answer-9-0" >
                                <label for="radio-answer-9-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                一段时间内体重不增，或体重异常增加
                            </td>
                            <td>
                                <input type="radio" name="answer-10" value="1" checked id="radio-answer-10-1" >
                                <label for="radio-answer-10-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-10" value="0"  id="radio-answer-10-0" >
                                <label for="radio-answer-10-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                身高体重增长缓慢
                            </td>
                            <td>
                                <input type="radio" name="answer-11" value="1" checked  id="radio-answer-11-1" >
                                <label for="radio-answer-11-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-11" value="0"  id="radio-answer-11-0" >
                                <label for="radio-answer-11-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                食欲差，积食，厌食厌奶
                            </td>
                            <td>
                                <input type="radio" name="answer-12" value="1" checked id="radio-answer-12-1">
                                <label for="radio-answer-12-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-12" value="0" id="radio-answer-12-0">
                                <label for="radio-answer-12-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                两种以上微量元素缺乏
                            </td>
                            <td>
                                <input type="radio" name="answer-13" value="1" checked  id="radio-answer-13-1">
                                <label for="radio-answer-13-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-13" value="0" id="radio-answer-13-0">
                                <label for="radio-answer-13-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                反复呼吸道感染
                            </td>
                            <td>
                                <input type="radio" name="answer-14" value="1" checked id="radio-answer-14-1">
                                <label for="radio-answer-14-1">有</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-14" value="0" id="radio-answer-14-0">
                                <label for="radio-answer-14-0">无</label>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                嗓子呼噜声
                            </td>
                            <td>
                                <input type="radio" name="answer-15" value="1" checked id="radio-answer-15-1" >
                                <label for="radio-answer-15-1">有</label>        
                            </td>
                            <td>
                                <input type="radio" name="answer-15" value="0" id="radio-answer-15-0"  >
                                <label for="radio-answer-15-0">无</label>
                            </td>
                        </tr>
                    </table>
                    <ul>
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
    var gender = $('#gender').val();
    var remark = $('#remark').val();

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

    $("input:radio[name='answer-1'][value='"+ r1 +"']").attr('checked','true');
    $("input:radio[name='answer-2'][value='"+ r2 +"']").attr('checked','true');
    $("input:radio[name='answer-3'][value='"+ r3 +"']").attr('checked','true');
    $("input:radio[name='answer-4'][value='"+ r4 +"']").attr('checked','true');
    $("input:radio[name='answer-5'][value='"+ r5 +"']").attr('checked','true');
    $("input:radio[name='answer-6'][value='"+ r6 +"']").attr('checked','true');
    $("input:radio[name='answer-7'][value='"+ r7 +"']").attr('checked','true');
    $("input:radio[name='answer-8'][value='"+ r8 +"']").attr('checked','true');
    $("input:radio[name='answer-9'][value='"+ r9 +"']").attr('checked','true');
    $("input:radio[name='answer-10'][value='"+ r10 +"']").attr('checked','true');
    $("input:radio[name='answer-11'][value='"+ r11 +"']").attr('checked','true');
    $("input:radio[name='answer-12'][value='"+ r12 +"']").attr('checked','true');
    $("input:radio[name='answer-13'][value='"+ r13 +"']").attr('checked','true');
    $("input:radio[name='answer-14'][value='"+ r14 +"']").attr('checked','true');
    $("input:radio[name='answer-15'][value='"+ r15 +"']").attr('checked','true');



    function draw () {

    }
    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

