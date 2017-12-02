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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">育儿技能评估（0-2岁)</h1>
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
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">被访者与儿童的关系：</label>
                        <label class="col-md-3 front-label">
                            <select class="form-control" id="answerRelation">
                                <option value="爸爸">爸爸</option>
                                <option value="妈妈">妈妈</option>
                                <option value="爷爷">爷爷</option>
                                <option value="奶奶">奶奶</option>
                                <option value="姥爷">姥爷</option>
                                <option value="姥姥">姥姥</option>
                                <option value="叔叔">叔叔</option>
                                <option value="婶婶">婶婶</option>
                                <option value="姑姑">姑姑</option>
                                <option value="姑父">姑父</option>
                                <option value="舅舅">舅舅</option>
                                <option value="舅妈">舅妈</option>
                                <option value="阿姨">阿姨</option>
                                <option value="姨夫">姨夫</option>
                                <option value="哥哥">哥哥</option>
                                <option value="姐姐">姐姐</option>
                                <option value="保姆">保姆</option>
                            </select>
                        </label>
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
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <s:if test="#type == 21">
                                <td>关注度</td>
                            </s:if>
                            <s:if test="#type == 22">
                                <td>接纳</td>
                            </s:if>
                            <s:if test="#type == 23">
                                <td>养育环境</td>
                            </s:if>
                            <s:if test="#type == 24">
                                <td>学习材料</td>
                            </s:if>
                            <s:if test="#type == 25">
                                <td>参与</td>
                            </s:if>
                            <s:if test="#type == 26">
                                <td>生活的丰富多样性</td>
                            </s:if>
                            <td>得分</td>
                            <td>答题记录</td>
                        </tr>

                        <s:iterator value="questionMonthList" id="month" status="status">
                            <s:iterator value="questionList" id="question">
                                <s:if test="#question.month == #month && #question.type == #type">
                                    <tr class="question">
                                        <td style="width:60%">
                                            <s:property value="#question.description"/>
                                        </td>
                                        <td>
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="0" />A<br>
                                            <input type="radio" name="<s:property value="#question.ordinal"/>" value="1" />B<br>
                                        </td>
                                        <td>
                                            <a id="failMessage<s:property value="#question.ordinal"/>" href="javascript:void(0);" onclick="failReasons(<s:property value="#question.ordinal"/>, '<s:property value="#question.reasons"/>')">请选择答案</ a>
                                            <input type="hidden" style="color:#000" id="reason<s:property value="#question.ordinal"/>" value="">
                                            <input type="hidden" style="color:#000" id="desc<s:property value="#question.ordinal"/>" value="">
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

    function failReasons(ordinal, reasons) {

        $('#failMessage' + ordinal).css("color","#ff0049");

        $.frontModal({
            href: "modals/modal_question_reasons0_2.jsp?reasons=" + reasons + "&qid="+ordinal,
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
            if(i < 12){
                questionScore[1] += temp;
                continue;
            }
            if(i < 20){
                questionScore[2] += temp;
                continue;
            }
            if(i < 26){
                questionScore[3] += temp;
                continue;
            }
            if(i < 35){
                questionScore[4] += temp;
                continue;
            }
            if(i < 41){
                questionScore[5] += temp;
                continue;
            }
            if(i < 46){
                questionScore[6] += temp;
                continue;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result0_2.jsp'});
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
                        questionReason[i] = $("#reason" + (i + 1)).val()|| '';
                    }

                    for(var i = 0; i < questionSum; i++) {
                        if((questionReason[i] != null)&&(questionReason[i] != '')){
                            data += "'result0_2.reason" + (i + 1) + "':'" + questionReason[i] + "',"
                        }
                    }

                    //每个题的详细原因
                    for(var i = 0; i < questionSum; i++) {
                        questionReasonDesc[i] = $("#desc" + (i + 1)).val() || '';
                    }

                    for(var i = 0; i < questionSum; i++) {
                        data += "'result0_2.desc" + (i + 1) + "':'" + questionReasonDesc[i] + "',"
                    }




                    data += "'result0_2.a1':" + questionScore[1] + ",";
                    data += "'result0_2.a2':" + questionScore[2] + ",";
                    data += "'result0_2.a3':" + questionScore[3] + ",";
                    data += "'result0_2.a4':" + questionScore[4] + ",";
                    data += "'result0_2.a5':" + questionScore[5] + ",";
                    data += "'result0_2.a6':" + questionScore[6] + ",";
                    

                    data += "'result0_2.babyId':" + $("#babyid").val() + ",";
                    var answerRelation = $("#answerRelation").val();
                    answerRelation= " ' "+ answerRelation +" ' ";
                    data += "'result0_2.answerRelation':" + answerRelation + "}";

                    $.ajax({
                        url: 'saveresult0_2',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresult0_2?id=" + json.result0_2.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>