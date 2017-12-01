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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">学龄前50项智力测查</h1>
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
                    <!--                     <div class="col-md-6">
                        <label class="col-md-3 front-label">月龄</label>
                        <label class="col-md-3 front-label"><s:property value="days"/></label>
                    </div> -->
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
                            <td>No.</td>
                            <td>项目</td>
                            <td>测试题目</td>
                            <td>符合</td>
                            <td>不符合</td>
                            <td>儿童回答答案</td>
                        </tr>
                        <s:iterator value="questionList" id="question">
                            <tr class="question">
                                <td style="width:5%">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:5%">
                                    <s:if test="#question.type == 31">
                                        SC
                                    </s:if>
                                    <s:if test="#question.type == 32">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 33">
                                        M
                                    </s:if>
                                    <s:if test="#question.type == 34">
                                        E
                                    </s:if>
                                    <s:if test="#question.type == 35">
                                        T
                                    </s:if>
                                    <s:if test="#question.type == 36">
                                        GK
                                    </s:if>
                                </td>

                                <td style="width:60%">
                                    <s:property value="#question.description"/>
                                </td>
                                <td style="width:10%">
                                    <input type="radio" name="<s:property value="#question.ordinal"/>" value="1" />
                                </td>
                                <td style="width:10%">
                                    <input type="radio" name="<s:property value="#question.ordinal"/>" value="0" />
                                </td>
                                <td style="width:20%">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            
                        </s:iterator>
                        
                    </tbody>
                </table>
                <p>
                    公鸡和免子、鸭子、松鼠住在一起，有一天早上，兔子来找公鸡说:“我要上街买萝卜,借一只篮子给我用吧”! 公鸡说:“我自己要用，不借”。
                    中午，鸭子来找公鸡说:“公鸡哥哥，你嘴巴尖尖的，帮我解一下衣服上的扣子吧!”公鸡说:“我要吃饭了，没有空”。
                    到了晚上，松鼠米找公鸡说:“我明天早上要上山砍柴，你早一些叫我起床吧”。公鸡说:“我没有力气，不高兴叫”。
                    过了一天，刮大风、下大雨，把公鸡的屋项掀掉了，公鸡急得又跳又叫，正在着急的时候，兔子，鸭子，松鼠一起赶来了，帮助公鸡修理屋顶。
                    没过多久，风停了，雨住了，屋顶也修好了，公鸡看着这一切，脸一下子红了
                </p>
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


    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var questionScore = [0,0,0,0,0,0,0];
    var questionReason = [questionSum];
    var questionReasonDesc = [questionSum];

    function prepare() {
        questionScore = [0,0,0,0,0,0,0];
        var  temp;
        $('.question').removeClass('noanswer');
        // Todo: 去掉所有没有答的题的样式
        for(var i = 1; i <= questionSum; i++) {
            temp = $("input:radio[name="+ i +"]:checked").val();
            if (!temp) {
                // Todo: 标注所有没有答的题
                for (var j = i; j <= questionSum; j++) {
                    if (!$("input:radio[name="+ j +"]:checked").val()) {
                        $("input:radio[name="+ j +"]").parents('tr').addClass('noanswer');
                    }
                }
                $.tipModal('alert', 'warning', '有题目未完成！');
                return false;
            }

        }


        for (var i = 1; i <= questionSum; i++) {
            temp = $("input:radio[name="+ i +"]:checked").val();
            if(temp==""||temp==undefined){
                continue;
            }
            temp = parseInt(temp);
            if([1,2,3,4,5,9,12,15,18,26,31,36,39].indexOf(i)!= -1){
                questionScore[1] += temp;
                continue;
            }
            if(6,7,8,10,11,13,20,22,24,25,27,32,37].indexOf(i)!= -1){
                questionScore[2] += temp;
                continue;
            }
            if(16,21,46,48].indexOf(i)!= -1){
                questionScore[3] += temp;
                continue;
            }
            if(38,35,33,29,19,17].indexOf(i)!= -1){
                questionScore[4] += temp;
                continue;
            }
            if(30,34,42,43,44,45,47,49,50].indexOf(i)!= -1){
                questionScore[5] += temp;
                continue;
            }
            if(40,41,28,23,14].indexOf(i)!= -1){
                questionScore[6] += temp;
                continue;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result50.jsp'});
        }
    }


    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";

                    //每个题的原因
                    for(var i = 0; i < questionSum; i++) {
                        questionReason[i] = $("#reason" + (i + 1)).val();
                    }

                    for(var i = 0; i < questionSum; i++) {
                        if((questionReason[i] != null)&&(questionReason[i] != '')){
                            data += "'result50.reason" + (i + 1) + "':'" + questionReason[i] + "',"
                        }
                    }

                    //每个题的详细原因
                    for(var i = 0; i < questionSum; i++) {
                        questionReasonDesc[i] = $("#desc" + (i + 1)).val();
                    }

                    for(var i = 0; i < questionSum; i++) {
                        data += "'result50.desc" + (i + 1) + "':'" + questionReasonDesc[i] + "',"
                    }




                    data += "'result50.a1':" + questionScore[1] + ",";
                    data += "'result50.a2':" + questionScore[2] + ",";
                    data += "'result50.a3':" + questionScore[3] + ",";
                    data += "'result50.a4':" + questionScore[4] + ",";
                    data += "'result50.a5':" + questionScore[5] + ",";
                    data += "'result50.a6':" + questionScore[6] + ",";

                    data += "'result50.babyId':" + $("#babyid").val() + ",";
                    var answerRelation = $("#answerRelation").val();
                    answerRelation= " ' "+ answerRelation +" ' ";
                    data += "'result50.answerRelation':" + answerRelation + "}";

                    $.ajax({
                        url: 'saveresult50',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresult50?id=" + json.result50.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>