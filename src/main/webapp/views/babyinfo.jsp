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
                <button class="btn btn-default pull-right" onclick="editbaby(<s:property value="baby.babyid" />)"> 编辑病例</button>

                <button class="btn btn-default pull-right" onclick="selecttest(<s:property value="baby.babyid" />,<s:property value="days" />)"><span class="glyphicon glyphicon-plus"></span> 新建测评</button>

            </div>
        </div>
        <div class="panel panel-default front-panel" id="test">
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table" style="margin-bottom: 0px">
                    <tbody>
                    <s:iterator value="resultList" var="re">
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

                    <s:iterator value="result2016List" var="re">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                            <span class="front-text-title" >
                                0-6岁小儿神经心理发育检查表2016
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
                                        <a class="btn btn-default" href="showreult2016?id=<s:property value="#re.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>



                    <!-- <s:iterator value="result3_6List" var="re3_6">
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
                    </s:iterator> -->


                    <!-- <s:iterator value="result0_2List" var="re0_2">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           家庭养育（0-2岁)
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
                    </s:iterator> -->


                    <!-- <s:iterator value="result0_3List" var="re0_3">
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
                    </s:iterator> -->


                    <!-- <s:iterator value="result50List" var="re50">
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
                    </s:iterator> -->



                    <!-- <s:iterator value="result132List" var="re132">
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
                    </s:iterator> -->



                    <!-- <s:iterator value="resultCognizeList" var="reCognize">
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
                    </s:iterator> -->


                    <!-- <s:iterator value="result0_3List" var="re0_3">
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
                    </s:iterator> -->

                    <s:iterator value="resultDDSTList" var="resultDDST">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           小儿智能发育筛查表
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultDDST.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultDDST?id=<s:property value="#resultDDST.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <!-- <s:iterator value="resultNeiList" var="resultNei">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           中国比内测验
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultNei.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultNei?id=<s:property value="#resultNei.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultGroupList" var="resultGroup">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           生长发育测验
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultGroup.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultGroup?id=<s:property value="#resultGroup.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->



                    <!-- <s:iterator value="resultQiZhiList" var="resultQiZhi">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           气质测评
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultQiZhi.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultQiZhi?id=<s:property value="#resultQiZhi.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->


                    <!-- <s:iterator value="resultFeelList" var="resultFeel">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           感觉统合能力
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultFeel.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultFeel?id=<s:property value="#resultFeel.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->


                    <s:iterator value="resultFeel2020List" var="resultFeel2020">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           感觉统合能力2020
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultFeel2020.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultFeel2020?id=<s:property value="#resultFeel2020.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultGroup2020List" var="resultGroup2020">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           生长发育测验2020
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultGroup2020.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultGroup2020?id=<s:property value="#resultGroup2020.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultPhysicalList" var="resultPhysical">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           体格头面检查
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultPhysical.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultPhysical?id=<s:property value="#resultPhysical.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultSummaryList" var="resultSummary">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           总评
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultSummary.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultSummary?id=<s:property value="#resultSummary.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>



                    <s:iterator value="resultAllergyList" var="resultAllergy">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           食物过敏或不耐受风险评估
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultAllergy.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultAllergy?id=<s:property value="#resultAllergy.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultBasic2List" var="resultBasic2">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           生产、既往、家族史
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBasic2.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultBasic2?id=<s:property value="#resultBasic2.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>



                    <s:iterator value="resultToothList" var="resultTooth">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           牙齿
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultTooth.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultTooth?id=<s:property value="#resultBasic2.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultFeedList" var="resultFeed">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           营养与喂养
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultFeed.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultFeed?id=<s:property value="#resultFeed.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>





                    <s:iterator value="resultBasic1List" var="resultBasic1">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           基础信息
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBasic1.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultBasic1?id=<s:property value="#resultBasic1.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultQiZhi2020List" var="resultQiZhi2020">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           气质测评2020
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultQiZhi2020.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultQiZhi2020?id=<s:property value="#resultQiZhi2020.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultPlanList" var="resultPlan">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           定制化方案
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultPlan.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultPlan?id=<s:property value="#resultPlan.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultBlessList" var="resultBless">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           祝福
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBless.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultBless?id=<s:property value="#resultBless.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultRearList" var="resultRear">
                        <tr>
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                        <span class="front-text-title" >
                           养育风格指导
                        </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultRear.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" href="showresultRear?id=<s:property value="#resultRear.id"/>">查看报告</a>
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


    function editbaby(bid){
        window.location = "record/editbabyinfo?babyid=" + bid;
    }



</script>
</body>
</html>
