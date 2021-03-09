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

        <input id="babyid" type="hidden" value="<s:property value="resultDietary.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultDietary.id"/>">
        

        <input id="r3" type="hidden" value="<s:property value="resultDietary.r3"/>">
        <input id="r6" type="hidden" value="<s:property value="resultDietary.r6"/>">
        <input id="r8" type="hidden" value="<s:property value="resultDietary.r8"/>">
        <input id="r9" type="hidden" value="<s:property value="resultDietary.r9"/>">
        <input id="r10" type="hidden" value="<s:property value="resultDietary.r10"/>">
        <input id="r11" type="hidden" value="<s:property value="resultDietary.r11"/>">
        <input id="r12" type="hidden" value="<s:property value="resultDietary.r12"/>">
        <input id="r13" type="hidden" value="<s:property value="resultDietary.r13"/>">
        <input id="r14" type="hidden" value="<s:property value="resultDietary.r14"/>">
        <input id="r15" type="hidden" value="<s:property value="resultDietary.r15"/>">
        <input id="remark" type="hidden" value="<s:property value="resultDietary.remark"/>">
        


        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
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



                    <table id="table-main" align="center" style="border: 0px;margin: 0; width: 35%;position: absolute;left: 440px;top: 280px;">
                        <tbody style="width: 100%">
                            <tr class="item-line">
                                <td>
                                    <span>
                                        当前奶量:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultDietary.r1"/>  
                                    </span>

                                    <span style="margin-left: 30px">
                                        奶类种类:
                                    </span>
                                    <span style="margin-left: 10px">
                                        <s:property value="resultDietary.r2"/>  
                                    </span>
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                       是否有过敏情况:
                                    </span>

                                    <input type="radio" name="r1" value="1"   id="radio-answer-1-1">
                                    <label for="radio-answer-1-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="r1" value="0"   id="radio-answer-1-0">
                                    <label for="radio-answer-1-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 否</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                        餐点次数:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultDietary.r4"/>  
                                    </span>

                                    <span style="margin-left: 30px">
                                        食物性状:
                                    </span>
                                    <span style="margin-left: 10px">
                                        <s:property value="resultDietary.r5"/>  
                                    </span>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       是否自主进食:
                                    </span>

                                    <input type="radio" name="r6" value="1"   id="radio-answer-2-1">
                                    <label for="radio-answer-2-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="r6" value="0"   id="radio-answer-2-0">
                                    <label for="radio-answer-2-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 否</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                        排便情况（性状/频次）:
                                    </span>
                                    <span style="margin-left: 31px">
                                        <s:property value="resultDietary.r7"/> 
                                    </span>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       是否挑食:
                                    </span>

                                    <input type="radio" name="r8" value="1"   id="radio-answer-3-1">
                                    <label for="radio-answer-3-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="r8" value="0"   id="radio-answer-3-0">
                                    <label for="radio-answer-3-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 否</label>

                                    <input type="radio" name="r8" value="2"   id="radio-answer-3-2">
                                    <label for="radio-answer-3-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 其他</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       挑食原因:
                                    </span>

                                    <input type="radio" name="r9" value="1"   id="radio-answer-4-1">
                                    <label for="radio-answer-4-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 食物选择单一</label>

                                    <input type="radio" name="r9" value="0"   id="radio-answer-4-0">
                                    <label for="radio-answer-4-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 习惯性挑食</label>

                                    <input type="radio" name="r9" value="2"   id="radio-answer-4-2">
                                    <label for="radio-answer-4-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 爱吃零食</label>

                                    <input type="radio" name="r9" value="3"   id="radio-answer-4-3">
                                    <label for="radio-answer-4-3" style="width: 80px;margin-left: 20px;font-weight: normal;"> 不喜欢气味，口味，外观，口感等</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       食物是否多样:
                                    </span>

                                    <input type="radio" name="r10" value="1"   id="radio-answer-5-1">
                                    <label for="radio-answer-5-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 多样</label>

                                    <input type="radio" name="r10" value="0"   id="radio-answer-5-0">
                                    <label for="radio-answer-5-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 单一</label>

                                    <input type="radio" name="r10" value="2"   id="radio-answer-5-2">
                                    <label for="radio-answer-5-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 不确定</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       进食习惯:
                                    </span>

                                    <input type="radio" name="r11" value="1"   id="radio-answer-6-1">
                                    <label for="radio-answer-6-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 能安静吃完一顿饭</label>

                                    <input type="radio" name="r11" value="0"   id="radio-answer-6-0">
                                    <label for="radio-answer-6-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 一边进食一边分心（看电视等）</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       进餐时间:
                                    </span>

                                    <input type="radio" name="r12" value="1"   id="radio-answer-7-1">
                                    <label for="radio-answer-7-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 5-10分钟</label>

                                    <input type="radio" name="r12" value="0"   id="radio-answer-7-0">
                                    <label for="radio-answer-7-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 10-20分钟</label>

                                    <input type="radio" name="r12" value="2"   id="radio-answer-7-2">
                                    <label for="radio-answer-7-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 20-30分钟</label>

                                    <input type="radio" name="r12" value="3"   id="radio-answer-7-3">
                                    <label for="radio-answer-7-3" style="width: 80px;margin-left: 20px;font-weight: normal;"> 大于1h</label>

                                    <input type="radio" name="r12" value="4"   id="radio-answer-7-4">
                                    <label for="radio-answer-7-4" style="width: 80px;margin-left: 20px;font-weight: normal;"> 其他</label>
                                </td>
                            </tr>
                            
                            <tr class="item-line">
                                <td>
                                    <span>
                                       是否食物奖惩制:
                                    </span>

                                    <input type="radio" name="r13" value="1"   id="radio-answer-8-1">
                                    <label for="radio-answer-8-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="r13" value="0"   id="radio-answer-8-0">
                                    <label for="radio-answer-8-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 否</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       是否情绪性进食:
                                    </span>

                                    <input type="radio" name="r14" value="1"   id="radio-answer-9-1">
                                    <label for="radio-answer-9-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="r14" value="0"   id="radio-answer-9-0">
                                    <label for="radio-answer-9-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 否</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       食物选择:
                                    </span>

                                    <input type="radio" name="r15" value="1"   id="radio-answer-10-1">
                                    <label for="radio-answer-10-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 只吃自己选择的食物</label>

                                    <input type="radio" name="r15" value="0"   id="radio-answer-10-0">
                                    <label for="radio-answer-10-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 大人给什么吃什么</label>

                                    <input type="radio" name="r15" value="0"   id="radio-answer-10-2">
                                    <label for="radio-answer-10-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 不吃没吃过的食物</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       食物响应:
                                    </span>

                                    <input type="radio" name="r16" value="1"   id="radio-answer-11-1">
                                    <label for="radio-answer-11-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 吃的很少就不吃了（剩饭菜）</label>

                                    <input type="radio" name="r16" value="0"   id="radio-answer-11-0">
                                    <label for="radio-answer-11-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 即使很饱但看到喜欢的食物仍能吃的很多</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       外因性进食:
                                    </span>

                                    <input type="radio" name="r17" value="1"   id="radio-answer-12-1">
                                    <label for="radio-answer-12-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 只吃自己选择的食物</label>

                                    <input type="radio" name="r17" value="0"   id="radio-answer-12-0">
                                    <label for="radio-answer-12-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 大人给什么吃什么</label>

                                    <input type="radio" name="r17" value="2"   id="radio-answer-12-2">
                                    <label for="radio-answer-12-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 不吃没吃过的食物</label>

                                    <input type="radio" name="r17" value="3"   id="radio-answer-12-3">
                                    <label for="radio-answer-12-3" style="width: 80px;margin-left: 20px;font-weight: normal;"> 不吃没吃过的食物</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       思考性进食:
                                    </span>

                                    <input type="radio" name="r18" value="1"   id="radio-answer-13-1">
                                    <label for="radio-answer-13-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 体重增加时进食量减少</label>

                                    <input type="radio" name="r18" value="0"   id="radio-answer-13-0">
                                    <label for="radio-answer-13-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 想减肥时进食量减少</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       每天运动时间:
                                    </span>

                                    <input type="radio" name="r19" value="1"   id="radio-answer-14-1">
                                    <label for="radio-answer-14-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 10分钟</label>

                                    <input type="radio" name="r19" value="0"   id="radio-answer-14-0">
                                    <label for="radio-answer-14-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 30分钟</label>

                                    <input type="radio" name="r19" value="2"   id="radio-answer-14-2">
                                    <label for="radio-answer-14-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 1h以上</label>

                                    <input type="radio" name="r19" value="3"   id="radio-answer-14-3">
                                    <label for="radio-answer-14-3" style="width: 80px;margin-left: 20px;font-weight: normal;"> 其他</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                       家长饮食情况:
                                    </span>

                                    <input type="radio" name="r20" value="1"   id="radio-answer-15-1">
                                    <label for="radio-answer-15-1" style="width: 80px;margin-left: 20px;font-weight: normal;"> 单一</label>

                                    <input type="radio" name="r20" value="0"   id="radio-answer-15-0">
                                    <label for="radio-answer-15-0" style="width: 80px;margin-left: 20px;font-weight: normal;"> 挑食</label>

                                    <input type="radio" name="r20" value="2"   id="radio-answer-15-2">
                                    <label for="radio-answer-15-2" style="width: 80px;margin-left: 20px;font-weight: normal;"> 其他</label>
                                    
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <!-- <p id="remarkText" style="font-weight: normal;"></p> -->
                                    <textarea id="remarkText" rows="3" style="resize:none;border: 0;width: 100%;height: 100%; font-weight: normal;"></textarea>
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

<!-- basic2 -->
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var resultid = $('#resultid').val();
    
    var r3 = $('#r3').val();
    var r6 = $('#r6').val();
    
    var r8 = $('#r8').val();
    var r9 = $('#r9').val();
    var r10 = $('#r10').val();
    var r11 = $('#r11').val();
    var r12 = $('#r12').val();
    var r13 = $('#r13').val();
    var r14 = $('#r14').val();
    var r15 = $('#r15').val();
    

    $("input:radio[name='r3'][value='"+ r3 +"']").attr('checked','true');
    $("input:radio[name='r6'][value='"+ r6 +"']").attr('checked','true');
    $("input:radio[name='r8'][value='"+ r8 +"']").attr('checked','true');

    $("input:radio[name='r9'][value='"+ r9 +"']").attr('checked','true');
    $("input:radio[name='r10'][value='"+ r10 +"']").attr('checked','true');
    $("input:radio[name='r11'][value='"+ r11 +"']").attr('checked','true');
    $("input:radio[name='r12'][value='"+ r12 +"']").attr('checked','true');
    $("input:radio[name='r13'][value='"+ r13 +"']").attr('checked','true');
    $("input:radio[name='r14'][value='"+ r14 +"']").attr('checked','true');
    $("input:radio[name='r15'][value='"+ r15 +"']").attr('checked','true');

    var remark = $('#remark').val();
    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remark = remark.replace(reg,"\n");
    $('#remarkText').html(remark);
    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

