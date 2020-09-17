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
        label {
            font-size: 14px;
            letter-spacing: 3px;
            font-weight: normal;
        }
        li{
           padding-bottom: 10px;
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
        .item-line{
            border-bottom: 1px solid #df9390;
            height: 45px;
        }
        #table-1{
            top: 600px;
            position: absolute;
            left: 450px;
            width: 800px;
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
        #name-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
        }
        #birth-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
        }
        #name-table{
            width: 700px !important;
        }
        #table-main{
            left: 80px !important;
            width: 650px  !important;
        }
        #table-1{
            top: 600px !important;
            position: absolute !important;
            left: 80px !important;
            width: 650px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultAttention.babyid"/>">
        <input id="a1" type="hidden" value="<s:property value="resultAttention.a1"/>">
        <input id="a2" type="hidden" value="<s:property value="resultAttention.a2"/>">
        <input id="a3" type="hidden" value="<s:property value="resultAttention.a3"/>">
        <input id="a4" type="hidden" value="<s:property value="resultAttention.a4"/>">
        <input id="a5" type="hidden" value="<s:property value="resultAttention.a5"/>">
        <input id="score" type="hidden" value="<s:property value="resultAttention.score"/>">
        <input id="remark" type="hidden" value="<s:property value="resultAttention.suggest"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgAttentionBoy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBgAttentionGirl.jpg">
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


                    <table id="table-main" align="center" style="border: 0px;margin: 0; width: 35%;position: absolute;left: 450px;top: 280px;">
                        <tbody style="width: 100%">
                            <tr class="item-line">
                                <td>
                                    <span  style="font-weight: bold;font-size: 16px">
                                       抗干扰:
                                    </span>

                                    <input type="radio" name="a1" value="0"   id="radio-answer-1-0">
                                    <label for="radio-answer-1-0" style="width: 120px;margin-left: 30px;font-weight: normal;"> 良好</label>

                                    <input type="radio" name="a1" value="1"   id="radio-answer-1-1">
                                    <label for="radio-answer-1-1" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                    <input type="radio" name="a1" value="2"   id="radio-answer-1-2">
                                    <label for="radio-answer-1-2" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                    <input type="radio" name="a1" value="3"   id="radio-answer-1-3">
                                    <label for="radio-answer-1-3" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>


                                    
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span  style="font-weight: bold;font-size: 16px">
                                       转移:
                                    </span>

                                    <input type="radio" name="a2" value="0"   id="radio-answer-2-0">
                                    <label for="radio-answer-2-0" style="width: 120px;margin-left: 45px;font-weight: normal;"> 良好</label>

                                    <input type="radio" name="a2" value="1"   id="radio-answer-2-1">
                                    <label for="radio-answer-2-1" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                    <input type="radio" name="a2" value="2"   id="radio-answer-2-2">
                                    <label for="radio-answer-2-2" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                    <input type="radio" name="a2" value="3"   id="radio-answer-2-3">
                                    <label for="radio-answer-2-3" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                    
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span  style="font-weight: bold;font-size: 16px">
                                       分配:
                                    </span>

                                    <input type="radio" name="a3" value="0"   id="radio-answer-3-0">
                                    <label for="radio-answer-3-0" style="width: 120px;margin-left: 45px;font-weight: normal;"> 良好</label>

                                    <input type="radio" name="a3" value="1"   id="radio-answer-3-1">
                                    <label for="radio-answer-3-1" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                    <input type="radio" name="a3" value="2"   id="radio-answer-3-2">
                                    <label for="radio-answer-3-2" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                    <input type="radio" name="a3" value="3"   id="radio-answer-3-3">
                                    <label for="radio-answer-3-3" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                    
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span  style="font-weight: bold;font-size: 16px">
                                       广度:
                                    </span>

                                    <input type="radio" name="a4" value="0"   id="radio-answer-4-0">
                                    <label for="radio-answer-4-0" style="width: 120px;margin-left: 45px;font-weight: normal;"> 良好</label>

                                    <input type="radio" name="a4" value="1"   id="radio-answer-4-1">
                                    <label for="radio-answer-4-1" style="width: 120px;margin-left: 10px;font-weight: normal;"> 正常</label>

                                    <input type="radio" name="a4" value="2"   id="radio-answer-4-2">
                                    <label for="radio-answer-4-2" style="width: 120px;margin-left: 10px;font-weight: normal;"> 需要提升</label>

                                    <input type="radio" name="a4" value="3"   id="radio-answer-4-3">
                                    <label for="radio-answer-4-3" style="width: 120px;margin-left: 10px;font-weight: normal;"> 筛查</label>
                                    
                                </td>
                            </tr>
                            <tr class="item-line">
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
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span  style="font-weight: bold;font-size: 16px">
                                       智商:
                                    </span>
                                    <span style="margin-left: 31px">
                                        <s:property value="resultAttention.score"/> 
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
                                <textarea rows="10" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="remarkText"></textarea>
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
    var a1 = $('#a1').val();
    var a2 = $('#a2').val();
    var a3 = $('#a3').val();
    var a4 = $('#a4').val();
    var a5 = $('#a5').val();

    var remark = $('#remark').val();
    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remark = remark.replace(reg,"\n");
    $('#remarkText').html(remark);

    
    $("input:radio[name='a1'][value='"+ a1 +"']").attr('checked','true');
    
    $("input:radio[name='a2'][value='"+ a2 +"']").attr('checked','true');

    $("input:radio[name='a3'][value='"+ a3 +"']").attr('checked','true');

    $("input:radio[name='a4'][value='"+ a4 +"']").attr('checked','true');

    $("input:radio[name='a5'][value='"+ a5 +"']").attr('checked','true');


    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

