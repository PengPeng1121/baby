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
                            <td>No.</td>
                            <td>项目</td>
                            <td>测试题目</td>
                            <td>符合</td>
                            <td>不符合</td>
                            <td>儿童回答答案</td>
                        </tr>
                        <tr>
                            <td class="month6">
                               6月-1岁11月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st < 20"> 
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td class="month24">
                               2岁-3岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st > 19 && #st < 42"> 
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td class="month42">
                               3岁6月-4岁11月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st > 41 && #st < 64"> 
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td class="month60">
                               5岁-6岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st > 63 && #st < 81"> 
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td class="month78">
                               6岁6月-8岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st > 80 && #st < 97"> 
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td class="month98">
                               8岁6月-10岁5月 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st > 96 && #st < 114">  
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
                                    </span>
                                </td>
                                <td style="width:100px">
                                    <input  id="<s:property value="#question.ordinal"/>"/>
                                </td>
                            </tr>
                            </s:if>
                            
                        </s:iterator>
                        <tr>
                            <td class="month126">
                               10岁6月- 
                            </td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <s:if test="#st > 113 && #st < 133">  
                            <tr class="question">
                                <td style="width:30px">
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

                                <td style="width:300px">
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green;">
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red;">
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

    function failReasons(ordinal, reasons) {

        $('#failMessage' + ordinal).css("color","#ff0049");

        $.frontModal({
            href: "modals/modal_question_reasons132.jsp?reasons=" + reasons + "&qid="+ordinal,
            title: "请选择答案："
        }).on('shown.bs.modal', function () {
            $("#qid").val(ordinal);
        });
    }

    //月龄
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
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result132.jsp'});
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

        //定位到当前月龄对应的答题区域
        var days = $('#days').val();

        if (days< 24) {
            $('#month6').focus();
        } else if (23 < days < 42) {
            $('#month24').focus();
        } else if (41 < days < 60) {
            $('#month42').focus();
        } else if (59 < days < 78) {
            $('#month60').focus();
        } else if (77 < days < 102) {
            $('#month78').focus();
        } else if (101 < days < 126) {
            $('#month102').focus();
        } else {
            $('#month126').focus();
        }
        
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
            });
        }
    }

</script>

</body>
</html>