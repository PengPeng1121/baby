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
        table > tbody > tr > td{
            width:18%;
        }
        table > tbody > tr > td:first-child{
            width: 10%;
        }
        .noanswer{
            background-color: #ffeb3b;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">小儿智能发育筛查</h1>
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
            <!-- 个人-社会 
                        精细动作-适应性
                        语言
                        大运动
                         -->
            <div class="panel panel-default front-panel">
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
                <!-- 问题列表 -->
                <input id="questionSum" type="hidden" value="<s:property value="questionList.size()"/>">
                <!-- 每组问题的个数 -->
                <input id="questionMonthSum" type="hidden" value="<s:property value="questionMonthList.size()"/>">
                <!-- type  题目类型 -->
                <input id="questionTypeSum" type="hidden" value="<s:property value="questionTypeList.size()"/>">
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                    <s:iterator value="questionTypeList" id="type">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <s:if test="#type == 61">
                                <td colspan="3">个人-社会</td>
                            </s:if>
                            <s:if test="#type == 62">
                                <td colspan="3">精细动作-适应性</td>
                            </s:if>
                            <s:if test="#type == 63">
                                <td colspan="3">语言</td>
                            </s:if>
                            <s:if test="#type == 64">
                                <td colspan="3">大运动</td>
                            </s:if>
                        </tr>
                        <tr>
                            <td>序号</td>
                            <td>问题</td>
                            <td>答题情况</td>
                        </tr>
                        <s:iterator value="questionMonthList" id="month" status="status">
                            <s:iterator value="questionList" id="question">
                                <s:if test="#question.month == #month && #question.type == #type">
                                    <tr class="question <s:property value="#question.ordinal"/>  ">
                                        <td>
                                            <s:property value="#question.ordinal"/>
                                        </td> 
                                        <td style="width:60%">
                                            <s:property value="#question.extend1"/>
                                            <s:property value="#question.extend2"/>
                                            &nbsp;
                                            <s:property value="#question.description"/>
                                        </td>
                                        
                                        <td>
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="0" />P
                                            &nbsp;
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="1" />F
                                            &nbsp;
                                            <!-- 不合作 -->
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="3" />R
                                            &nbsp;
                                        </td>
                                    </tr>
                                </s:if>
                            </s:iterator>
                        </s:iterator>

                    </s:iterator>
                    </tbody>
                </table>
            </div>
            <div style="margin-bottom: 73px;">
                <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a>
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">

    ;(function () {
    })();


    var map = {
        1: [4, 32, 57, 74],
        2: [7, 36, 40, 44, 60, 63, 86],
        3: [7, 13, 36, 40, 44, 48, 60, 63, 82, 86, 90, 98],
        4: [10, 13, 44, 48, 51, 63, 82, 86, 90, 94, 98],
        5: [10, 13, 22, 25, 51, 66, 94, 98, 102],
        6: [10, 13, 16, 19, 22, 25, 29, 33, 37, 66, 68, 75, 79, 102],
        7: [13, 16, 19, 22, 29, 33, 41, 45, 66, 68, 70, 75, 79],
        8: [2, 19, 22, 33, 41, 45, 49, 68, 70, 79, 83, 87],
        9: [2, 22, 41, 45, 49, 68, 70, 83, 87, 91],
        10: [2, 5, 11, 45, 49, 70, 72, 83, 87, 91, 95],
        11: [2, 5, 8, 11, 45, 49, 70, 72, 91, 95, 99],
        12: [5, 8, 11, 30, 52, 72, 91, 95, 99, 103],
        13: [5, 8, 11, 14, 26, 30, 52, 55, 72, 76, 99, 103],
        14: [8, 11, 14, 17, 26, 30, 38, 52, 55, 58, 76, 80, 103],
        15: [8, 11, 14, 17, 26, 30, 38, 52, 55, 58, 61, 80, 84],
        16: [11, 14, 17, 20, 23, 26, 30, 34, 38, 52, 55, 58, 61, 67, 80, 84, 88, 96],
        17: [11, 14, 17, 20, 23, 26, 30, 34, 38, 52, 55, 58, 61, 67, 80, 84, 88, 96],
        18: [3, 6, 17, 20, 23, 26, 30, 34, 38, 55, 58, 61, 67, 80, 84, 88, 96],
        19: [3, 6, 17, 20, 23, 26, 30, 34, 38, 55, 58, 61, 64, 67, 84, 88, 96],
        20: [3, 6, 17, 20, 23, 34, 38, 55, 58, 61, 64, 67, 84, 88, 96],
        21: [3, 6, 12, 17, 20, 23, 34, 38, 58, 61, 64, 67, 88, 96],
        22: [3, 6, 9, 20, 23, 34, 38, 42, 53, 61, 64, 67, 77, 92, 96],
        23: [3, 6, 9, 12, 20, 23, 38, 42, 53, 64, 67, 77, 92, 96, 100],
        24: [3, 6, 9, 12, 20, 23, 38, 42, 53, 64, 67, 77, 92, 96, 100],
        30: [3, 6, 6, 12, 15, 18, 42, 46, 50, 53, 69, 77, 92, 96, 100, 104],
        36: [12, 15, 18, 21, 27, 31, 46, 50, 53, 71, 73, 81, 85],
        42: [18, 21, 27, 31, 35, 50, 53, 56, 59, 71, 73, 81, 85, 89],
        48: [21, 31, 35, 39, 43, 47, 56, 59, 62, 65, 71, 73, 81, 85, 89, 93, 97],
        54: [35, 39, 43, 47, 59, 62, 65, 89, 93, 97, 101],
        60: [35, 39, 43, 47, 59, 62, 65, 93, 97, 101],
        66: [47, 59, 62, 65, 93, 97, 101],
        72: []

    }

    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var days = $('#days').val();
    var questionScore = [0,0,0,0,0];

    function prepare() {
        questionScore = [0,0,0,0,0];
        var  temp;
        $('.question').removeClass('noanswer');
        // Todo: 去掉所有没有答的题的样式
        for(var i = 1; i <= questionSum; i++) {
            if ($(".question." + i).html()) {
                temp = $("input:radio[name="+ i +"]:checked").val();
                if (temp == undefined) {
                    // Todo: 标注所有没有答的题
                    for (var j = i; j <= questionSum; j++) {
                        if ($(".question." + j).html()) {
                            if ($("input:radio[name="+ j +"]:checked").val() == undefined) {
                                $("input:radio[name="+ j +"]").parents('tr').addClass('noanswer');
                            }
                        }
                    }
                    $.tipModal('alert', 'warning', '有题目未完成！');
                    return false;
                }


            }
        }


        for (var q = 1; q <= questionSum; q++) {
            

            if ($(".question." + q).html()) {
                temp = $("input:radio[name="+ q +"]:checked").val();
                temp = parseInt(temp);
                if (temp === 0) {
                    if(q < 24){
                        questionScore[1] += 1;
                        continue;
                    }
                    if(q < 54){
                        questionScore[2] += 1;
                        continue;
                    }
                    if(q < 74){
                        questionScore[3] += 1;
                        continue;
                    }
                    if(q < 105){
                        questionScore[4] += 1;
                        continue;
                    }
                }
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_resultDDST.jsp'});
        }
    }

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";

                    var questionSelect = [questionSum];
                    for(var i = 0; i < questionSum; i++) {
                        if ($(".question." + i).html()) {
                            temp = $("input:radio[name="+ i +"]:checked").val();
                            if (temp == 1) {
                                if (map[days].indexOf(i) == -1 ){
                                    temp = 2
                                }
                            }
                            questionSelect[i] = parseInt(temp);
                        } else {
                            questionSelect[i] = 4;
                        }
                    }
                    for(var j = 0; j < questionSum; j++) {
                        data += "'resultDDST.score" + (j + 1) + "':" + questionSelect[j] + ","
                    }

                    data += "'resultDDST.a1':" + questionScore[1] + ",";
                    data += "'resultDDST.a2':" + questionScore[2] + ",";
                    data += "'resultDDST.a3':" + questionScore[3] + ",";
                    data += "'resultDDST.a4':" + questionScore[4] + ",";
                    

                    data += "'resultDDST.babyId':" + $("#babyid").val() + "}";
                    

                    $.ajax({
                        url: 'saveresultDDST',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresultDDST?id=" + json.resultDDST.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>