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
        .line{
            display: flex;
            align-content: center;
        }
        .nav-line{
            height: 30px;
        }
        .item{
            width: 18%;
            display: inline-block;
            border-top: solid 1px;
            border-right: solid 1px;
            padding-top: 5px;
        }
        .item-first{
            width: 10% !important;
            border-left: solid 1px;
            display: flex;
            align-content: center;
            justify-content: center;
        }
        .item-nav{
            border-bottom: 1px solid;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">0-6岁小儿神经心理发育检查表</h1>
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
                <input id="questionSum" type="hidden" value="<s:property value="questionList.size()"/>">
                <input id="questionMonthSum" type="hidden" value="<s:property value="questionMonthList.size()"/>">
                <input id="questionTypeSum" type="hidden" value="<s:property value="questionTypeList.size()"/>">
                <div id="table-navbar" style="margin: 0; position: fixed; background-color: white;width: 100%;display: none; text-align: left">
                    <div class="line nav-line">
                        <div class="item item-first item-nav">月龄 \ 项目</div>
                        <div class="item item-nav">大运动</div>
                        <div class="item item-nav">精细动作</div>
                        <div class="item item-nav">适应能力</div>
                        <div class="item item-nav">语言</div>
                        <div class="item item-nav item-end">社交行为</div>
                    </div>
                </div>
                <div id="table-main" style="margin: 0;width: 100%; text-align: left">
                    <div class="line nav-line">
                        <div class="item item-first">月龄 \ 项目</div>
                        <div class="item">大运动</div>
                        <div class="item">精细动作</div>
                        <div class="item">适应能力</div>
                        <div class="item">语言</div>
                        <div class="item">社交行为</div>
                    </div>
                    <s:iterator value="questionMonthList" var="month" status="status">
                        <div class="line" id="month<s:property value="#month"/>">
                            <div class="item item-first" name="month<s:property value="#status.index"/>">
                                <div style="padding: 20px;">
                                    <s:property value="#month"/>
                                </div>
                            </div>
                            <s:iterator value="questionTypeList" var="type">
                                <div class="item">
                                    <s:iterator value="questionList" var="question">
                                        <s:if test="#question.month == #month && #question.type == #type">
                                            <p>
                                                <input type="checkbox" id="checkbox<s:property value="#question.ordinal"/>" name="checkbox-<s:property value="#status.index"/>-<s:property value="#type"/>" value="<s:property value="#question.extend1"/>">

                                                <label for="checkbox<s:property value="#question.ordinal"/>"><s:property value="#question.ordinal"/>、<s:property value="#question.description"/><br></label>


                                                <a id="failMessage<s:property value="#question.ordinal"/>" href="javascript:void(0);" onclick="failReasons(<s:property value="#question.ordinal"/>, '<s:property value="#question.reasons"/>')">不通过</a>
                                                
                                                <input type="hidden" id="reason<s:property value="#question.ordinal"/>" value="">
                                            </p>
                                        </s:if>
                                    </s:iterator>
                                </div>
                            </s:iterator>
                        </div>
                    </s:iterator>
                    </tbody>
                </div>
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
        var $tableNavbar = $('#table-navbar');
        var $tableMain = $('#table-main');
        $tableNavbar.width($('.panel').width());
        $tableNavbar.css('top', $('.navbar').height() + 1);
        $tableNavbar.hide();
        var pos = $tableMain.offset().top - $('nav').height();
        $(document).scroll(function () {
            var dataScroll = $tableNavbar.data("scroll") || false;
            if($(this).scrollTop() >= pos) {
                if (!dataScroll) {
                    $tableNavbar.data("scroll", true);
                    $tableNavbar.show();
                }
            } else {
                if (dataScroll) {
                    $tableNavbar.data("scroll", false);
                    $tableNavbar.hide();
                }
            }
        })
        var monthage = <s:property value="days"/>;
        if(monthage <= 12){
            $("#month"+ monthage).css("background-color","#e2efd9");
        }else if(monthage <= 36){
            monthage = (parseInt(monthage/3))*3;
            $("#month"+ monthage).css("background-color","#e2efd9");
        }else {
            monthage = (parseInt(monthage/6))*6;
            $("#month"+ monthage).css("background-color","#e2efd9");
        }
    })();

    function failReasons(ordinal, reasons) {
        $('#checkbox' + ordinal).removeAttr("checked");
        $('#failMessage' + ordinal).css("color","#ff0049");
        /*if($('#checkbox' + ordinal).attr("value") == 0){
            $('#failMessage' + ordinal).css("color","#ff0049");
            $('#checkbox' + ordinal).attr("value",1);
        } else if ($('#checkbox' + ordinal).attr("value") == 1){
            $('#failMessage' + ordinal).css("color","#337ab7");
            $('#checkbox' + ordinal).attr("value",0);
        }再次点击变回默认颜色*/
        // $.frontModal({
        //     href: "modals/modal_question_reasons.jsp?reasons=" + reasons + "&qid="+ordinal,
        //     title: "请选择不通过原因："
        // }).on('shown.bs.modal', function () {
        //     $("#qid").val(ordinal);
        // });
    }

    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var questionScore = [questionTypeSum + 1];

    function prepare() {
        for (var type = 1; type <= questionTypeSum; type++) {
            var flag = 0;//连续通过的两行的第二个行
            for (var i = 0; i < questionMonthSum; i++) {
                var twoLineChecked = true;
                $('input[name=checkbox-' + i + '-' + type + ']').each(function () {
                    if (!$(this).prop('checked')) {
                        twoLineChecked = false;
                    }
                });
                if(twoLineChecked){
                    $('input[name=checkbox-' + (i + 1) + '-' + type + ']').each(function () {
                        if (!$(this).prop('checked')) {
                            twoLineChecked = false;
                        }
                    });
                    if (twoLineChecked) {
                        flag = i + 1;
                    }
                    break;
                }

            }
            if (flag == 0) {
                if ($('#days').val() <= 6) {
                    questionScore[type] = 0;
                    for (var i = 0; i < questionMonthSum; i++) {
                        $('input[name=checkbox-' + i + '-' + type + ']').each(function () {
                            if ($(this).prop('checked')) {
                                questionScore[type] += parseFloat($(this).val());
                            }
                        });
                    }
                } else {
                    var typeName = "";
                    switch (type) {
                        case 1:
                            typeName = "大运动";
                            break;
                        case 2:
                            typeName = "精细动作";
                            break;
                        case 3:
                            typeName = "适应能力";
                            break;
                        case 4:
                            typeName = "语言";
                            break;
                        case 5:
                            typeName = "社交行为";
                            break;
                    }
                    $.tipModal('alert', 'warning', typeName + '的题目未完成！');
                    return false;
                }
            } else {
                questionScore[type] = parseFloat($('div[name=month' + flag + ']').text());
                for (var i = flag + 1; i < questionMonthSum; i++) {
                    $('input[name=checkbox-' + i + '-' + type + ']').each(function () {
                        if ($(this).prop('checked')) {
                            questionScore[type] += parseFloat($(this).val());
                        }
                    });
                }
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result.jsp'});
        }
    }

    $(function(){
        var s = $("input[type='checkbox']");
        s.each(function(i) {
//          alert(i);
            $(this).click(function(){
                if(this.checked==true){
                    var id = this.id;
                    var idNum = id.split('checkbox')[1];
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
                    var questionSelect = [questionSum];
                    for(var i = 0; i < questionSum; i++) {
                        if($("#checkbox" + (i + 1)).prop('checked')){
                            questionSelect[i] = 1;
                        }else {
                            questionSelect[i] = 0;
                        }
                    }
                    for(var i = 0; i < questionSum; i++) {
                        data += "'result2016.score" + (i + 1) + "':" + questionSelect[i] + ","
                    }

                    var questionReason = [questionSum];
                    for(var i = 0; i < questionSum; i++) {
                        questionReason[i] = $("#reason" + (i + 1)).val();
                    }

                    for(var i = 0; i < questionSum; i++) {
                        if((questionReason[i] != null)&&(questionReason[i] != '')){
                            data += "'result2016.reason" + (i + 1) + "':'" + questionReason[i] + "',"
                        }
                    }
                    data += "'result2016.scoreSport':" + questionScore[1] + ",";
                    data += "'result2016.scoreAct':" + questionScore[2] + ",";
                    data += "'result2016.scoreAdapt':" + questionScore[3] + ",";
                    data += "'result2016.scoreLanguage':" + questionScore[4] + ",";
                    data += "'result2016.scoreSocial':" + questionScore[5] + ",";

                    var dq = 0;
                    for(var i = 1; i<= questionTypeSum; i++) {
                        dq += questionScore[i];
                    }
                    dq /= questionTypeSum;
                    var growth = ( dq / parseFloat($("#days").val()) ) * 100;

                    dq = Math.round(dq)
                    growth = Math.round(growth)

                    data += "'result2016.dq':" + dq + ",";
                    data += "'result2016.growth':" + growth + ",";
                    data += "'result2016.babyid':" + $("#babyid").val() + "}";

                    $.ajax({
                        url: 'saveresult2016',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showreult2016?id=" + json.result2016.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>