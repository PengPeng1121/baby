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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">婴幼儿认知测定</h1>
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
                            <td>起点</td>
                            <td>No.</td>
                            <td>项目</td>
                            <td colspan="2">得分</td>
                            <td>儿童回答答案</td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <tr class="question">
                                <s:if test="#st = 1"> 
                                    <td style="width:5%" rowspan="2">
                                        A
                                    </td>
                                </s:if>
                                <s:elseif test="#st = 3">
                                    <td style="width:5%" rowspan="4">
                                        BC
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 7">
                                    <td style="width:5%" rowspan="9">
                                        D
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 16">
                                    <td style="width:5%" rowspan="3">
                                        E
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 19">
                                    <td style="width:5%" rowspan="3">
                                        F
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 22">
                                    <td style="width:5%" rowspan="3">
                                        G
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 25">
                                    <td style="width:5%" rowspan="9">
                                        H
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 34">
                                    <td style="width:5%" rowspan="6">
                                        I
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 40">
                                    <td style="width:5%" rowspan="5">
                                        K
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 45">
                                    <td style="width:5%" rowspan="11">
                                        LM
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 56">
                                    <td style="width:5%" rowspan="4">
                                        N
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 60">
                                    <td style="width:5%" rowspan="3">
                                        O
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 63">
                                    <td style="width:5%" rowspan="4">
                                        P
                                    </td>
                                </s:elseif>
                                <s:elseif test="#st = 67">
                                    <td style="width:5%" rowspan="24">
                                        Q
                                    </td>
                                </s:elseif>
                                <s:else>
                                    
                                </s:else>


                                <td style="width:5%">
                                    <s:property value="#question.ordinal"/>
                                </td>

                                <td style="width:60%">
                                    <s:property value="#question.description"/>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide" style="top: 4px; color: green;text-align:center">
                                        1
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide" style="top: 4px; color: red; text-align: center">
                                        0
                                    </span>
                                </td>
                                <td>
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>


                            </tr>
                            
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

    function failReasons(ordinal, reasons) {

        $('#failMessage' + ordinal).css("color","#ff0049");

        $.frontModal({
            href: "modals/modal_question_reasons_cognize.jsp?reasons=" + reasons + "&qid="+ordinal,
            title: "请选择答案："
        }).on('shown.bs.modal', function () {
            $("#qid").val(ordinal);
        });
    }

    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var questionScore = [0,0,0,0,0,0,0,0];
    var questionReason = [questionSum];
    var questionReasonDesc = [questionSum];

    function prepare() {
        questionScore = [0,0,0,0,0,0,0,0];
        var  temp;
        $('.question').removeClass('noanswer');
        // Todo: 去掉所有没有答的题的样式
        for(var i = 1; i <= questionSum; i++) {
            temp = $('.' + i + '.show').attr('class');
            if (!temp) {
                // Todo: 标注所有没有答的题
                for (var j = i; j <= questionSum; j++) {
                    t = $('.' + j + '.show').attr('class');
                    if (!t) {
                        $('.' + j).parents('tr').addClass('noanswer');
                    }
                }
                $.tipModal('alert', 'warning', '有题目未完成！');
                return false;
            }

        }


        for (var i = 1; i <= questionSum; i++) {
            temp = parseInt($.trim($('.' + i + '.show').text('class')));
            if(temp==""||temp==undefined){
                continue;
            }
            questionScore[1] += temp;
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_cognize.jsp'});
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

                    //每个题的原因
                    for(var i = 0; i < questionSum; i++) {
                        questionReason[i] = $("#reason" + (i + 1)).val() || '';
                    }

                    for(var i = 0; i < questionSum; i++) {
                        if((questionReason[i] != null)&&(questionReason[i] != '')){
                            data += "'result_cognize.reason" + (i + 1) + "':'" + questionReason[i] + "',"
                        }
                    }

                    //每个题的详细原因
                    for(var i = 0; i < questionSum; i++) {
                        questionReasonDesc[i] = $("#desc" + (i + 1)).val() || '';
                    }

                    for(var i = 0; i < questionSum; i++) {
                        data += "'result_cognize.desc" + (i + 1) + "':'" + questionReasonDesc[i] + "',"
                    }




                    data += "'result_cognize.a0':" + questionScore[1] + ",";
                    

                    data += "'result_cognize.babyId':" + $("#babyid").val() + "}";
                    

                    $.ajax({
                        url: 'saveresult_cognize',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresult_cognize?id=" + json.result_cognize.id;
                        }
                    })
                }
            });
        }
    }
    function select(target) {
        $(target).parent().find('.a').addClass('hide').removeClass('show');
        $(target).parent().find('.b').addClass('hide').removeClass('show');
        $(target).find('span').removeClass('hide').addClass('show');
    }

</script>

</body>
</html>