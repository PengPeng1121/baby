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
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">3-6岁小儿神经心理发育检查表</h1>
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
            <!-- 育儿观念 a1 p1 r1
                        关注和接纳
                        规矩或自我调控能力
                        养育关系和沟通
                        学习环境
                        语言环境
                        玩耍和娱乐
                        安全和居住环境
                        总和 a0 p0 r0 -->
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
                        <s:if test="#type == 11">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                               <td colspan="3">育儿观念</td>
                            </tr>
                        </s:if>
                        <s:if test="#type == 12">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">关注和接纳</td>
                            </tr>
                        </s:if>
                        <s:if test="#type == 13">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">规矩或自我调控能力</td>

                            </tr>
                        </s:if>
                        <s:if test="#type == 14">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">养育关系和沟通</td>
                            </tr>
                        </s:if>
                        <s:if test="#type == 15">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">学习环境</td>
                            </tr>
                        </s:if>
                        <s:if test="#type == 16">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">语言环境</td>
                            </tr>
                        </s:if>
                        <s:if test="#type == 17">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">玩耍和娱乐</td>
                            </tr>
                        </s:if>
                        <s:if test="#type == 18">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="3">安全和居住环境</td>
                            </tr>
                        </s:if>
                        <s:iterator value="questionMonthList" id="month" status="status">
                            <s:iterator value="questionList" id="question">
                                <s:if test="#question.month == #month && #question.type == #type">
                                    <tr>
                                        <td style="width:60%">
                                            <s:property value="#question.description"/>
                                        </td>
                                        <td>
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="2" />A<br>
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="1" />B<br>
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="0" />C<br>
                                        </td>
                                        <td>
                                            <a id="failMessage<s:property value="#question.ordinal"/>" href="javascript:void(0);" onclick="failReasons(<s:property value="#question.ordinal"/>, '<s:property value="#question.reasons"/>')">请选择答案</ a>
                                            <input type="hidden" style="color:#000" id="reason<s:property value="#question.ordinal"/>" value="">
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
        // var $tableNavbar = $('#table-navbar');
        // var $tableMain = $('#table-main');
        // $tableNavbar.width($('.panel').width());
        // $tableNavbar.css('top', $('.nav').height() + 1);
        // $tableNavbar.hide();
        // var pos = $tableMain.offset().top - $('nav').height();
        // $(document).scroll(function () {
        //     var dataScroll = $tableNavbar.data("scroll") || false;
        //     if($(this).scrollTop() >= pos) {
        //         if (!dataScroll) {
        //             $tableNavbar.data("scroll", true);
        //             $tableNavbar.show();
        //         }
        //     } else {
        //         if (dataScroll) {
        //             $tableNavbar.data("scroll", false);
        //             $tableNavbar.hide();
        //         }
        //     }
        // })
        // var monthage = <s:property value="days"/>;
        // if(monthage <= 12){
        //     $("#month"+ monthage).css("background-color","#e2efd9");
        // }else if(monthage <= 36){
        //     monthage = (parseInt(monthage/3))*3;
        //     $("#month"+ monthage).css("background-color","#e2efd9");
        // }else {
        //     monthage = (parseInt(monthage/6))*6;
        //     $("#month"+ monthage).css("background-color","#e2efd9");
        // }
    })();

    function failReasons(ordinal, reasons) {
        // $('#checkbox' + ordinal).removeAttr("checked");
        $('#failMessage' + ordinal).css("color","#ff0049");
        /*if($('#checkbox' + ordinal).attr("value") == 0){
         $('#failMessage' + ordinal).css("color","#ff0049");
         $('#checkbox' + ordinal).attr("value",1);
         } else if ($('#checkbox' + ordinal).attr("value") == 1){
         $('#failMessage' + ordinal).css("color","#337ab7");
         $('#checkbox' + ordinal).attr("value",0);
         }再次点击变回默认颜色*/
        $.frontModal({
            href: "modals/modal_question_reasons3_6.jsp?reasons=" + reasons + "&qid="+ordinal,
            title: "请选择答案："
        }).on('shown.bs.modal', function () {
            $("#qid").val(ordinal);
        });
    }

    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var questionScore = [0,0,0,0,0,0,0,0,0];

    function prepare() {
        var questionReason = [questionSum],
            temp;
        for(var i = 0; i < questionSum; i++) {
            questionReason[i] = $("#reason" + (i + 1)).val();
        }
        for (var i = 1; i <= questionSum; i++) {
            // 判断问卷是否填写完整
            temp = parseInt($("input:radio[name="+i+"]:checked").val());
            if (temp) {
                for(var i = 0; i < questionSum; i++) {
                    if(temp === ''){
                        continue;
                    }
                    if(i < 6){
                        questionScore[1] += temp;
                        continue;
                    }
                    if(i < 12){
                        questionScore[2] += temp;
                        continue;
                    }
                    if(i < 18){
                        questionScore[3] += temp;
                        continue;
                    }
                    if(i < 25){
                        questionScore[4] += temp;
                        continue;
                    }
                    if(i < 31){
                        questionScore[5] += temp;
                        continue;
                    }
                    if(i < 36){
                        questionScore[6] += temp;
                        continue;
                    }
                    if(i < 44) {
                        questionScore[7] += temp;
                        continue;
                    }
                    if(i < 50) {
                        questionScore[8] += temp;
                        continue;
                    }
                }

            } else {
                $.tipModal('alert', 'warning', '有题目未完成！');
                return false;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result3_6.jsp'});
        }
    }

    $(function(){
        var s = $("input[type='checkbox']");
        s.each(function(i) {
//          alert(i);
            $(this).click(function(){
                if(this.checked==true){
                    var id = this.id;
                    var idNum = id.charAt(id.length-1);
                    $("#failMessage" + idNum).css("color","#337ab7");
                }
            });
        });
    })

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";

                    //每个题的得分
                    for(var i = 0; i < questionSum; i++) {
//                        data += "'result3_6.score" + (i + 1) + "':" + $("#reason" + (i + 1)).val(); + ","
                    }

                    //每个题的原因
/*                    var questionReason = [questionSum];
                    for(var i = 0; i < questionSum; i++) {
                        questionReason[i] = $("#reason" + (i + 1)).val();
                    }*/

                    for(var i = 0; i < questionSum; i++) {
                        if((questionReason[i] != null)&&(questionReason[i] != '')){
                            data += "'result.reason" + (i + 1) + "':'" + questionReason[i] + "',"
                        }
                    }
                    //每组题的得分



                    for(var i = 1; i <= questionSum; i++) {
                        if(!$("input:radio[name="+i+"]:checked").val()){
                            continue;
                        }
                        if(i < 7){
                            questionScore[1] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 13){
                            questionScore[2] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 19){
                            questionScore[3] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 26){
                            questionScore[4] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 32){
                            questionScore[5] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 37){
                            questionScore[6] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 45) {
                            questionScore[7] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                        if(i < 51) {
                            questionScore[8] += parseInt($("input:radio[name="+i+"]:checked").val());
                            continue;
                        }
                    }


                    questionScore[0] = questionScore[1] + questionScore[2] + questionScore[3] + questionScore[4] + questionScore[5] + questionScore[6] + questionScore[7] + questionScore[8];


                    data += "'result3_6.a1':" + questionScore[1] + ",";
                    data += "'result3_6.a2':" + questionScore[2] + ",";
                    data += "'result3_6.a3':" + questionScore[3] + ",";
                    data += "'result3_6.a4':" + questionScore[4] + ",";
                    data += "'result3_6.a5':" + questionScore[5] + ",";
                    data += "'result3_6.a6':" + questionScore[6] + ",";
                    data += "'result3_6.a7':" + questionScore[7] + ",";
                    data += "'result3_6.a8':" + questionScore[8] + ",";

                    data += "'result3_6.babyId':" + $("#babyid").val() + "}";

                    $.ajax({
                        url: 'saveresult3_6',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresult3_6?id=" + json.result3_6.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>