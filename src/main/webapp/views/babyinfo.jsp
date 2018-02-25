<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>儿童详情-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=records"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <div class="panel panel-default front-panel" id="info">
            <div class="panel-heading">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding:15px;">
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">姓名</label>
                    <label class="col-md-3 control-label front-label"><s:property value="baby.name"/></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">性别</label>
                    <label class="col-md-3 control-label front-label"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">出生日期</label>
                    <label class="col-md-3 control-label front-label"><s:date name="baby.birthday" format="yyyy-MM-dd"/></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">月龄</label>
                    <label class="col-md-3 control-label front-label"><s:property value="days"/></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">父亲</label>
                    <label class="col-md-3 control-label front-label"><s:property value="baby.father.name"/></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">母亲</label>
                    <label class="col-md-3 control-label front-label"><s:property value="baby.mother.name"/></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">检查日期</label>
                    <label class="col-md-3 control-label front-label"><%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%></label>
                </div>
                <button class="btn btn-default pull-right" onclick="selecttest(<s:property value="baby.babyid" />,<s:property value="days" />)"><span class="glyphicon glyphicon-plus"></span> 新建测评</button>
            </div>
        </div>
        <div class="panel panel-default front-panel" id="test">
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table" style="margin-bottom: 0px">
                    <tbody>
                    <s:iterator value="resultList" id="re">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                            <span class="front-text-title" >
                                0-6岁小儿神经心理发育检查表
                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showreult?id=<s:property value="#re.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="result3_6List" id="re3_6">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           育儿技能评估（3-6岁)
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re3_6.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">被访者</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:property value="#re3_6.answerRelation" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresult3_6?id=<s:property value="#re3_6.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="result0_2List" id="re0_2">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           育儿技能评估（0-2岁)
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re0_2.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">被访者</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:property value="#re0_2.answerRelation" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresult0_2?id=<s:property value="#re0_2.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="result0_3List" id="re0_3">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           育儿技能评估（0-3岁)
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re0_3.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">被访者</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:property value="#re0_3.answerRelation" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresult0_2?id=<s:property value="#re0_3.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="result50List" id="re50">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           学前50项智力筛查
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re50.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresult50?id=<s:property value="#re50.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>



                    <s:iterator value="result132List" id="re132">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           婴儿-初中生生活能力表
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re132.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresult132?id=<s:property value="#re132.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>



                    <s:iterator value="resultCognizeList" id="reCognize">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           婴幼儿认知测定量表
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#reCognize.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultcognize?id=<s:property value="#reCognize.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="result0_3List" id="re0_3">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           育儿技能评估（0-3岁)
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#re0_3.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">被访者</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:property value="#re0_3.answerRelation" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresult0_3?id=<s:property value="#re0_3.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>

<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    $("#record").addClass("front-active");

    function selecttest(bid,birth){

        $.frontModal({size: 'modal-md', href: 'modals/modal_select_test.jsp'}).on('shown.bs.modal', function () {
            $("#babyid").val(bid);
        }).on('hide.bs.modal', function (){window.location.href = 'home';});
    }

</script>
</body>
</html>
