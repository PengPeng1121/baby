<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>新建评测-儿童发育评测平台</title>
    <s:include value="/statics/head.html"></s:include>
    <style type="text/css">
        p{
            margin:0;
        }
        
        .noanswer{
            background-color: #ffeb3b;
        }

        .start{
            background-color: #79eef7;
        }
        .data-input{
            text-align: right;
            height: 25px;
            line-height: 25px;
        }


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">体格头面检查</h1>
        <form class="form-horizontal">
            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">小儿基本资料</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">姓名</label>
                        <label class="col-md-3 front-label"><s:property value="baby.name"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">性别</label>
                        <label class="col-md-3 front-label"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">出生日期</label>
                        <label class="col-md-3 front-label"><s:date name="baby.birthday" format="yyyy-MM-dd"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">月龄</label>
                        <label class="col-md-3 front-label"><s:property value="days"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">检查日期</label>
                        <label class="col-md-3 front-label"><%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%></label>
                    </div>
                    
                </div>
            </div>
            <div class="panel panel-default front-panel">
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>1</td>
                            <td>
                                眼圈发紫或指尖发白
                            </td>
                            <td>
                                <label for="radio-answer-1-1">
                                    <input type="radio" name="answer-1" value="1" checked  id="radio-answer-1-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-1-0">
                                    <input type="radio" name="answer-1" value="0" id="radio-answer-1-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-1-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>2</td>
                            <td>
                                头发稀疏偏黄，头两侧缺少头发
                            </td>
                            <td>
                                <label for="radio-answer-2-1">
                                    <input type="radio" name="answer-2" value="1" checked  id="radio-answer-2-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-2-0">
                                    <input type="radio" name="answer-2" value="0" id="radio-answer-2-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-2-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">    
                            <td>3</td>
                            <td>
                                有荨麻疹、慢性湿疹、口水疹、尿布疹病史
                            </td>
                            <td>
                                <label for="radio-answer-3-1">
                                    <input type="radio" name="answer-3" value="1" checked  id="radio-answer-3-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-3-0">
                                    <input type="radio" name="answer-3" value="0" id="radio-answer-3-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-3-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>4</td>
                            <td>
                                皮肤爱红、爱痒
                            </td>
                            <td>
                                <label for="radio-answer-4-1">
                                    <input type="radio" name="answer-4" value="1" checked  id="radio-answer-4-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-4-0">
                                    <input type="radio" name="answer-4" value="0" id="radio-answer-4-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-4-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            
                            <td>5</td>
                            <td>
                                喜欢揉鼻子、揉眼睛、挠耳朵
                            </td>
                            <td>
                                <label for="radio-answer-5-1">
                                    <input type="radio" name="answer-5" value="1" checked id="radio-answer-5-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-5-0">
                                    <input type="radio" name="answer-5" value="0" id="radio-answer-5-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-5-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>6</td>
                            <td>
                                排便异常，腹泻、便秘、便血
                            </td>
                            <td>
                                <label for="radio-answer-6-1">
                                    <input type="radio" name="answer-6" value="1" checked id="radio-answer-6-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-6-0">
                                    <input type="radio" name="answer-6" value="0"  id="radio-answer-6-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-6-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>7</td>
                            <td>
                                睡眠差，俯卧睡，经常腹痛
                            </td>
                            <td>
                                <label for="radio-answer-7-1">
                                    <input type="radio" name="answer-7" value="1" checked id="radio-answer-7-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-7-0">
                                    <input type="radio" name="answer-7" value="0" id="radio-answer-7-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-7-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>8</td>
                            <td>
                                无原因的反复咳嗽、流涕、打喷嚏、喘息
                            </td>
                            <td>
                                <label for="radio-answer-8-1">
                                    <input type="radio" name="answer-8" value="1" checked id="radio-answer-8-1"  />有
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input type="radio" name="answer-8" value="0" id="radio-answer-8-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-8-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>9</td>
                            <td>
                                偶有吐奶、厌奶、吃完食物出现呕吐及腹泻
                            </td>
                            <td>
                                <label for="radio-answer-9-1">
                                    <input type="radio" name="answer-9" value="1" checked id="radio-answer-9-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-9-0">
                                    <input type="radio" name="answer-9" value="0" id="radio-answer-9-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-9-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>10</td>
                            <td>
                                一段时间内体重不增，或体重异常增加
                            </td>
                            <td>
                                <label for="radio-answer-10-1">
                                    <input type="radio" name="answer-10" value="1" checked id="radio-answer-10-1"  />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-10-0">
                                    <input type="radio" name="answer-10" value="0"  id="radio-answer-10-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-10-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>11</td>
                            <td>
                                身高体重增长缓慢
                            </td>
                            <td>
                                <label for="radio-answer-11-1">
                                    <input type="radio" name="answer-11" value="1" checked  id="radio-answer-11-1"  />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-11-0">
                                    <input type="radio" name="answer-11" value="0"  id="radio-answer-11-0"  />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-11-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>12</td>
                            <td>
                                食欲差，积食，厌食厌奶
                            </td>
                            <td>
                                <label for="radio-answer-12-1">
                                    <input type="radio" name="answer-12" value="1" checked id="radio-answer-12-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-12-0">
                                    <input type="radio" name="answer-12" value="0" id="radio-answer-12-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-12-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>13</td>
                            <td>
                                两种以上微量元素缺乏
                            </td>
                            <td>
                                <label for="radio-answer-13-1">
                                    <input type="radio" name="answer-13" value="1" checked  id="radio-answer-13-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-13-0">
                                    <input type="radio" name="answer-13" value="0" id="radio-answer-13-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-13-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>14</td>
                            <td>
                                反复呼吸道感染
                            </td>
                            <td>
                                <label for="radio-answer-14-1">
                                    <input type="radio" name="answer-14" value="1" checked id="radio-answer-14-1" />有
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-14-0">
                                    <input type="radio" name="answer-14" value="0" id="radio-answer-14-0" />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-14-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>15</td>
                            <td>
                                嗓子呼噜声
                            </td>
                            <td>
                                <label for="radio-answer-15-1">
                                    <input type="radio" name="answer-15" value="1" checked id="radio-answer-15-1"  />有
                                </label>        
                            </td>
                            <td>
                                <label for="radio-answer-15-0">
                                    <input type="radio" name="answer-15" value="0" id="radio-answer-15-0"  />无
                                </label>
                            </td>
                            <td>
                                <input id="answer-15-detail"  style="width: 80%" />
                            </td>
                        </tr>
                    </tbody>
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

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>

            <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">


        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">



    //月龄
    var days = parseInt($('#days').val());

    

    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }


    function score() {
        var r1 = parseInt($("input:radio[name='answer-1']:checked").val());
        var r2 = parseInt($("input:radio[name='answer-2']:checked").val());
        var r3 = parseInt($("input:radio[name='answer-3']:checked").val());
        var r4 = parseInt($("input:radio[name='answer-4']:checked").val());
        var r5 = parseInt($("input:radio[name='answer-5']:checked").val());
        var r6 = parseInt($("input:radio[name='answer-6']:checked").val());
        var r7 = parseInt($("input:radio[name='answer-7']:checked").val());
        var r8 = parseInt($("input:radio[name='answer-8']:checked").val());
        var r9 = parseInt($("input:radio[name='answer-9']:checked").val());
        var r10 = parseInt($("input:radio[name='answer-10']:checked").val());
        var r11 = parseInt($("input:radio[name='answer-11']:checked").val());
        var r12 = parseInt($("input:radio[name='answer-12']:checked").val());
        var r13 = parseInt($("input:radio[name='answer-13']:checked").val());
        var r14 = parseInt($("input:radio[name='answer-14']:checked").val());
        var r15 = parseInt($("input:radio[name='answer-15']:checked").val());

        
        var data = "{";
        data += "'resultAllergy.babyId':" + $("#babyid").val();
        data += "}";
        
        data = eval('(' + data + ')');
        data['resultAllergy.r1'] = r1;
        data['resultAllergy.r2'] = r2;
        data['resultAllergy.r3'] = r3;
        data['resultAllergy.r4'] = r4;
        data['resultAllergy.r5'] = r5;
        data['resultAllergy.r6'] = r6;
        data['resultAllergy.r7'] = r7;
        data['resultAllergy.r8'] = r8;
        data['resultAllergy.r9'] = r9;
        data['resultAllergy.r10'] = r10;
        data['resultAllergy.r11'] = r11;
        data['resultAllergy.r12'] = r12;
        data['resultAllergy.r13'] = r13;
        data['resultAllergy.r14'] = r14;
        data['resultAllergy.r15'] = r15;



        $.ajax({
            url: 'saveresultAllergy',
            type: 'post',
            data: data,
            success:function (json) {
                window.location = "showresultAllergy?id=" + json.resultAllergy.id;
            }
        })
    }


</script>

</body>
</html>