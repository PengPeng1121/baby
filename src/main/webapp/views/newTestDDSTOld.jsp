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
        .cross{
            background-color: #87d4da;
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
                        <tr style="font-weight: bold;font-size: 16px;background-color: #f7f6d9;">
                            <td colspan="3">注：在DDST筛查表中凡是标有"R"的项目表示该项目可通过询问家长获得结果<br/>
                            请先测试年龄线左侧项目（白色）再测试切年龄线项目（蓝色）
                            </td>
                        </tr>
                    <s:iterator value="questionTypeList" var="type">
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
                            <td style="display: none">序号</td>
                            <td>问题</td>
                            <td>答题情况</td>
                        </tr>
                        <s:iterator value="questionMonthList" var="month" status="status">
                            <s:iterator value="questionList" var="question">
                                <s:if test="#question.month == #month && #question.type == #type">
                                    <tr class="question <s:property value="#question.ordinal"/>  ">
                                        <td style="width:5%;display: none">
                                            <s:property value="#question.ordinal"/>
                                        </td> 
                                        <td style="width:50%">
                                            <s:property value="#question.extend1"/>
                                            <s:property value="#question.extend2"/>
                                            &nbsp;
                                            <s:property value="#question.description"/>
                                        </td>
                                        
                                        <td style="width:45%">
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.ordinal"/>" value="0" />P通过
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.ordinal"/>" value="1" />F不能通过
                                            &nbsp;
                                            <!-- 不合作 -->
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.ordinal"/>" value="3" />R不合作
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.ordinal"/>" value="5" />NO无机会完成
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
        30: [3, 6, 9, 12, 15, 18, 42, 46, 50, 53, 69, 77, 92, 96, 100, 104],
        
        33:[15,18,21,27,31,50,53,56,71,73,81,85,89],
        
        36: [15, 18, 21, 27, 31, 46, 50, 53, 71, 73, 81, 85],
        
        39: [15,18,21,27,31,50,53,56,71,73,81,85,89],
        42: [18, 21, 27, 31, 35, 50, 53, 56, 59, 71, 73, 81, 85, 89],
        
        45:[21,27,31,35,39,56,59,62,65,71,73,81,85,89,97],

        48: [21, 31, 35, 39, 43, 47, 56, 59, 62, 65, 71, 73, 81, 85, 89, 93, 97],
        
        51:[31,35,39,43,47,56,59,62,65,71,73,85,89,93,97,101],
        54: [35, 39, 43, 47, 59, 62, 65, 89, 93, 97, 101],
        57:[35,39,43,47,59,62,65,89,93,97,101],

        60: [35, 39, 43, 47, 59, 62, 65, 93, 97, 101],
        66: [47, 59, 62, 65, 93, 97, 101],
        72: []

    }


    var arr = []
    var result = {}
    for (var m in map) {
        arr = map[m]
        result[m] = {
                a: 0,
                b: 0,
                c: 0,
                d: 0
            }
        for (var i = 0, len = arr.length; i < len; i++) {
            if (arr[i] >0 && arr[i] <24) {
                result[m]['a']++;
            }
            if (arr[i] >23 && arr[i] <54) {
                result[m]['b']++;
            }
            if (arr[i] >53 && arr[i] <74) {
                result[m]['c']++;
            }
            if (arr[i] >73 && arr[i] <104) {
                result[m]['d']++;
            }
        }
    }
    console.log(result)

    


    var nextMap = {
        1: [1],
        2: [1, 24, 28,32,54,57,74],
        3: [1,4,24,28,32,54,57,74],
        4: [1,4,24,28,32,54,57,60,74,78],
        5: [1,4,7,40,44,48,57,60,63,82,86,90],
        6: [1,4,7,44,48,57,51,60,63,90,94,98],
        7:[4,7,10,6,48,51,57,60,63,94,98,102],
        8: [10,13,16,25,29,33,57,60,63,98,102,75],
        9: [13,16,19,29,33,37,60,63,66,102,75,79],
        10: [16,19,22,33,37,41,63,66,68,102,75,79],
        11: [16,19,22,33,37,41,63,66,68,79,83,87],
        12: [19,22,2,41,45,49,66,68,70,79,83,87],
        
        13: [19,22,2,41,45,49,66,68,70,87,91,95],
        14: [22,2,5,45,49,41,68,70,72,99,91,95],
        15: [22,2,5,45,49,41,68,70,72,99,103,95],
        16: [22,2,5,45,49,41,68,70,72,99,103,95],
        17: [2,5,8,45,49,41,68,70,72,99,103,95],
        18: [5,8,11,45,49,41,68,70,72,99,103,76],
        19: [8,11,14,45,49,52,68,70,72,99,103,76],
        20: [8,11,14,52,26,30,68,70,72,103,76,80],
        21: [8,11,14,52,26,30,68,70,72,76,80,84],
        22: [11,14,17,52,26,30,72,55,58,80,84,88],
        23: [11,14,17,26,30,34,55,58,61,80,84,88],
        

        24: [11,14,17,26,30,34,55,58,61,80,84,88],
        27:[17,20,23,26,30,34,55,58,61,80,84,88],
        30: [17,20,23,30,34,38,58,61,64,80,84,88],
        33:[17,20,23,30,34,38,61,64,67,88,92,96],

        
        36: [3,6,9,34,38,42,61,64,67,92,99,100],
        39: [6,9,12,38,42,46,64,67,69,77,100,104],
        42: [9,12,15,38,42,46,64,67,69,77,100,104],
        45: [12,15,18,46,50,53,64,67,69,77,100,104],

        48: [12,15,18,46,50,53,64,67,69,77,100,104],
        51: [15,18,21,50,53,27,64,67,69,77,104,81],

        54: [15,18,21,50,27,31,67,69,71,104,81,85],
        57:[15,18,21,50,27,31,71,73,56,104,81,85],
        60: [15,18,21,50,27,31,71,73,56,104,81,85],
        66: [15,18,21,31,35,39,71,73,56,81,85,89],
        72: [15,18,21,39,43,47,73,59,62,93,97,101]
    }

    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var days = parseInt($('#days').val());
    var questionScore = [0,0,0,0,0];

    if (days>24) {
        days = parseInt(days / 3) * 3;
    }


    // 默认显示3题
    for(var d = 1; d <= questionSum; d++) {
        if ($(".question." + d).html()) {
            if (nextMap[days].indexOf(d) == -1  && map[days].indexOf(d) == -1){
                $(".question." + d).remove();
            }
        }
    }


    // 标记跨年龄线项目
    for(var c = 1; c <= questionSum; c++) {
        if ($(".question." + c).html()) {
            if (map[days].indexOf(c) !== -1 ){
                $(".question." + c).addClass('cross');
            }
        }
    }


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
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_DDST.jsp'});
        }
    }

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";

                    var questionSelect = [questionSum];
                    for(var i = 1; i <= questionSum; i++) {
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
                    for(var j = 1; j <= questionSum; j++) {
                        data += "'resultDDST.score" + (j) + "':" + questionSelect[j] + ","
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