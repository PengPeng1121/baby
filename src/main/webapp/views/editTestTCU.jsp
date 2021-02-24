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
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>
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
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">
        <h3 style="margin-top: 0px;margin-bottom: 20px;">复诊</h3>
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
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">

                <input id="resultID" type="hidden" value="<s:property value="resultTCU.id"/>">
                <input id="timeOld" type="hidden" value="<s:property value="resultTCU.nextVisitTime"/>">
                <input id="r2Old" type="hidden" value="<s:property value="resultTCU.r2"/>">
                <input id="r3Old" type="hidden" value="<s:property value="resultTCU.r3"/>">
                <input id="r4Old" type="hidden" value="<s:property value="resultTCU.r4"/>">
                <input id="r5Old" type="hidden" value="<s:property value="resultTCU.r5"/>">
                <input id="r6Old" type="hidden" value="<s:property value="resultTCU.r6"/>">
                <input id="r7Old" type="hidden" value="<s:property value="resultTCU.r7"/>">
                



                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                        <tbody style="width: 100%">  
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>1</td>
                                <td>
                                    建议复诊时间
                                </td>
                                <td colspan="2">
                                    <input id="time" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>2</td>
                                <td>
                                    发育测评
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="r2"  value="0" id="checkbox-answer-1-1">
                                    <label for="checkbox-answer-1-1" style="font-weight: normal"> 儿心测评</label>
                                    <input type="checkbox" name="r2"  value="1" id="checkbox-answer-1-2">
                                    <label for="checkbox-answer-1-2" style="font-weight: normal"> 感觉统合测评</label>
                                    <input type="checkbox" name="r2"  value="2" id="checkbox-answer-1-3">
                                    <label for="checkbox-answer-1-3" style="font-weight: normal"> 儿童学习能力提升</label>
                                    <input type="checkbox" name="r2"  value="3" id="checkbox-answer-1-4">
                                    <label for="checkbox-answer-1-4" style="font-weight: normal"> 智商能力评估</label>
                                    <input type="checkbox" name="r5"  value="4" id="checkbox-answer-1-5">
                                    <label for="checkbox-answer-1-1" style="font-weight: normal"> 注意力评估与指导</label>
                                    <input type="checkbox" name="r6"  value="5" id="checkbox-answer-1-6">
                                    <label for="checkbox-answer-1-1" style="font-weight: normal"> 儿童综合能力评估与指导</label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>3</td>
                                <td>
                                    营养与喂养
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="r3"  value="0" id="checkbox-answer-2-1">
                                    <label for="checkbox-answer-2-1" style="font-weight: normal"> 营养评估与饮食指导</label>
                                    <input type="checkbox" name="r3"  value="1" id="checkbox-answer-2-2">
                                    <label for="checkbox-answer-2-2" style="font-weight: normal"> 个性化食谱制定</label>
                                    <input type="checkbox" name="r3"  value="2" id="checkbox-answer-2-3">
                                    <label for="checkbox-answer-2-3" style="font-weight: normal"> 乳母饮食指导</label>
                                    
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>4</td>
                                <td>
                                    感官筛查
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="r4"  value="0" id="checkbox-answer-3-1">
                                    <label for="checkbox-answer-3-1" style="font-weight: normal"> 口腔检查</label>
                                    <input type="checkbox" name="r4"  value="1" id="checkbox-answer-3-2">
                                    <label for="checkbox-answer-3-2" style="font-weight: normal"> 牙齿涂氟</label>
                                    <input type="checkbox" name="r4"  value="2" id="checkbox-answer-3-3">
                                    <label for="checkbox-answer-3-3" style="font-weight: normal"> 窝沟封闭</label>
                                    <input type="checkbox" name="r4"  value="3" id="checkbox-answer-3-4">
                                    <label for="checkbox-answer-3-4" style="font-weight: normal"> 视力筛查</label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>5</td>
                                <td>
                                    儿童综合化验检查
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="r5"  value="0" id="checkbox-answer-4-1">
                                    <label for="checkbox-answer-4-1" style="font-weight: normal"> 血常规</label>
                                    <input type="checkbox" name="r5"  value="1" id="checkbox-answer-4-2">
                                    <label for="checkbox-answer-4-2" style="font-weight: normal"> 骨源性碱性磷酸酶</label>
                                    <input type="checkbox" name="r5"  value="2" id="checkbox-answer-4-3">
                                    <label for="checkbox-answer-4-3" style="font-weight: normal"> ABO+Rh血型鉴定</label>
                                    <input type="checkbox" name="r5"  value="3" id="checkbox-answer-4-4">
                                    <label for="checkbox-answer-4-4" style="font-weight: normal"> 尿常规</label>

                                    <input type="checkbox" name="r5"  value="4" id="checkbox-answer-4-5">
                                    <label for="checkbox-answer-4-5" style="font-weight: normal"> 维生素D</label>
                                    <input type="checkbox" name="r5"  value="5" id="checkbox-answer-4-6">
                                    <label for="checkbox-answer-4-6" style="font-weight: normal"> 14项慢性食物过敏原检测</label>
                                    <input type="checkbox" name="r5"  value="6" id="checkbox-answer-4-7">
                                    <label for="checkbox-answer-4-7" style="font-weight: normal"> 21项速发性过敏原检测</label>
                                    <input type="checkbox" name="r5"  value="7" id="checkbox-answer-4-8">
                                    <label for="checkbox-answer-4-8" style="font-weight: normal"> 微量元素</label>

                                    <input type="checkbox" name="r5"  value="8" id="checkbox-answer-4-9">
                                    <label for="checkbox-answer-4-9" style="font-weight: normal"> 乙肝两对半定性</label>
                                    <input type="checkbox" name="r5"  value="9" id="checkbox-answer-4-10">
                                    <label for="checkbox-answer-4-10" style="font-weight: normal"> 乙肝表面抗体定量</label>
                                    <input type="checkbox" name="r5"  value="10" id="checkbox-answer-4-11">
                                    <label for="checkbox-answer-4-11" style="font-weight: normal"> 总IgE</label>
                                    <input type="checkbox" name="r5"  value="11" id="checkbox-answer-4-12">
                                    <label for="checkbox-answer-4-12" style="font-weight: normal"> 心肌酶谱5项</label>

                                    <input type="checkbox" name="r5"  value="12" id="checkbox-answer-4-13">
                                    <label for="checkbox-answer-4-13" style="font-weight: normal"> 肝功能</label>
                                    <input type="checkbox" name="r5"  value="13" id="checkbox-answer-4-14">
                                    <label for="checkbox-answer-4-14" style="font-weight: normal"> 乙肝两对半定量</label>
                                    <input type="checkbox" name="r5"  value="14" id="checkbox-answer-4-15">
                                    <label for="checkbox-answer-4-15" style="font-weight: normal"> 肠道菌群</label>
                                    
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>6</td>
                                <td>
                                    综合体检套餐
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="r6"  value="0" id="checkbox-answer-5-1">
                                    <label for="checkbox-answer-5-1" style="font-weight: normal"> 身高增长综合体检</label>
                                    <input type="checkbox" name="r6"  value="1" id="checkbox-answer-5-2">
                                    <label for="checkbox-answer-5-2" style="font-weight: normal"> 综合体检套餐</label> 
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>7</td>
                                <td colspan="3">
                                    <input type="checkbox" name="r7"  value="0" id="checkbox-answer-6-1">
                                    <label for="checkbox-answer-6-1" style="font-weight: normal"> B</label>
                                    <input type="checkbox" name="r7"  value="1" id="checkbox-answer-6-2">
                                    <label for="checkbox-answer-6-2" style="font-weight: normal"> H</label>
                                    <input type="checkbox" name="r7"  value="2" id="checkbox-answer-6-3">
                                    <label for="checkbox-answer-6-3" style="font-weight: normal"> Z</label>
                                    <input type="checkbox" name="r7"  value="3" id="checkbox-answer-6-4">
                                    <label for="checkbox-answer-6-4" style="font-weight: normal"> C</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div style="margin-bottom: 73px;">
                <a type="button" class="btn btn-default pull-right" style="margin-left: 20px" onclick="save()" >保存并返回</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
<script type="text/javascript">
    $('#time').cxCalendar();

    var r2Old = $('#r2Old').val();
    var r3Old = $('#r3Old').val();
    var r4Old = $('#r4Old').val();
    var r5Old = $('#r5Old').val();
    var r6Old = $('#r6Old').val();
    var r7Old = $('#r7Old').val();
    // var r8 = $('#r8').val();
    // var r1Arr = $('#r1').val().split(',');
    var r2ArrOld = r2Old.split(',');
    var r3ArrOld = r3Old.split(',');
    var r4ArrOld = r4Old.split(',');
    var r5ArrOld = r5Old.split(',');
    var r6ArrOld = r6Old.split(',');
    var r7ArrOld = r7Old.split(',');
    // var r8Arr = $('#r8').val().split(',');

    

    // for (var i = 0, len = r1Arr.length; i < len; i++) {
    //     $("input:checkbox[name='r1'][value='" + r1Arr[i] + "']").attr('checked','true');
    // }
    for (var j = 0, jlen = r2ArrOld.length; j < jlen; j++) {
        $("input:checkbox[name='r2'][value='" + r2ArrOld[j] + "']").attr('checked','true');
    }
    for (var k = 0, klen = r3ArrOld.length; k < klen; k++) {
        $("input:checkbox[name='r3'][value='" + r3ArrOld[k] + "']").attr('checked','true');
    }
    for (var m = 0, mlen = r4ArrOld.length; m < mlen; m++) {
        $("input:checkbox[name='r4'][value='" + r4ArrOld[m] + "']").attr('checked','true');
    }
    for (var n = 0, nlen = r5ArrOld.length; n < nlen; n++) {
        $("input:checkbox[name='r5'][value='" + r5ArrOld[n] + "']").attr('checked','true');
    }
    for (var p = 0, plen = r6ArrOld.length; p < plen; p++) {
        $("input:checkbox[name='r6'][value='" + r6ArrOld[p] + "']").attr('checked','true');
    }
    for (var q = 0, qlen = r7ArrOld.length; q < qlen; q++) {
        $("input:checkbox[name='r7'][value='" + r7ArrOld[q] + "']").attr('checked','true');
    }
    var time = $("#timeOld").val();
    $("#time").val(time);
    

    function save() {
        
            $.tipModal('confirm', 'success', '确定保存？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }
    function score() {        
        $.ajax({
            url: 'updateresultTCU',
            type: 'post',
            data: getData(),
            success:function (json) {
                var rId = json.resultTCU.id;
                var refreshData = {
                    babyid: $("#babyid").val(),
                    testId: 56,
                    resultId: rId
                };
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        // window.location = "showresultBasic2?id=" + rId;
                        window.location = "record/moreinfo?babyid=" + $("#babyid").val();
                    }
                })
                // window.location = "showresultBasic2?id=" + json.resultBasic2.id;
            }
        })
    }
    function getData() {
        var data = {};
        // var r1List = [];
        // var r1Str = '';
        // $('input[name="r1"]:checked').each(function(){
        //     r1List.push($(this).val());
        //     r1Str = r1List.join(',');
        // });
        var r2List = [];
        var r2Str = '';
        $('input[name="r2"]:checked').each(function(){
            r2List.push($(this).val());
            r2Str = r2List.join(',');
        });
        var r3List = [];
        var r3Str = '';
        $('input[name="r3"]:checked').each(function(){
            r3List.push($(this).val());
            r3Str = r3List.join(',');
        });
        var r4List = [];
        var r4Str = '';
        $('input[name="r4"]:checked').each(function(){
            r4List.push($(this).val());
            r4Str = r4List.join(',');
        });
        var r5List = [];
        var r5Str = '';
        $('input[name="r5"]:checked').each(function(){
            r5List.push($(this).val());
            r5Str = r5List.join(',');
        });
        var r6List = [];
        var r6Str = '';
        $('input[name="r6"]:checked').each(function(){
            r6List.push($(this).val());
            r6Str = r6List.join(',');
        });
        var r7List = [];
        var r7Str = '';
        $('input[name="r7"]:checked').each(function(){
            r7List.push($(this).val());
            r7Str = r7List.join(',');
        });

        // var r8List = [];
        // var r8Str = '';
        // $('input[name="r8"]:checked').each(function(){
        //     r8List.push($(this).val());
        //     r8Str = r8List.join(',');
        // });


        resultID = $("#resultID").val();

        // 结果页ID
        data ['resultTCU.id'] = resultID;

        data['resultTCU.nextVisitTime'] = $("#time").val().trim();
        // data['resultTCU.r1'] = r1Str;
        data['resultTCU.r2'] = r2Str;
        data['resultTCU.r3'] = r3Str;
        data['resultTCU.r4'] = r4Str;
        data['resultTCU.r5'] = r5Str;
        data['resultTCU.r6'] = r6Str;
        data['resultTCU.r7'] = r7Str;
        // data['resultTCU.r8'] = r8Str;
        data['resultTCU.babyId'] = $("#babyid").val();
        
        return data;
    }




</script>

</body>
</html>