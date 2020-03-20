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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">小儿多动症筛查</h1>
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
                <input id="questionSum" type="hidden" value="<s:property value="DDSTList.size()"/>">
                <!-- 每组问题的个数 -->
                <input id="questionMonthSum" type="hidden" value="<s:property value="questionMonthList.size()"/>">
                <!-- type  题目类型 -->
                <input id="questionTypeSum" type="hidden" value="<s:property value="questionTypeList.size()"/>">
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            从不或者很少<br>(从不)
                        </td>
                        <td>
                            有时<br>(轻度)
                        </td>
                        <td>
                            经常<br>(中度)
                        </td>
                        <td>
                            非常常见<br>(严重)
                        </td>
                    </tr>
                    <s:iterator value="questionTypeList" var="type">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <s:if test="#type == 101">
                                <td colspan="3">注意力不集中组</td>
                            </s:if>
                            <s:if test="#type == 102">
                                <td colspan="3">多动/冲动组</td>
                            </s:if>
                            <s:if test="#type == 103">
                                <td colspan="3">对立违抗性障碍组</td>
                            </s:if>
                        </tr>
                        <tr>
                            <td style="display: none">序号</td>
                            <td>问题</td>
                            <td>答题情况</td>
                        </tr>
                        <s:iterator value="questionList" var="question">
                            <s:if test="#question.type == #type">
                                <tr class="question">
                                    <td style="width:60%">
                                        <s:property value="#question.description"/>
                                    </td>
                                    <td style="width:50px" onclick="select(this)">
                                        <span class="answer-<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                        </span>
                                    </td>
                                    <td style="width:50px" onclick="select(this)">
                                        <span class="answer-<s:property value="#question.ordinal"/> b hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                        </span>
                                    </td>
                                    <td style="width:50px" onclick="select(this)">
                                        <span class="answer-<s:property value="#question.ordinal"/> c hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                        </span>
                                    </td>
                                    <td style="width:50px" onclick="select(this)">
                                        <span class="answer-<s:property value="#question.ordinal"/> d hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                        </span>
                                    </td>
                                </tr>
                            </s:if>
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



    var questionSum = 26;
    var questionScore = [0,0,0,0];
    var result = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]



    function prepare() {
        // questionScore = [0,0,0,0];
        // var  temp;
        // $('.question').removeClass('noanswer');
        // // Todo: 去掉所有没有答的题的样式
        // for(var i = 1; i <= questionSum; i++) {
        //     if ($(".question." + i).html()) {
        //         temp = $("input:radio[name="+ i +"]:checked").val();
        //         if (temp == undefined) {
        //             // Todo: 标注所有没有答的题
        //             for (var j = i; j <= questionSum; j++) {
        //                 if ($(".question." + j).html()) {
        //                     if ($("input:radio[name="+ j +"]:checked").val() == undefined) {
        //                         $("input:radio[name="+ j +"]").parents('tr').addClass('noanswer');
        //                     }
        //                 }
        //             }
        //             $.tipModal('alert', 'warning', '有题目未完成！');
        //             return false;
        //         }


        //     }
        // }


        for (var q = 1; q <= questionSum; q++) {

            if(q < 10){
                questionScore[1] += result[q-1];
                continue;
            }
            if(q < 20){
                questionScore[2] += result[q-1];
                continue;
            }
            if(q < 26){
                questionScore[3] += result[q-1];
                continue;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_ADHD.jsp'});
        }
    }

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";

                    data += "'resultADHD.a1':" + questionScore[1] + ",";
                    data += "'resultADHD.a2':" + questionScore[2] + ",";
                    data += "'resultADHD.a3':" + questionScore[3] + ",";
                    data += "'resultADHD.babyId':" + $("#babyid").val() + "}";
                    

                    $.ajax({
                        url: 'saveresultADHD',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresultADHD?id=" + json.resultADHD.id;
                        }
                    })
                }
            });
        }
    }

    function select(target) {
        var $target = $(target);
        var $span = $target.find('span');
        var $parent = $target.parent();
        var $span1 = $($parent.find('span')[0]);
        var $span2 = $($parent.find('span')[1]);
        var $span3 = $($parent.find('span')[2]);
        var $span4 = $($parent.find('span')[3]);
        
        // 去掉原有选项
        $span1.addClass('hide').removeClass('show');
        $span2.addClass('hide').removeClass('show');
        $span3.addClass('hide').removeClass('show');
        $span4.addClass('hide').removeClass('show');
        
        $span.addClass('show').removeClass('hide');
        var questionIndex = $span.attr('class').split(' ')[0].replace('answer-', '');
        var value = resultMap[$span.attr('class').split(' ')[1]]
        result [questionIndex-1] = value
        console.log(result)
    }

</script>
</body>
</html>
