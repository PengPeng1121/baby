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
        
        .noanswer{
            background-color: #ffeb3b;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">婴儿-初中学生生活能力量表</h1>
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
                            <td style="width:30px">No.</td>
                            <td style="width:30px">项目</td>
                            <td style="width:400px">测试题目</td>
                            <td style="width:50px">符合</td>
                            <td style="width:50px">不符合</td>
                            <td style="width:100px">儿童回答答案</td>
                        </tr>
                        <tr>
                            <td id="month6" class="month" colspan="6" style="background-color: #ddd;">
                               6月-1岁11月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal < 20"> 
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td id="month24" class="month" colspan="6" style="background-color: #ddd;">
                               2岁-3岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal > 19 && #question.ordinal < 42"> 
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td id="month42" class="month" colspan="6" style="background-color: #ddd;">
                               3岁6月-4岁11月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal > 41 && #question.ordinal < 64"> 
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td id="month60" class="month" colspan="6" style="background-color: #ddd;">
                               5岁-6岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal > 63 && #question.ordinal < 81"> 
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td id="month78" class="month" colspan="6" style="background-color: #ddd;">
                               6岁6月-8岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal > 80 && #question.ordinal < 97"> 
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td id="month98" class="month" colspan="6" style="background-color: #ddd;">
                               8岁6月-10岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal > 96 && #question.ordinal < 114">  
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td id="month126" class="month" colspan="6" style="background-color: #ddd;">
                               10岁6月- 17岁
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#question.ordinal > 113 && #question.ordinal < 133">  
                            <tr class="question">
                                <td style="width:30px" class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <!-- 项目类型 -->
                                <td style="width:30px">
                                    <s:if test="#question.type == 41">
                                        SH
                                    </s:if>
                                    <s:if test="#question.type == 42">
                                        L
                                    </s:if>
                                    <s:if test="#question.type == 43">
                                        O
                                    </s:if>
                                    <s:if test="#question.type == 44">
                                        C
                                    </s:if>
                                    <s:if test="#question.type == 45">
                                        S
                                    </s:if>
                                    <s:if test="#question.type == 46">
                                        SD
                                    </s:if>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="width:50px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
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


    var trueCount = 0;
    var falseCount = 0;
    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var questionScore = [0,0,0,0,0,0,0,0];
    var questionReason = [questionSum];
    var questionReasonDesc = [questionSum];
    var map = [1, 20, 42, 64, 81, 97, 114];
    var ageLine = [6, 24, 42, 60, 78, 102, 126];
    var startNow = 0;
    var ageNow = 0;
    // 当前开始题目
    // 当前高亮年龄段


    function failReasons(ordinal, reasons) {

        $('#failMessage' + ordinal).css("color","#ff0049");

        $.frontModal({
            href: "modals/modal_question_reasons132.jsp?reasons=" + reasons + "&qid="+ordinal,
            title: "请选择答案："
        }).on('shown.bs.modal', function () {
            $("#qid").val(ordinal);
        });
    }

    function prepare() {
        questionScore = [0,0,0,0,0,0,0,0];
        var  temp;
        $('.question').removeClass('noanswer');
        // Todo: 去掉所有没有答的题的样式
        // 获取当前答题范围
        var range = getRange();
        // for(var i = 0; i <= questionSum; i++) {
        //     temp = $('.' + i + '.show').attr('class');
        //     if (!temp) {
        //         // Todo: 标注所有没有答的题
        //         for (var j = i; j <= questionSum; j++) {
        //             t = $('.' + j + '.show').attr('class');
        //             if (!t) {
        //                 $('.' + j).parents('tr').addClass('noanswer');
        //             }
        //         }
        //         $.tipModal('alert', 'warning', '有题目未完成！');
        //         return false;
        //     }

        // }
        count();
        return true;
    }

    function count() {
        for (var i = 0; i <= questionSum; i++) {
            temp = $('.' + i + '.show').attr('class');
            if(temp==""||temp==undefined){
                continue;
            }
            if (temp.indexOf('a') != -1) {
                temp = 1;
            } else {
                temp = 0;
            }

            if([5,12,14,18,20,21,30,31,36,38,40,41,46,47,49,50,52,53,59,60,64,67,68,82,83,86,97,99,114,117,120].indexOf(i)!= -1){
                questionScore[1] += temp;
                continue;
            }
            if([8,10,17,19,29,32,45,55,76,80,90,106,110,113,122,126,130,131].indexOf(i)!= -1){
                questionScore[2] += temp;
                continue;
            }
            if([2,7,16,33,35,51,56,62,65,75,77,88,93,103,108,111,116,119,121,132].indexOf(i)!= -1){
                questionScore[3] += temp;
                continue;
            }
            if([1,3,11,15,25,28,37,39,57,58,61,66,72,74,84,91,94,95,101,107,123,124,128].indexOf(i)!= -1){
                questionScore[4] += temp;
                continue;
            }
            if([4,6,9,13,23,24,34,43,48,54,63,69,78,79,89,92,96,102,104,112,125,129].indexOf(i)!= -1){
                questionScore[5] += temp;
                continue;
            }
            if([22,26,27,42,44,70,72,75,82,85,87,98,100,105,109,115,118,127].indexOf(i)!= -1){
                questionScore[6] += temp;
                continue;
            }
        }
    }

    function getRange() {
        var days = parseInt($('#days').val()),
            range = {
                start: 0,
                end: 0
            };
        if (days< 24) {
            range.start = 1;
            range.end = 19;
        } else if (days < 42) {
            range.start = 20;
            range.end = 41;
        } else if (days < 60) {
            range.start = 42;
            range.end = 63;
        } else if (days < 78) {
            range.start = 64;
            range.end = 80;
        } else if (days < 102) {
            range.start = 81;
            range.end = 96;
        } else if (days < 126) {
            range.start = 97;
            range.end = 113;
        } else {
            range.start = 114;
            range.end = 132;
        }
        return range;
    }
    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result132.jsp'});
        }
    }

    $(function(){
        var s = $("input[type='checkbox']");
        s.each(function(i) {
            $(this).click(function(){
                if(this.checked==true){
                    var id = this.id;
                    var idNum = id.charAt(id.length-1);
                    $("#failMessage" + idNum).css("color","#337ab7");
                }
            });
        });

        //定位到当前月龄对应的答题区域
        var days = parseInt($('#days').val());
        var top = 0;
        if (days< 24) {
            startNow = 1;
            ageNow = 6;
            top = $('#month6').offset().top;
            $('#month6').css({
                "background-color": "green"
            });
        } else if (days < 42) {
            startNow = 20;
            ageNow = 24;
            top = $('#month24').offset().top;
            $('#month24').css({
                "background-color": "green"
            });
        } else if (days < 60) {
            startNow = 42;
            ageNow = 42;
            top = $('#month42').offset().top;
            $('#month42').css({
                "background-color": "green"
            });
        } else if (days < 78) {
            startNow = 64;
            ageNow = 60;
            top = $('#month60').offset().top;
            $('#month60').css({
                "background-color": "green"
            });
        } else if (days < 102) {
            startNow = 81;
            ageNow = 78;
            top = $('#month78').offset().top;
            $('#month78').css({
                "background-color": "green"
            });
        } else if (days < 126) {
            startNow = 97;
            ageNow = 102;
            top = $('#month102').offset().top;
            $('#month102').css({
                "background-color": "green"
            });
        } else {
            startNow = 114;
            ageNow = 126;
            top = $('#month126').offset().top;
            $('#month126').css({
                "background-color": "green"
            });
        }
        setTimeout(function() {
            window.scrollTo(0,top-50);
        }, 300)
        
        
    })

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        }
    }
    function score() {
        count();

        var data = "{";

        //每个题的原因
        for(var i = 0; i < questionSum; i++) {
            questionReason[i] = $("#reason" + (i + 1)).val() || '';
        }

        for(var i = 0; i < questionSum; i++) {
            if((questionReason[i] != null)&&(questionReason[i] != '')){
                data += "'result132.reason" + (i + 1) + "':'" + questionReason[i] + "',"
            }
        }

        //每个题的详细原因
        for(var i = 0; i < questionSum; i++) {
            questionReasonDesc[i] = $("#desc" + (i + 1)).val() || '';
        }

        for(var i = 0; i < questionSum; i++) {
            data += "'result132.desc" + (i + 1) + "':'" + questionReasonDesc[i] + "',"
        }




        data += "'result132.a1':" + questionScore[1] + ",";
        data += "'result132.a2':" + questionScore[2] + ",";
        data += "'result132.a3':" + questionScore[3] + ",";
        data += "'result132.a4':" + questionScore[4] + ",";
        data += "'result132.a5':" + questionScore[5] + ",";
        data += "'result132.a6':" + questionScore[6] + ",";
        

        data += "'result132.babyId':" + $("#babyid").val() + "}";
        

        $.ajax({
            url: 'saveresult132',
            type: 'post',
            data: eval('(' + data + ')'),
            success:function (json) {
                window.location = "showresult132?id=" + json.result132.id;
            }
        })
    }


    function select(target) {
        var $target = $(target);
        var index = 0;
        var top = 0;
        $(target).parent().find('.a').addClass('hide').removeClass('show');
        $(target).parent().find('.b').addClass('hide').removeClass('show');
        $(target).find('span').removeClass('hide').addClass('show');

        //获取当前题目的序号
        var orderIndex = parseInt($.trim($target.parent().find('.order').text()));
        var value = $(target).find('span').attr('class');
        var prevClass1 = '';
        var prevClass2 = '';

        trueCount = 0;
        falseCount = 0;

        if (value.indexOf('a') != -1) {
           trueCount += 1;
        } else {
            if (orderIndex < (startNow + 10)) {
                //跳转到上一级
                index = getIndex();
                top = $('#month' + ageLine[index-1]).offset().top;
                $('.month').css({
                    "background-color": "#ddd"
                });
                $('#month' + ageLine[index-1]).css({
                    "background-color": "green"
                });
                window.scrollTo(0,top-50);
                startNow = map[index-1];
                ageNow = ageLine[index-1];
                // trueCount = 0;
                // falseCount = 0;
            }
            falseCount += 1;
            // trueCount = 0;
        }
        var prev = 0;
        for (var i = 1; i < 10; i++) {
            prev = orderIndex - i ;
            prevClass1 = $('.' + prev + '.a').attr('class');
            prevClass2 = $('.' + prev + '.b').attr('class');
            if ( prevClass1.indexOf('show') != -1){
                trueCount += 1;
            } 
            if ( prevClass2.indexOf('show') != -1){
                falseCount += 1;
            }
        }

        if (trueCount == 10 && (orderIndex < (startNow + 10)) ) {
            //该题之前的全部设为“对” 并且是前10个项目
            var selectFalse;
            for (var i = 0; i < orderIndex; i++) {
                $('.' + i + '.a').removeClass('hide').addClass('show');
                $('.' + i + '.b').removeClass('show').addClass('hide');
            }
        } 

        if (falseCount == 10) {
            setTimeout(function(){
                alert('测试结束');
                score();
            }, 300);
        } 
        
    }

    function getIndex() {
        for (var i = 0, len = map.length; i < len; i++) {
            if (map[i] == startNow) {
                return i;
            }
        }
    }

</script>

</body>
</html>