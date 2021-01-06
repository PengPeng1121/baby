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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">感觉统合2020</h1>
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
            <!-- 1. 前庭功能
            2. 触觉防御
            3. 本体感
            4. 学习能力
            5. 大年龄儿童（10岁以上填）
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


                <table id="table-navbar" style="margin: 0; position: fixed; background-color: white;width: 100%;display: none; text-align: left">
                    <tr class="line nav-line">
                        <td>
                                【输入提示：根据儿童的情况选择“1从不”、“2很少”、“3有时候”、“4常常”、“5总是如此”。题中若包括多项，只要有一项符合就算。】
                        </td>
                    </tr>
                </table>

                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr id="tr-title">
                            <td colspan="3">
                                【输入提示：根据儿童的情况选择“1从不”、“2很少”、“3有时候”、“4常常”、“5总是如此”。题中若包括多项，只要有一项符合就算。】
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>
                               前脑平衡和大脑双侧分化 
                            </td>
                            <td style="font-weight: normal; font-size: 14px">从不、很少、有时候、常常、总是</td>
                        </tr>
                    <s:iterator value="questionTypeList" var="type">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <s:if test="#type == 112">
                                <td colspan="2">脑神经心理抑制困难</td>
                            </s:if>
                            <s:if test="#type == 113">
                                <td colspan="2">触觉防御过多及反应不足</td>
                            </s:if>
                            <s:if test="#type == 114">
                                <td colspan="2">发育期运动障碍</td>
                            </s:if>
                            <s:if test="#type == 115">
                                <td colspan="2">视觉空间，形态</td>
                            </s:if>
                            <s:if test="#type == 116">
                                <td colspan="2">本体觉（重力不安症）</td>
                            </s:if>
                        </tr>
                        <s:iterator value="questionList" var="question">
                            <s:if test="#question.type == #type">
                                <tr class="question">
                                    <td style="width:60%">
                                        <s:property value="#question.description"/>
                                    </td>
                                    <td>
                                        <label for="<s:property value="#question.ordinal"/>-1">1</label>
                                        <input style="width: 25px;" type="radio" name="<s:property value="#question.ordinal"/>" value="1" id="<s:property value="#question.ordinal"/>-1" />

                                        <label for="<s:property value="#question.ordinal"/>-2">2</label>
                                        <input style="width: 25px;" type="radio" name="<s:property value="#question.ordinal"/>" value="2" id="<s:property value="#question.ordinal"/>-2" /> 

                                        <label for="<s:property value="#question.ordinal"/>-3">3</label>
                                        <input style="width: 25px;" type="radio" name="<s:property value="#question.ordinal"/>" value="3" id="<s:property value="#question.ordinal"/>-3" /> 

                                        <label for="<s:property value="#question.ordinal"/>-4">4</label>
                                        <input style="width: 25px;" type="radio" name="<s:property value="#question.ordinal"/>" value="4" id="<s:property value="#question.ordinal"/>-4" /> 

                                        <label for="<s:property value="#question.ordinal"/>-5">5</label>
                                        <input style="width: 25px;" type="radio" name="<s:property value="#question.ordinal"/>" value="5" id="<s:property value="#question.ordinal"/>-5" /> 

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
    var days = $('#days').val();
    ;(function () {
        var $tableNavbar = $('#table-navbar');
        var $tableMain = $('#table-main');
        var $title = $('#tr-title');
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
                    $title.hide();
                }
            } else {
                if (dataScroll) {
                    $tableNavbar.data("scroll", false);
                    $tableNavbar.hide();
                    $title.show();
                }
            }
        })


    })();

    var questionSum = $('#questionSum').val();

    var questionScore = [0,0,0,0,0,0,0];

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


        for (var k = 1; k <= questionSum; k++) {
            temp = $("input:radio[name="+ k +"]:checked").val();
            if(temp==""||temp==undefined){
                continue;
            }
            temp = parseInt(temp);
            if(k < 12){
                questionScore[1] += temp;
                continue;
            }
            if(k < 21){
                questionScore[2] += temp;
                continue;
            }
            if(k < 35){
                questionScore[3] += temp;
                continue;
            }
            if(k < 46){
                questionScore[4] += temp;
                continue;
            }
            if(k < 51){
                questionScore[5] += temp;
                continue;
            }
            if(k < 61){
                questionScore[6] += temp;
                continue;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_resultFeel2020.jsp'});
        }
    }

    $(function(){
        var s = $("input[type='checkbox']");
        s.each(function(i) {
         console.log(i);
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


                    data += "'resultFeel2020.a1':" + questionScore[1] + ",";
                    data += "'resultFeel2020.a2':" + questionScore[2] + ",";
                    data += "'resultFeel2020.a3':" + questionScore[3] + ",";
                    data += "'resultFeel2020.a4':" + questionScore[4] + ",";
                    data += "'resultFeel2020.a5':" + questionScore[5] + ",";
                    data += "'resultFeel2020.a6':" + questionScore[6] + ",";
                    
                    

                    data += "'resultFeel2020.babyId':" + $("#babyid").val() + "}";

                    $.ajax({
                        url: 'saveresultFeel2020',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            var rId = json.resultFeel2020.id;
                            var refreshData = {
                                babyid: $("#babyid").val(),
                                testId: 28,
                                resultId: rId
                            };
                            $.ajax({
                                url: 'refreshExamTime',
                                type: 'post',
                                data: refreshData,
                                success:function (json) {
                                    console.log('更新时间成功');
                                    window.location = "showresultFeel2020?id=" + rId;
                                }
                            })
                            // window.location = "showresultFeel2020?id=" + json.resultFeel2020.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>