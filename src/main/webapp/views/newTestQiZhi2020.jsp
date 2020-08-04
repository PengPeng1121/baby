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
        #tr-info{
            position: fixed;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">幼儿气质问卷</h1>
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
                <!-- 问题列表 -->
                <input id="questionSum" type="hidden" value="<s:property value="questionList.size()"/>">
                <!-- 每组问题的个数 -->
                <input id="questionMonthSum" type="hidden" value="<s:property value="questionMonthList.size()"/>">
                <!-- type  题目类型 -->
                <input id="questionTypeSum" type="hidden" value="<s:property value="questionTypeList.size()"/>">

                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>序号</td>
                            <td>题目</td>
                            <td>答案</td>
                        </tr>
                            <s:iterator value="questionList" var="question">
                                
                                    <tr class="question <s:property value="#question.type"/> ">
                                        <td>
                                            <s:property value="#question.ordinal"/>
                                        </td>
                                        <td style="width:60%">
                                            <s:property value="#question.description"/>
                                        </td>
                                        <td class="type-<s:property value="#question.type"/> ">
                                            <select class="answer-<s:property value="#question.ordinal"/> form-control ">
                                                <option value="0">-请选择-</option>
                                                <option value="1">从不</option>
                                                <option value="2">经常</option>
                                                <option value="3">偶尔</option>
                                                <option value="4">总是</option>
                                            </select>
                                        </td>
                                    </tr>
                               
                            </s:iterator>
                        
                    </tbody>
                </table>
            </div>
            <div style="margin-bottom: 73px;">
                
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">  
    var questionSum = $('#questionSum').val();
    var questionScore = [0,0,0,0,0,0,0,0,0,0];
    var days = $('#days').val();
    function prepare() {
        questionScore = [0,0,0,0,0,0,0,0,0,0];
        var  temp;
        var  type;
        $('.question').removeClass('noanswer');
        // 去掉所有没有答的题的样式
        for(var i = 1; i <= questionSum; i++) {
            temp = $(".answer-" + i).val();
            if (temp === '0') {
                // 标注所有没有答的题
                for (var j = i; j <= questionSum; j++) {
                    if ($(".answer-" + j).val() === '0') {
                        $(".answer-" + j).parents('tr').addClass('noanswer');
                    }
                }
                $.tipModal('alert', 'warning', '有题目未完成！');
                return false;
            }
        }
        for (var k = 1; k <= questionSum; k++) {
            temp = $(".answer-" + k).val();
            if(temp==""||temp==undefined){
                continue;
            }
            type = $(".answer-" + k).parents('td').attr("class");
            //转换temp
            temp = parseInt(temp);
            if(type.indexOf('type-121') != -1){
                questionScore[1] += temp;
                continue;
            }
            if(type.indexOf('type-122')!= -1){
                questionScore[2] += temp;
                continue;
            }
            if(type.indexOf('type-123')!= -1){
                questionScore[3] += temp;
                continue;
            }
            if(type.indexOf('type-124')!= -1){
                questionScore[4] += temp;
                continue;
            }
            if(type.indexOf('type-125')!= -1){
                questionScore[5] += temp;
                continue;
            }
            if(type.indexOf('type-126')!= -1){
                questionScore[6] += temp;
                continue;
            }
            if(type.indexOf('type-127')!= -1){
                questionScore[7] += temp;
                continue;
            }
            if(type.indexOf('type-128')!= -1){
                questionScore[8] += temp;
                continue;
            }
            if(type.indexOf('type-129')!= -1){
                questionScore[9] += temp;
                continue;
            }
        }
        return true;
    }
    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";
                    data += "'resultQiZhi2020.a1':" + questionScore[1] + ",";
                    data += "'resultQiZhi2020.a2':" + questionScore[2] + ",";
                    data += "'resultQiZhi2020.a3':" + questionScore[3] + ",";
                    data += "'resultQiZhi2020.a4':" + questionScore[4] + ",";
                    data += "'resultQiZhi2020.a5':" + questionScore[5] + ",";
                    data += "'resultQiZhi2020.a6':" + questionScore[6] + ",";
                    data += "'resultQiZhi2020.a7':" + questionScore[7] + ",";
                    data += "'resultQiZhi2020.a8':" + questionScore[8] + ",";
                    data += "'resultQiZhi2020.a9':" + questionScore[9] + ",";
                    
                    data += "'resultQiZhi2020.babyId':" + $("#babyid").val();
                    data +=  "}";
                    $.ajax({
                        url: 'saveresultQiZhi2020',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresultQiZhi2020?id=" + json.resultQiZhi2020.id;
                        }
                    })
                }
            });
        }
    }
</script>
</body>
</html>