<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style>
        .selected{
            color: #FFF;
            background-color: green;
        }
        .unSelected{
            /*color: #f5f5f5;
            background-color: #FFF;*/
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=records"/>

<input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">


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
                <!-- <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">父亲</label>
                    <label class="col-md-3 control-label front-label"><s:property value="baby.father.name"/></label>
                </div>
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">母亲</label>
                    <label class="col-md-3 control-label front-label"><s:property value="baby.mother.name"/></label>
                </div> -->
                <div class="col-md-6">
                    <label class="col-md-3 control-label front-label">检查日期</label>
                    <label class="col-md-3 control-label front-label"><%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%></label>
                </div>
                <button class="btn btn-default pull-right" onclick="editbaby(<s:property value="baby.babyid" />)"> 编辑信息</button>

                <button class="btn btn-default pull-right" onclick="selecttest(<s:property value="baby.babyid" />,<s:property value="days" />)"><span class="glyphicon glyphicon-plus"></span> 新建测评</button>

            </div>
        </div>
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">
        <div class="panel panel-default front-panel" id="test">
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table" style="margin-bottom: 0px">
                    <tbody>


                    <tr>
                        <td>
                            <button class="btn btn-primary btn-parent" onclick="nowTest()" id="now"> 查看最新体检报告</button>
                            <button class="btn btn-default btn-parent" onclick="allTest()" id="all"> 查看全部报告</button>
                            <!-- 父母查看报告 -->
                            <!-- <button class="btn btn-success btn-lg" onclick="parentCheckReport()" id="parentCheckReport" style="display: none"> 查看孩子体检报告</button> -->
                        </td>
                    </tr>

                    <s:iterator value="resultParentsCareList" var="ParentsCare">
                        <tr class="manage doctorOperate parent view care">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               父母关心点
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">填写日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#ParentsCare.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultParentsCare?id=<s:property value="#ParentsCare.id"/>">查看</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#ParentsCare.id"/>, 55)">删除此报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>



                    <s:iterator value="resultBasic1List" var="resultBasic1">
                        <tr class="manage doctorOperate parent view basic1">
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
                                        <a class="btn btn-default" href="editTestBasic1?id=<s:property value="#resultBasic1.id"/>">编辑</a>
                                        <a class="btn btn-default btn-parent" target="_blank" href="showresultBasic1?id=<s:property value="#resultBasic1.id"/>">查看</a>
                                        <a class="btn btn-default unSelected btn-parent" onclick="selecReport(this, <s:property value="#resultBasic1.id"/>, 33)">选中</a>
                                        <a class="btn btn-danger btn-parent" onclick="delReport(this, <s:property value="#resultBasic1.id"/>, 33)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>


                    <s:iterator value="resultBasic2List" var="resultBasic2">
                        <tr class="manage doctorOperate parent view basic2">
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
                                        <a class="btn btn-default"  href="editTestBasic2?id=<s:property value="#resultBasic2.id"/>">编辑</a>
                                        <a class="btn btn-default btn-parent" target="_blank" href="showresultBasic2?id=<s:property value="#resultBasic2.id"/>">查看</a>
                                        <a class="btn btn-default unSelected btn-parent" onclick="selecReport(this, <s:property value="#resultBasic2.id"/>, 34)">选中</a>
                                        <a class="btn btn-danger btn-parent" onclick="delReport(this, <s:property value="#resultBasic2.id"/>, 34)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultGroup2020List" var="resultGroup2020">
                        <tr class="manage doctorOperate view group2020">
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
                                        <a class="btn btn-default"  href="editresultGroup2020?id=<s:property value="#resultGroup2020.id"/>">编辑</a>
                                        <a class="btn btn-default" target="_blank" href="showresultGroup2020?id=<s:property value="#resultGroup2020.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultGroup2020.id"/>, 29)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultGroup2020.id"/>, 29)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultAllergyList" var="resultAllergy">
                        <tr class="manage doctorOperate parent view allery">
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
                                        <a class="btn btn-default"  href="editTestAllergy?id=<s:property value="#resultAllergy.id"/>">编辑</a>
                                        <a class="btn btn-default btn-parent" target="_blank" href="showresultAllergy?id=<s:property value="#resultAllergy.id"/>">查看</a>
                                        <a class="btn btn-default unSelected  btn-parent" onclick="selecReport(this, <s:property value="#resultAllergy.id"/>, 32)">选中</a>
                                        <a class="btn btn-danger  btn-parent" onclick="delReport(this, <s:property value="#resultAllergy.id"/>, 32)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultPhysicalList" var="resultPhysical">
                        <tr class="manage doctorOperate view physical">
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
                                        <a class="btn btn-default" href="editresultPhysical?id=<s:property value="#resultPhysical.id"/>">编辑</a>
                                        <a class="btn btn-default" target="_blank" href="showresultPhysical?id=<s:property value="#resultPhysical.id"/>">查看</a>
                                        <a class="btn btn-default unSelected " onclick="selecReport(this, <s:property value="#resultPhysical.id"/>, 30)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultPhysical.id"/>, 30)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultFeedList" var="resultFeed">
                        <tr class="manage doctorOperate feed view feed">
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
                                        <a class="btn btn-default"  href="editresultFeed?id=<s:property value="#resultFeed.id"/>">编辑</a>
                                        <a class="btn btn-default" target="_blank" href="showresultFeed?id=<s:property value="#resultFeed.id"/>">查看</a>
                                        <a class="btn btn-default unSelected " onclick="selecReport(this, <s:property value="#resultFeed.id"/>, 37)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultFeed.id"/>, 37)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultToothList" var="resultTooth">
                        <tr class="manage doctorOperate toothD view tooth">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               牙齿(28颗)
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
                                        <a class="btn btn-default" target="_blank" href="showresultTooth?id=<s:property value="#resultTooth.id"/>">查看</a>
                                        <a class="btn btn-default unSelected " onclick="selecReport(this, <s:property value="#resultTooth.id"/>, 36)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultTooth.id"/>, 36)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultTooth20List" var="resultTooth20">
                        <tr class="manage doctorOperate toothD view tooth20">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               牙齿(20颗)
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultTooth20.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultTooth20?id=<s:property value="#resultTooth20.id"/>">查看</a>
                                        <a class="btn btn-default unSelected " onclick="selecReport(this, <s:property value="#resultTooth20.id"/>, 54)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultTooth20.id"/>, 54)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultFeel2020List" var="resultFeel2020">
                        <tr class="manage doctorOperate view feel2020">
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
                                        <a class="btn btn-default" target="_blank" href="showresultFeel2020?id=<s:property value="#resultFeel2020.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultFeel2020.id"/>, 28)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultFeel2020.id"/>, 28)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="result2016List" var="re">
                        <tr class="new-test manage doctorOperate view 2016">
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
                                        <a class="btn btn-default" target="_blank" href="showreult2016?id=<s:property value="#re.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#re.id"/>, 26)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#re.id"/>, 26)">删除</a>

                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> 

                    <s:iterator value="resultAttentionList" var="resultAttention">
                        <tr class="manage doctorOperate heart view attention">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               儿童智商.注意力评估及指导
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultAttention.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultAttention?id=<s:property value="#resultAttention.id"/>">查看</a>
                                        <a class="btn btn-default unSelected " onclick="selecReport(this, <s:property value="#resultAttention.id"/>, 52)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultAttention.id"/>, 52)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultEyeList" var="resultEye">
                        <tr class="manage doctorOperate hushi view eye">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               视力
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultEye.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultEye?id=<s:property value="#resultEye.id"/>">查看</a>
                                        <a class="btn btn-default unSelected " onclick="selecReport(this, <s:property value="#resultEye.id"/>, 41)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultEye.id"/>, 41)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultBMDList" var="resultBMD">
                        <tr class="manage doctorOperate hushi view bmd">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               骨密度
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBMD.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultBMD?id=<s:property value="#resultBMD.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultBMD.id"/>, 43)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultBMD.id"/>, 43)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultEarList" var="resultEar">
                        <tr class="manage doctorOperate hushi view ear">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               听力
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultEar.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultEar?id=<s:property value="#resultEar.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultEar.id"/>, 42)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultEar.id"/>, 42)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultBloodList" var="resultBlood">
                        <tr class="manage doctorOperate jianyan view blood">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               血常规
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBlood.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultBlood?id=<s:property value="#resultBlood.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultBlood.id"/>, 44)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultBlood.id"/>, 44)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultBoneList" var="resultBone">
                        <tr class="manage doctorOperate jianyan view bone">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               骨碱酶
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBone.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultBone?id=<s:property value="#resultBone.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultBone.id"/>, 46)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultBone.id"/>, 46)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultMicroList" var="resultMicro">
                        <tr class="manage doctorOperate jianyan view micro">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               微量元素
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultMicro.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultMicro?id=<s:property value="#resultMicro.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultMicro.id"/>, 45)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultMicro.id"/>, 45)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultUrineList" var="resultUrine">
                        <tr class="manage doctorOperate jianyan view urine">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               尿常规
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultUrine.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultUrine?id=<s:property value="#resultUrine.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultUrine.id"/>, 47)">选中</a>
                                        <!-- 47 -->
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultUrine.id"/>, 47)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultECGList" var="resultECG">
                        <tr class="manage doctorOperate jianyan view ecg">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               心电图
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultECG.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultECG?id=<s:property value="#resultECG.id"/>">查看</a>
                                        <!-- 53 -->
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultECG.id"/>, 53)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultECG.id"/>, 53)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultSummaryList" var="resultSummary">
                        <tr class="manage doctorOperate view summary">
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
                                        <a class="btn btn-default" target="_blank" href="editresultSummary?id=<s:property value="#resultSummary.id"/>">编辑</a>
                                        <a class="btn btn-default" target="_blank" href="showresultSummary?id=<s:property value="#resultSummary.id"/>">查看</a>
                                        <a class="btn btn-default unSelected" onclick="selecReport(this, <s:property value="#resultSummary.id"/>, 31)">选中</a>
                                        <a class="btn btn-danger" onclick="delReport(this, <s:property value="#resultSummary.id"/>, 31)">删除</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator>

                    <s:iterator value="resultList" var="re">
                        <tr class="old-test manage doctorOperate view">
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

                    <!-- <s:iterator value="resultDDSTList" var="resultDDST">
                        <tr class="manage doctorOperate view">
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
                                        <a class="btn btn-default" target="_blank" href="showresultDDST?id=<s:property value="#resultDDST.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

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

                    <!-- <s:iterator value="resultQiZhi2020List" var="resultQiZhi2020">
                        <tr class="manage doctorOperate qizhi view">
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
                                        <a class="btn btn-default" target="_blank" href="showresultQiZhi2020?id=<s:property value="#resultQiZhi2020.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultRearList" var="resultRear">
                        <tr class="manage doctorOperate qizhi view">
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
                                        <a class="btn btn-default" target="_blank" href="showresultRear?id=<s:property value="#resultRear.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultPlanList" var="resultPlan">
                        <tr class="manage doctorOperate view">
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
                                        <a class="btn btn-default" target="_blank" href="showresultPlan?id=<s:property value="#resultPlan.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultBlessList" var="resultBless">
                        <tr class="manage doctorOperate view">
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
                                        <a class="btn btn-default" target="_blank" href="showresultBless?id=<s:property value="#resultBless.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultHBsList" var="resultHBs">
                        <tr class="manage doctorOperate jianyan view">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               乙肝
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultHBs.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultHBs?id=<s:property value="#resultHBs.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultFastAllergyList" var="resultFastAllergy">
                        <tr class="manage doctorOperate jianyan view">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               21项速发过敏原
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultFastAllergy.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultFastAllergy?id=<s:property value="#resultFastAllergy.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultFoodAllergyList" var="resultFoodAllergy">
                        <tr class="manage doctorOperate jianyan view">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               14项慢性食物过敏原
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultFoodAllergy.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultFoodAllergy?id=<s:property value="#resultFoodAllergy.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->

                    <!-- <s:iterator value="resultBloodTypeList" var="resultBloodType">
                        <tr class="manage doctorOperate jianyan view">
                            <td>
                                <div class="media front-overflow-visible" style="padding: 7px;">
                                    <div class="media-body front-overflow-visible" >
                                        <h4 class="media-heading " >
                                            <span class="front-text-title" >
                                               血型鉴定
                                            </span>
                                        </h4>
                                        <div class="front-text-break">
                                            <div class="col-md-12" style="padding-left:0px;float: left;">
                                                <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查日期</label>
                                                <span class="col-md-2 control-label front-label" style="padding-left:30px;"><s:date name="#resultBloodType.time" format="yyyy-MM-dd HH:mm:ss" /></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pull-right" style="float: left;margin-top: 7px;">
                                        <a class="btn btn-default" target="_blank" href="showresultBloodType?id=<s:property value="#resultBloodType.id"/>">查看报告</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </s:iterator> -->
                    <tr>
                        <td>
                            <button class="btn btn-primary pull-right btn-parent" onclick="report()"> 查看所选报告</button>
                        </td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- <s:include value="/statics/footer.jsp"/> -->
</div>

<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    $("#record").addClass("front-active");

    var reportSelect = [];

    function selecttest(bid,birth){

        $.frontModal({size: 'modal-md', href: 'modals/modal_select_test.jsp'}).on('shown.bs.modal', function () {
            $("#babyid").val(bid);
        }).on('hide.bs.modal', function (){
            // window.location.href = 'home';
        });
    }


    function editbaby(bid){
        window.location = "record/editbabyinfo?babyid=" + bid;
    }


    var hoid = parseInt($("#hoid").val());
    var username = $("#username").val();
    var babyid = $("#babyid").val();
    // var babyid = 1227;
    console.log(hoid + username)


    function report() {
        var ps = '';
        for (var i =0, len = reportSelect.length; i < len; i++) {
            ps+= reportSelect[i]['resultId'];
            ps+= '_' + reportSelect[i]['testId'];
            if (i < (len-1)) {
                ps+= ','
            }
        }
        var url = "showresultAll?babyid=" + babyid + "&ps=" + ps;
        window.open(url);
    }


    function selecReport(target,rId, tId) {
        var $target = $(target);
        var tclass = $target.attr('class');
        if (tclass.indexOf('unSelected') != -1) {
            for (var i =0, len = reportSelect.length; i < len; i++) {
                item = reportSelect[i];
                console.log(reportSelect)
                if (item['testId'] == tId) {
                    alert('您已选择同一类型测评,请取消原选中');
                    return;
                }
            }
            $(target).addClass('selected').removeClass('unSelected');
            reportSelect.push({resultId: rId,testId: tId});
            console.log(reportSelect);
        } else {
            for (var i =0, len = reportSelect.length; i < len; i++) {
                item = reportSelect[i];
                if (item['resultId'] == rId) {
                    reportSelect.splice(i,1);
                    console.log(reportSelect);
                    $(target).addClass('unSelected').removeClass('selected');
                    return;
                }

            }
        }
    }

    function delReport(target,rId, tId) {
        $.tipModal('confirm', 'success', '确定删除本测评？', function(result) {
            if(result) {
                $.ajax({
                    url: 'delTest',
                    type: 'post',
                    data: {
                        babyid: $("#babyid").val(),
                        testId: tId,
                        resultId: rId
                    },
                    success:function (json) {
                        history.go(0);
                    }
                });
            }
        });
        
    }

    function nowTest() {
        $('#all').removeClass('btn-primary').addClass('btn-default')
        $('#now').removeClass('btn-default').addClass('btn-primary')
        $('.view').hide();
        $($('.care')[0]).show();
        $($('.basic1')[0]).show();
        $($('.basic2')[0]).show();
        $($('.group2020')[0]).show();
        $($('.allery')[0]).show();
        $($('.physical')[0]).show();
        $($('.feed')[0]).show();
        $($('.tooth')[0]).show();
        $($('.tooth20')[0]).show();
        $($('.feel2020')[0]).show();
        $($('.2016')[0]).show();
        $($('.attention')[0]).show();
        $($('.eye')[0]).show();
        $($('.bmd')[0]).show();
        $($('.ear')[0]).show();
        $($('.blood')[0]).show();
        $($('.bone')[0]).show();
        $($('.micro')[0]).show();
        $($('.urine')[0]).show();
        $($('.ecg')[0]).show();
        $($('.summary')[0]).show();
        authorize()
    }
    
    function allTest() {
        // alert('111')
        $('#now').removeClass('btn-primary').addClass('btn-default')
        $('#all').removeClass('btn-default').addClass('btn-primary')
        $('.view').show();
        authorize()
    }

    function parentCheckReport() {
        var parentReport = ''
        window.location.href = parentReport;
    }

    function authorize() {
        var username = $("#username").val();
        if (username.indexOf('家长') != -1) {
            console.log('家长视角。。。。。。');
            $('.view').hide();
            $('.btn-parent').hide();
            $('.navbar').hide();
            $('.footer-default').hide();
            $('.parent').show();
            // 需要判断体检报告是否生成
            $('#parentCheckReport').show();
        }

        if (username == '心理测评师') {
            console.log('心理测评师视角。。。。。。');
            $('.view').hide();
            $('.heart').show();
        }

        if (username == '气质测评师') {
            console.log('气质测评师视角。。。。。。');
            $('.view').hide();
            $('.qizhi').show();
        }

        if (username == '牙齿测评师') {
            console.log('牙齿测评师视角。。。。。。');
            $('.view').hide();
            $('.toothD').show();
        }

        if (username == '营养师') {
            console.log('营养师视角。。。。。。');
            $('.view').hide();
            $('.feed').show();
        }

        if (username.indexOf('检验师') != -1) {
            console.log('检验师视角。。。。。。');
            $('.view').hide();
            $('.jianyan').show();
        }

        if (username.indexOf('护士') != -1) {
            console.log('护士视角。。。。。。');
            $('.view').hide();
            $('.hushi').show();
        }
    }
    nowTest();
</script>
</body>
</html>
