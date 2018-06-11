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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">小儿智能发育筛查</h1>
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
            <!-- 个人-社会 
                        精细动作-适应性
                        语言
                        大运动
                         -->
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
                        <tr style="font-weight: bold;font-size: 16px;background-color: #f7f6d9;">
                            <td colspan="3">注：在DDST筛查表中凡是标有"R"的项目表示该项目可通过询问家长获得结果<br/>
                            请先测试年龄线左侧项目（白色）再测试切年龄线项目（蓝色）
                            </td>
                        </tr>
                    <s:iterator value="questionTypeList" id="type">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <s:if test="#type == 61">
                                <td colspan="3">个人-社会</td>
                            </s:if>
                            <s:if test="#type == 62">
                                <td colspan="3">精细动作-适应性</td>
                            </s:if>
                            <s:if test="#type == 63">
                                <td colspan="3">语言</td>
                            </s:if>
                            <s:if test="#type == 64">
                                <td colspan="3">大运动</td>
                            </s:if>
                        </tr>
                        <tr>
                            <td style="display: none">序号</td>
                            <td>问题</td>
                            <td>答题情况</td>
                        </tr>
                        <s:iterator value="DDSTList" id="question">
                            <s:if test="#question.type == #type">
                                <s:if test="#question.leftCode_1!=''">
                                    <tr class="question <s:property value="#question.leftCode_1"/>  ">
                                        <td style="width:60%">
                                            <s:property value="#question.leftName_1"/>
                                        </td>
                                        
                                        <td style="width:40%">
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_1"/>" value="0" />P通过
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_1"/>" value="1" />F不能通过
                                            &nbsp;
                                            <!-- 不合作 -->
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_1"/>" value="3" />R不合作
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_1"/>" value="5" />NO无机会完成
                                            &nbsp;
                                        </td>
                                    </tr>
                                </s:if>
                                <s:if test="#question.leftCode_2!=''">
                                    <tr class="question <s:property value="#question.leftCode_2"/>  ">
                                        <td style="width:60%">
                                            <s:property value="#question.leftName_2"/>
                                        </td>
                                        
                                        <td style="width:40%">
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_2"/>" value="0" />P通过
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_2"/>" value="1" />F不能通过
                                            &nbsp;
                                            <!-- 不合作 -->
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_2"/>" value="3" />R不合作
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_2"/>" value="5" />NO无机会完成
                                            &nbsp;
                                        </td>
                                    </tr>
                                </s:if>
                                <s:if test="#question.leftCode_3!=''">
                                    <tr class="question <s:property value="#question.leftCode_3"/>  ">
                                        <td style="width:60%">
                                            <s:property value="#question.leftName_3"/>
                                        </td>
                                        
                                        <td style="width:40%">
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_3"/>" value="0" />P通过
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_3"/>" value="1" />F不能通过
                                            &nbsp;
                                            <!-- 不合作 -->
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_3"/>" value="3" />R不合作
                                            &nbsp;
                                            <input style="width: 30px" type="radio" name="<s:property value="#question.leftCode_3"/>" value="5" />NO无机会完成
                                            &nbsp;
                                        </td>
                                    </tr>
                                </s:if>
                                <s:if test="#question.throughCode_1!=''">
                                <tr class="question cross <s:property value="#question.throughCode_1"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_1"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_1"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_1"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_1"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_1"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
                                <s:if test="#question.throughCode_2!=''">
                                <tr class="question cross <s:property value="#question.throughCode_2"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_2"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_2"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_2"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_2"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_2"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
                                <s:if test="#question.throughCode_3!=''">
                                <tr class="question cross <s:property value="#question.throughCode_3"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_3"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_3"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_3"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_3"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_3"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
                                <s:if test="#question.throughCode_4!=''">
                                <tr class="question cross <s:property value="#question.throughCode_4"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_4"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_4"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_4"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_4"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_4"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
                                <s:if test="#question.throughCode_5!=''">
                                <tr class="question cross <s:property value="#question.throughCode_5"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_5"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_5"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_5"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_5"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_5"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
                                <s:if test="#question.throughCode_6!=''">
                                <tr class="question cross <s:property value="#question.throughCode_6"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_6"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_6"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_6"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_6"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_6"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
                                <s:if test="#question.throughCode_7!=''">
                                <tr class="question cross <s:property value="#question.throughCode_7"/>  ">
                                    <td style="width:60%">
                                        <s:property value="#question.throughName_7"/>
                                    </td>
                                    
                                    <td style="width:40%">
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_7"/>" value="0" />P通过
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_7"/>" value="1" />F不能通过
                                        &nbsp;
                                        <!-- 不合作 -->
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_7"/>" value="3" />R不合作
                                        &nbsp;
                                        <input style="width: 30px" type="radio" name="<s:property value="#question.throughCode_7"/>" value="5" />NO无机会完成
                                        &nbsp;
                                    </td>
                                </tr>
                                </s:if>
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



    var questionSum = 104;
    var days = parseInt($('#days').val());
    var questionScore = [0,0,0,0,0];



    function prepare() {
        questionScore = [0,0,0,0,0];
        var  temp;
        $('.question').removeClass('noanswer');
        // Todo: 去掉所有没有答的题的样式
        for(var i = 1; i <= questionSum; i++) {
            if ($(".question." + i).html()) {
                temp = $("input:radio[name="+ i +"]:checked").val();
                if (temp == undefined) {
                    // Todo: 标注所有没有答的题
                    for (var j = i; j <= questionSum; j++) {
                        if ($(".question." + j).html()) {
                            if ($("input:radio[name="+ j +"]:checked").val() == undefined) {
                                $("input:radio[name="+ j +"]").parents('tr').addClass('noanswer');
                            }
                        }
                    }
                    $.tipModal('alert', 'warning', '有题目未完成！');
                    return false;
                }


            }
        }


        for (var q = 1; q <= questionSum; q++) {
            

            if ($(".question." + q).html()) {
                temp = $("input:radio[name="+ q +"]:checked").val();
                temp = parseInt(temp);
                if (temp === 0) {
                    if(q < 24){
                        questionScore[1] += 1;
                        continue;
                    }
                    if(q < 54){
                        questionScore[2] += 1;
                        continue;
                    }
                    if(q < 74){
                        questionScore[3] += 1;
                        continue;
                    }
                    if(q < 105){
                        questionScore[4] += 1;
                        continue;
                    }
                }
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_DDST.jsp'});
        }
    }

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";

                    var questionSelect = [questionSum];
                    for(var i = 1; i <= questionSum; i++) {
                        if ($(".question." + i).html()) {
                            temp = $("input:radio[name="+ i +"]:checked").val();
                            if (temp == 1) {
                                if ($(".question." + i).attr('class').indexOf('cross')== -1) {
                                    temp = 2
                                }
                            } 
                            questionSelect[i] = parseInt(temp);
                        } else {
                            questionSelect[i] = 4;
                        }
                    }
                    for(var j = 1; j <= questionSum; j++) {
                        data += "'resultDDST.score" + (j) + "':" + questionSelect[j] + ","
                    }

                    data += "'resultDDST.a1':" + questionScore[1] + ",";
                    data += "'resultDDST.a2':" + questionScore[2] + ",";
                    data += "'resultDDST.a3':" + questionScore[3] + ",";
                    data += "'resultDDST.a4':" + questionScore[4] + ",";
                    

                    data += "'resultDDST.babyId':" + $("#babyid").val() + "}";
                    

                    $.ajax({
                        url: 'saveresultDDST',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresultDDST?id=" + json.resultDDST.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>
