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
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">牙齿</h1>
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
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody >
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>1</td>
                            <td>
                                注意刷牙方法
                            </td>
                            <td>
                                <label for="radio-answer-1-1">
                                    <input type="radio" name="answer-1" value="1"   id="radio-answer-1-1" />是
                                </label>
                                <label for="radio-answer-1-0">
                                    <input type="radio" name="answer-1" value="0" id="radio-answer-1-0" />否
                                </label>
                            </td>
                            
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>2</td>
                            <td>
                                注意刷牙习惯
                            </td>
                            <td>
                                <label for="radio-answer-2-1">
                                    <input type="radio" name="answer-2" value="1"   id="radio-answer-2-1" />是
                                </label>
                                <label for="radio-answer-2-0">
                                    <input type="radio" name="answer-2" value="0" id="radio-answer-2-0" />否
                                </label>
                            </td>
                            
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">    
                            <td>3</td>
                            <td>
                                注意换牙后的歪斜情况
                            </td>
                            <td>
                                <label for="radio-answer-3-1">
                                    <input type="radio" name="answer-3" value="1"   id="radio-answer-3-1" />是
                                </label>
                                <label for="radio-answer-3-0">
                                    <input type="radio" name="answer-3" value="0" id="radio-answer-3-0" />否
                                </label>
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">    
                            <td>4</td>
                            <td>
                                已涂氟
                            </td>
                            <td>
                                <label for="radio-answer-4-1">
                                    <input type="radio" name="answer-4" value="1"   id="radio-answer-4-1" />是
                                </label>
                                <label for="radio-answer-4-0">
                                    <input type="radio" name="answer-4" value="0" id="radio-answer-4-0" />否
                                </label>
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td colspan="5">
                                <textarea name="" id="remark" cols="80%" rows="10" style="resize:none"></textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 生长  未生长 开颌  反颌  深覆合 深覆盖  龋齿  -->
            <div class="panel panel-default front-panel">
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="background-color: #d9edf7;">
                            <td>1</td>
                            <td>
                                上左一
                            </td>
                            <td>
                                <label for="t-radio-answer-1-0">
                                    <input type="radio" name="t-answer-1" value="99"   id="t-radio-answer-1-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-1-1">
                                    <input type="radio" name="t-answer-1" value="1"   id="t-radio-answer-1-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-1-2">
                                    <input type="radio" name="t-answer-1" value="10" id="t-radio-answer-1-2" />开颌
                                </label>
                                <label for="t-radio-answer-1-3">
                                    <input type="radio" name="t-answer-1" value="11" id="t-radio-answer-1-3" />反颌
                                </label>
                                <label for="t-radio-answer-1-4">
                                    <input type="radio" name="t-answer-1" value="12" id="t-radio-answer-1-4" />深覆合
                                </label>
                                <label for="t-radio-answer-1-5">
                                    <input type="radio" name="t-answer-1" value="13" id="t-radio-answer-1-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-1-6">
                                    <input type="radio" name="t-answer-1" value="2" id="t-radio-answer-1-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右一
                            </td>
                            <td>
                                <label for="t-radio-answer-2-0">
                                    <input type="radio" name="t-answer-2" value="99"   id="t-radio-answer-2-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-2-1">
                                    <input type="radio" name="t-answer-2" value="1"   id="t-radio-answer-2-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-2-2">
                                    <input type="radio" name="t-answer-2" value="10" id="t-radio-answer-2-2" />开颌
                                </label>
                                <label for="t-radio-answer-2-3">
                                    <input type="radio" name="t-answer-2" value="11" id="t-radio-answer-2-3" />反颌
                                </label>
                                <label for="t-radio-answer-2-4">
                                    <input type="radio" name="t-answer-2" value="12" id="t-radio-answer-2-4" />深覆合
                                </label>
                                <label for="t-radio-answer-2-5">
                                    <input type="radio" name="t-answer-2" value="13" id="t-radio-answer-2-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-2-6">
                                    <input type="radio" name="t-answer-2" value="2" id="t-radio-answer-2-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>2</td>
                            <td>
                                上左二
                            </td>
                            <td>
                                <label for="t-radio-answer-3-0">
                                    <input type="radio" name="t-answer-3" value="99"   id="t-radio-answer-3-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-3-1">
                                    <input type="radio" name="t-answer-3" value="1"   id="t-radio-answer-3-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-3-2">
                                    <input type="radio" name="t-answer-3" value="10" id="t-radio-answer-3-2" />开颌
                                </label>
                                <label for="t-radio-answer-3-3">
                                    <input type="radio" name="t-answer-3" value="11" id="t-radio-answer-3-3" />反颌
                                </label>
                                <label for="t-radio-answer-3-4">
                                    <input type="radio" name="t-answer-3" value="12" id="t-radio-answer-3-4" />深覆合
                                </label>
                                <label for="t-radio-answer-3-5">
                                    <input type="radio" name="t-answer-3" value="13" id="t-radio-answer-3-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-3-6">
                                    <input type="radio" name="t-answer-3" value="2" id="t-radio-answer-3-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右二
                            </td>
                            <td>
                                <label for="t-radio-answer-4-0">
                                    <input type="radio" name="t-answer-4" value="99"   id="t-radio-answer-4-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-4-1">
                                    <input type="radio" name="t-answer-4" value="1"   id="t-radio-answer-4-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-4-2">
                                    <input type="radio" name="t-answer-4" value="10" id="t-radio-answer-4-2" />开颌
                                </label>
                                <label for="t-radio-answer-4-3">
                                    <input type="radio" name="t-answer-4" value="11" id="t-radio-answer-4-3" />反颌
                                </label>
                                <label for="t-radio-answer-4-4">
                                    <input type="radio" name="t-answer-4" value="12" id="t-radio-answer-4-4" />深覆合
                                </label>
                                <label for="t-radio-answer-4-5">
                                    <input type="radio" name="t-answer-4" value="13" id="t-radio-answer-4-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-4-6">
                                    <input type="radio" name="t-answer-4" value="2" id="t-radio-answer-4-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">    
                            <td>3</td>
                            <td>
                                上左三
                            </td>
                            <td>
                                <label for="t-radio-answer-5-0">
                                    <input type="radio" name="t-answer-5" value="99"   id="t-radio-answer-5-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-5-1">
                                    <input type="radio" name="t-answer-5" value="1"   id="t-radio-answer-5-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-5-2">
                                    <input type="radio" name="t-answer-5" value="10" id="t-radio-answer-5-2" />开颌
                                </label>
                                <label for="t-radio-answer-5-3">
                                    <input type="radio" name="t-answer-5" value="11" id="t-radio-answer-5-3" />反颌
                                </label>
                                <label for="t-radio-answer-5-4">
                                    <input type="radio" name="t-answer-5" value="12" id="t-radio-answer-5-4" />深覆合
                                </label>
                                <label for="t-radio-answer-5-5">
                                    <input type="radio" name="t-answer-5" value="13" id="t-radio-answer-5-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-5-6">
                                    <input type="radio" name="t-answer-5" value="2" id="t-radio-answer-5-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右三
                            </td>
                            <td>
                                <label for="t-radio-answer-6-0">
                                    <input type="radio" name="t-answer-6" value="99"   id="t-radio-answer-6-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-6-1">
                                    <input type="radio" name="t-answer-6" value="1"   id="t-radio-answer-6-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-6-2">
                                    <input type="radio" name="t-answer-6" value="10" id="t-radio-answer-6-2" />开颌
                                </label>
                                <label for="t-radio-answer-6-3">
                                    <input type="radio" name="t-answer-6" value="11" id="t-radio-answer-6-3" />反颌
                                </label>
                                <label for="t-radio-answer-6-4">
                                    <input type="radio" name="t-answer-6" value="12" id="t-radio-answer-6-4" />深覆合
                                </label>
                                <label for="t-radio-answer-6-5">
                                    <input type="radio" name="t-answer-6" value="13" id="t-radio-answer-6-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-6-6">
                                    <input type="radio" name="t-answer-6" value="2" id="t-radio-answer-6-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>4</td>
                            <td>
                                上左四
                            </td>
                            <td>
                                <label for="t-radio-answer-7-0">
                                    <input type="radio" name="t-answer-7" value="99"   id="t-radio-answer-7-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-7-1">
                                    <input type="radio" name="t-answer-7" value="1"   id="t-radio-answer-7-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-7-2">
                                    <input type="radio" name="t-answer-7" value="10" id="t-radio-answer-7-2" />开颌
                                </label>
                                <label for="t-radio-answer-7-3">
                                    <input type="radio" name="t-answer-7" value="11" id="t-radio-answer-7-3" />反颌
                                </label>
                                <label for="t-radio-answer-7-4">
                                    <input type="radio" name="t-answer-7" value="12" id="t-radio-answer-7-4" />深覆合
                                </label>
                                <label for="t-radio-answer-7-5">
                                    <input type="radio" name="t-answer-7" value="13" id="t-radio-answer-7-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-7-6">
                                    <input type="radio" name="t-answer-7" value="2" id="t-radio-answer-7-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右四
                            </td>
                            <td>
                                <label for="t-radio-answer-8-0">
                                    <input type="radio" name="t-answer-8" value="99"   id="t-radio-answer-8-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-8-1">
                                    <input type="radio" name="t-answer-8" value="1"   id="t-radio-answer-8-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-8-2">
                                    <input type="radio" name="t-answer-8" value="10" id="t-radio-answer-8-2" />开颌
                                </label>
                                <label for="t-radio-answer-8-3">
                                    <input type="radio" name="t-answer-8" value="11" id="t-radio-answer-8-3" />反颌
                                </label>
                                <label for="t-radio-answer-8-4">
                                    <input type="radio" name="t-answer-8" value="12" id="t-radio-answer-8-4" />深覆合
                                </label>
                                <label for="t-radio-answer-8-5">
                                    <input type="radio" name="t-answer-8" value="13" id="t-radio-answer-8-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-8-6">
                                    <input type="radio" name="t-answer-8" value="2" id="t-radio-answer-8-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>5</td>
                            <td>
                                上左五
                            </td>
                            <td>
                                <label for="t-radio-answer-9-0">
                                    <input type="radio" name="t-answer-9" value="99"   id="t-radio-answer-9-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-9-1">
                                    <input type="radio" name="t-answer-9" value="1"   id="t-radio-answer-9-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-9-2">
                                    <input type="radio" name="t-answer-9" value="10" id="t-radio-answer-9-2" />开颌
                                </label>
                                <label for="t-radio-answer-9-3">
                                    <input type="radio" name="t-answer-9" value="11" id="t-radio-answer-9-3" />反颌
                                </label>
                                <label for="t-radio-answer-9-4">
                                    <input type="radio" name="t-answer-9" value="12" id="t-radio-answer-9-4" />深覆合
                                </label>
                                <label for="t-radio-answer-9-5">
                                    <input type="radio" name="t-answer-9" value="13" id="t-radio-answer-9-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-9-6">
                                    <input type="radio" name="t-answer-9" value="2" id="t-radio-answer-9-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右五
                            </td>
                            <td>
                                <label for="t-radio-answer-10-0">
                                    <input type="radio" name="t-answer-10" value="99"   id="t-radio-answer-10-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-10-1">
                                    <input type="radio" name="t-answer-10" value="1"   id="t-radio-answer-10-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-10-2">
                                    <input type="radio" name="t-answer-10" value="10" id="t-radio-answer-10-2" />开颌
                                </label>
                                <label for="t-radio-answer-10-3">
                                    <input type="radio" name="t-answer-10" value="11" id="t-radio-answer-10-3" />反颌
                                </label>
                                <label for="t-radio-answer-10-4">
                                    <input type="radio" name="t-answer-10" value="12" id="t-radio-answer-10-4" />深覆合
                                </label>
                                <label for="t-radio-answer-10-5">
                                    <input type="radio" name="t-answer-10" value="13" id="t-radio-answer-10-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-10-6">
                                    <input type="radio" name="t-answer-10" value="2" id="t-radio-answer-10-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>6</td>
                            <td>
                                上左六
                            </td>
                            <td>
                                <label for="t-radio-answer-11-0">
                                    <input type="radio" name="t-answer-11" value="99"   id="t-radio-answer-11-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-11-1">
                                    <input type="radio" name="t-answer-11" value="1"   id="t-radio-answer-11-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-11-2">
                                    <input type="radio" name="t-answer-11" value="10" id="t-radio-answer-11-2" />开颌
                                </label>
                                <label for="t-radio-answer-11-3">
                                    <input type="radio" name="t-answer-11" value="11" id="t-radio-answer-11-3" />反颌
                                </label>
                                <label for="t-radio-answer-11-4">
                                    <input type="radio" name="t-answer-11" value="12" id="t-radio-answer-11-4" />深覆合
                                </label>
                                <label for="t-radio-answer-11-5">
                                    <input type="radio" name="t-answer-11" value="13" id="t-radio-answer-11-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-11-6">
                                    <input type="radio" name="t-answer-11" value="2" id="t-radio-answer-11-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右六
                            </td>
                            <td>
                                <label for="t-radio-answer-12-0">
                                    <input type="radio" name="t-answer-12" value="99"   id="t-radio-answer-12-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-12-1">
                                    <input type="radio" name="t-answer-12" value="1"   id="t-radio-answer-12-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-12-2">
                                    <input type="radio" name="t-answer-12" value="10" id="t-radio-answer-12-2" />开颌
                                </label>
                                <label for="t-radio-answer-12-3">
                                    <input type="radio" name="t-answer-12" value="11" id="t-radio-answer-12-3" />反颌
                                </label>
                                <label for="t-radio-answer-12-4">
                                    <input type="radio" name="t-answer-12" value="12" id="t-radio-answer-12-4" />深覆合
                                </label>
                                <label for="t-radio-answer-12-5">
                                    <input type="radio" name="t-answer-12" value="13" id="t-radio-answer-12-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-12-6">
                                    <input type="radio" name="t-answer-12" value="2" id="t-radio-answer-12-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>7</td>
                            <td>
                                上左七
                            </td>
                            <td>
                                <label for="t-radio-answer-13-0">
                                    <input type="radio" name="t-answer-13" value="99"   id="t-radio-answer-13-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-13-1">
                                    <input type="radio" name="t-answer-13" value="1"   id="t-radio-answer-13-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-13-2">
                                    <input type="radio" name="t-answer-13" value="10" id="t-radio-answer-13-2" />开颌
                                </label>
                                <label for="t-radio-answer-13-3">
                                    <input type="radio" name="t-answer-13" value="11" id="t-radio-answer-13-3" />反颌
                                </label>
                                <label for="t-radio-answer-13-4">
                                    <input type="radio" name="t-answer-13" value="12" id="t-radio-answer-13-4" />深覆合
                                </label>
                                <label for="t-radio-answer-13-5">
                                    <input type="radio" name="t-answer-13" value="13" id="t-radio-answer-13-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-13-6">
                                    <input type="radio" name="t-answer-13" value="2" id="t-radio-answer-13-6" />龋齿
                                </label>
                            </td>
                            <td>
                                上右七
                            </td>
                            <td>
                                <label for="t-radio-answer-14-0">
                                    <input type="radio" name="t-answer-14" value="99"   id="t-radio-answer-14-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-14-1">
                                    <input type="radio" name="t-answer-14" value="1"   id="t-radio-answer-14-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-14-2">
                                    <input type="radio" name="t-answer-14" value="10" id="t-radio-answer-14-2" />开颌
                                </label>
                                <label for="t-radio-answer-14-3">
                                    <input type="radio" name="t-answer-14" value="11" id="t-radio-answer-14-3" />反颌
                                </label>
                                <label for="t-radio-answer-14-4">
                                    <input type="radio" name="t-answer-14" value="12" id="t-radio-answer-14-4" />深覆合
                                </label>
                                <label for="t-radio-answer-14-5">
                                    <input type="radio" name="t-answer-14" value="13" id="t-radio-answer-14-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-14-6">
                                    <input type="radio" name="t-answer-14" value="2" id="t-radio-answer-14-6" />龋齿
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- 生长  未生长 开颌  反颌  深覆合 深覆盖  龋齿  -->
            <div class="panel panel-default front-panel">
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="background-color: #d9edf7;">
                            <td>1</td>
                            <td>
                                下左一
                            </td>
                            <td>
                                <label for="t-radio-answer-15-0">
                                    <input type="radio" name="t-answer-15" value="99"   id="t-radio-answer-15-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-15-1">
                                    <input type="radio" name="t-answer-15" value="1"   id="t-radio-answer-15-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-15-2">
                                    <input type="radio" name="t-answer-15" value="10" id="t-radio-answer-15-2" />开颌
                                </label>
                                <label for="t-radio-answer-15-3">
                                    <input type="radio" name="t-answer-15" value="11" id="t-radio-answer-15-3" />反颌
                                </label>
                                <label for="t-radio-answer-15-4">
                                    <input type="radio" name="t-answer-15" value="12" id="t-radio-answer-15-4" />深覆合
                                </label>
                                <label for="t-radio-answer-15-5">
                                    <input type="radio" name="t-answer-15" value="13" id="t-radio-answer-15-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-15-6">
                                    <input type="radio" name="t-answer-15" value="2" id="t-radio-answer-15-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右一
                            </td>
                            <td>
                                <label for="t-radio-answer-16-0">
                                    <input type="radio" name="t-answer-16" value="99"   id="t-radio-answer-16-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-16-1">
                                    <input type="radio" name="t-answer-16" value="1"   id="t-radio-answer-16-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-16-2">
                                    <input type="radio" name="t-answer-16" value="10" id="t-radio-answer-16-2" />开颌
                                </label>
                                <label for="t-radio-answer-16-3">
                                    <input type="radio" name="t-answer-16" value="11" id="t-radio-answer-16-3" />反颌
                                </label>
                                <label for="t-radio-answer-16-4">
                                    <input type="radio" name="t-answer-16" value="12" id="t-radio-answer-16-4" />深覆合
                                </label>
                                <label for="t-radio-answer-16-5">
                                    <input type="radio" name="t-answer-16" value="13" id="t-radio-answer-16-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-16-6">
                                    <input type="radio" name="t-answer-16" value="2" id="t-radio-answer-16-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>2</td>
                            <td>
                                下左二
                            </td>
                            <td>
                                <label for="t-radio-answer-17-0">
                                    <input type="radio" name="t-answer-17" value="99"   id="t-radio-answer-17-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-17-1">
                                    <input type="radio" name="t-answer-17" value="1"   id="t-radio-answer-17-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-17-2">
                                    <input type="radio" name="t-answer-17" value="10" id="t-radio-answer-17-2" />开颌
                                </label>
                                <label for="t-radio-answer-17-3">
                                    <input type="radio" name="t-answer-17" value="11" id="t-radio-answer-17-3" />反颌
                                </label>
                                <label for="t-radio-answer-17-4">
                                    <input type="radio" name="t-answer-17" value="12" id="t-radio-answer-17-4" />深覆合
                                </label>
                                <label for="t-radio-answer-17-5">
                                    <input type="radio" name="t-answer-17" value="13" id="t-radio-answer-17-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-17-6">
                                    <input type="radio" name="t-answer-17" value="2" id="t-radio-answer-17-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右二
                            </td>
                            <td>
                                <label for="t-radio-answer-18-0">
                                    <input type="radio" name="t-answer-18" value="99"   id="t-radio-answer-18-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-18-1">
                                    <input type="radio" name="t-answer-18" value="1"   id="t-radio-answer-18-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-18-2">
                                    <input type="radio" name="t-answer-18" value="10" id="t-radio-answer-18-2" />开颌
                                </label>
                                <label for="t-radio-answer-18-3">
                                    <input type="radio" name="t-answer-18" value="11" id="t-radio-answer-18-3" />反颌
                                </label>
                                <label for="t-radio-answer-18-4">
                                    <input type="radio" name="t-answer-18" value="12" id="t-radio-answer-18-4" />深覆合
                                </label>
                                <label for="t-radio-answer-18-5">
                                    <input type="radio" name="t-answer-18" value="13" id="t-radio-answer-18-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-18-6">
                                    <input type="radio" name="t-answer-18" value="2" id="t-radio-answer-18-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">    
                            <td>3</td>
                            <td>
                                下左三
                            </td>
                            <td>
                                <label for="t-radio-answer-19-0">
                                    <input type="radio" name="t-answer-19" value="99"   id="t-radio-answer-19-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-19-1">
                                    <input type="radio" name="t-answer-19" value="1"   id="t-radio-answer-19-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-19-2">
                                    <input type="radio" name="t-answer-19" value="10" id="t-radio-answer-19-2" />开颌
                                </label>
                                <label for="t-radio-answer-19-3">
                                    <input type="radio" name="t-answer-19" value="11" id="t-radio-answer-19-3" />反颌
                                </label>
                                <label for="t-radio-answer-19-4">
                                    <input type="radio" name="t-answer-19" value="12" id="t-radio-answer-19-4" />深覆合
                                </label>
                                <label for="t-radio-answer-19-5">
                                    <input type="radio" name="t-answer-19" value="13" id="t-radio-answer-19-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-19-6">
                                    <input type="radio" name="t-answer-19" value="2" id="t-radio-answer-19-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右三
                            </td>
                            <td>
                                <label for="t-radio-answer-20-0">
                                    <input type="radio" name="t-answer-20" value="99"   id="t-radio-answer-20-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-20-1">
                                    <input type="radio" name="t-answer-20" value="1"   id="t-radio-answer-20-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-20-2">
                                    <input type="radio" name="t-answer-20" value="10" id="t-radio-answer-20-2" />开颌
                                </label>
                                <label for="t-radio-answer-20-3">
                                    <input type="radio" name="t-answer-20" value="11" id="t-radio-answer-20-3" />反颌
                                </label>
                                <label for="t-radio-answer-20-4">
                                    <input type="radio" name="t-answer-20" value="12" id="t-radio-answer-20-4" />深覆合
                                </label>
                                <label for="t-radio-answer-20-5">
                                    <input type="radio" name="t-answer-20" value="13" id="t-radio-answer-20-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-20-6">
                                    <input type="radio" name="t-answer-20" value="2" id="t-radio-answer-20-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>4</td>
                            <td>
                                下左四
                            </td>
                            <td>
                                <label for="t-radio-answer-21-0">
                                    <input type="radio" name="t-answer-21" value="99"   id="t-radio-answer-21-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-21-1">
                                    <input type="radio" name="t-answer-21" value="1"   id="t-radio-answer-21-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-21-2">
                                    <input type="radio" name="t-answer-21" value="10" id="t-radio-answer-21-2" />开颌
                                </label>
                                <label for="t-radio-answer-21-3">
                                    <input type="radio" name="t-answer-21" value="11" id="t-radio-answer-21-3" />反颌
                                </label>
                                <label for="t-radio-answer-21-4">
                                    <input type="radio" name="t-answer-21" value="12" id="t-radio-answer-21-4" />深覆合
                                </label>
                                <label for="t-radio-answer-21-5">
                                    <input type="radio" name="t-answer-21" value="13" id="t-radio-answer-21-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-21-6">
                                    <input type="radio" name="t-answer-21" value="2" id="t-radio-answer-21-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右四
                            </td>
                            <td>
                                <label for="t-radio-answer-22-0">
                                    <input type="radio" name="t-answer-22" value="99"   id="t-radio-answer-22-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-22-1">
                                    <input type="radio" name="t-answer-22" value="1"   id="t-radio-answer-22-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-22-2">
                                    <input type="radio" name="t-answer-22" value="10" id="t-radio-answer-22-2" />开颌
                                </label>
                                <label for="t-radio-answer-22-3">
                                    <input type="radio" name="t-answer-22" value="11" id="t-radio-answer-22-3" />反颌
                                </label>
                                <label for="t-radio-answer-22-4">
                                    <input type="radio" name="t-answer-22" value="12" id="t-radio-answer-22-4" />深覆合
                                </label>
                                <label for="t-radio-answer-22-5">
                                    <input type="radio" name="t-answer-22" value="13" id="t-radio-answer-22-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-22-6">
                                    <input type="radio" name="t-answer-22" value="2" id="t-radio-answer-22-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>5</td>
                            <td>
                                下左五
                            </td>
                            <td>
                                <label for="t-radio-answer-23-0">
                                    <input type="radio" name="t-answer-23" value="99"   id="t-radio-answer-23-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-23-1">
                                    <input type="radio" name="t-answer-23" value="1"   id="t-radio-answer-23-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-23-2">
                                    <input type="radio" name="t-answer-23" value="10" id="t-radio-answer-23-2" />开颌
                                </label>
                                <label for="t-radio-answer-23-3">
                                    <input type="radio" name="t-answer-23" value="11" id="t-radio-answer-23-3" />反颌
                                </label>
                                <label for="t-radio-answer-23-4">
                                    <input type="radio" name="t-answer-23" value="12" id="t-radio-answer-23-4" />深覆合
                                </label>
                                <label for="t-radio-answer-23-5">
                                    <input type="radio" name="t-answer-23" value="13" id="t-radio-answer-23-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-23-6">
                                    <input type="radio" name="t-answer-23" value="2" id="t-radio-answer-23-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右五
                            </td>
                            <td>
                                <label for="t-radio-answer-24-0">
                                    <input type="radio" name="t-answer-24" value="99"   id="t-radio-answer-24-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-24-1">
                                    <input type="radio" name="t-answer-24" value="1"   id="t-radio-answer-24-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-24-2">
                                    <input type="radio" name="t-answer-24" value="10" id="t-radio-answer-24-2" />开颌
                                </label>
                                <label for="t-radio-answer-24-3">
                                    <input type="radio" name="t-answer-24" value="11" id="t-radio-answer-24-3" />反颌
                                </label>
                                <label for="t-radio-answer-24-4">
                                    <input type="radio" name="t-answer-24" value="12" id="t-radio-answer-24-4" />深覆合
                                </label>
                                <label for="t-radio-answer-24-5">
                                    <input type="radio" name="t-answer-24" value="13" id="t-radio-answer-24-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-24-6">
                                    <input type="radio" name="t-answer-24" value="2" id="t-radio-answer-24-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>6</td>
                            <td>
                                下左六
                            </td>
                            <td>
                                <label for="t-radio-answer-25-0">
                                    <input type="radio" name="t-answer-25" value="99"   id="t-radio-answer-25-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-25-1">
                                    <input type="radio" name="t-answer-25" value="1"   id="t-radio-answer-25-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-25-2">
                                    <input type="radio" name="t-answer-25" value="10" id="t-radio-answer-25-2" />开颌
                                </label>
                                <label for="t-radio-answer-25-3">
                                    <input type="radio" name="t-answer-25" value="11" id="t-radio-answer-25-3" />反颌
                                </label>
                                <label for="t-radio-answer-25-4">
                                    <input type="radio" name="t-answer-25" value="12" id="t-radio-answer-25-4" />深覆合
                                </label>
                                <label for="t-radio-answer-25-5">
                                    <input type="radio" name="t-answer-25" value="13" id="t-radio-answer-25-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-25-6">
                                    <input type="radio" name="t-answer-25" value="2" id="t-radio-answer-25-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右六
                            </td>
                            <td>
                                <label for="t-radio-answer-26-0">
                                    <input type="radio" name="t-answer-26" value="99"   id="t-radio-answer-26-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-26-1">
                                    <input type="radio" name="t-answer-26" value="1"   id="t-radio-answer-26-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-26-2">
                                    <input type="radio" name="t-answer-26" value="10" id="t-radio-answer-26-2" />开颌
                                </label>
                                <label for="t-radio-answer-26-3">
                                    <input type="radio" name="t-answer-26" value="11" id="t-radio-answer-26-3" />反颌
                                </label>
                                <label for="t-radio-answer-26-4">
                                    <input type="radio" name="t-answer-26" value="12" id="t-radio-answer-26-4" />深覆合
                                </label>
                                <label for="t-radio-answer-26-5">
                                    <input type="radio" name="t-answer-26" value="13" id="t-radio-answer-26-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-26-6">
                                    <input type="radio" name="t-answer-26" value="2" id="t-radio-answer-26-6" />龋齿
                                </label>
                            </td>
                        </tr>
                        <tr style="background-color: #d9edf7;">
                            <td>7</td>
                            <td>
                                下左七
                            </td>
                            <td>
                                <label for="t-radio-answer-27-0">
                                    <input type="radio" name="t-answer-27" value="99"   id="t-radio-answer-27-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-27-1">
                                    <input type="radio" name="t-answer-27" value="1"   id="t-radio-answer-27-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-27-2">
                                    <input type="radio" name="t-answer-27" value="10" id="t-radio-answer-27-2" />开颌
                                </label>
                                <label for="t-radio-answer-27-3">
                                    <input type="radio" name="t-answer-27" value="11" id="t-radio-answer-27-3" />反颌
                                </label>
                                <label for="t-radio-answer-27-4">
                                    <input type="radio" name="t-answer-27" value="12" id="t-radio-answer-27-4" />深覆合
                                </label>
                                <label for="t-radio-answer-27-5">
                                    <input type="radio" name="t-answer-27" value="13" id="t-radio-answer-27-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-27-6">
                                    <input type="radio" name="t-answer-27" value="2" id="t-radio-answer-27-6" />龋齿
                                </label>
                            </td>
                            <td>
                                下右七
                            </td>
                            <td>
                                <label for="t-radio-answer-28-0">
                                    <input type="radio" name="t-answer-28" value="99"   id="t-radio-answer-28-0" />已生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-28-1">
                                    <input type="radio" name="t-answer-28" value="1"   id="t-radio-answer-28-1" />未生长
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-28-2">
                                    <input type="radio" name="t-answer-28" value="10" id="t-radio-answer-28-2" />开颌
                                </label>
                                <label for="t-radio-answer-28-3">
                                    <input type="radio" name="t-answer-28" value="11" id="t-radio-answer-28-3" />反颌
                                </label>
                                <label for="t-radio-answer-28-4">
                                    <input type="radio" name="t-answer-28" value="12" id="t-radio-answer-28-4" />深覆合
                                </label>
                                <label for="t-radio-answer-28-5">
                                    <input type="radio" name="t-answer-28" value="13" id="t-radio-answer-28-5" />深覆盖
                                </label>
                            </td>
                            <td>
                                <label for="t-radio-answer-28-6">
                                    <input type="radio" name="t-answer-28" value="2" id="t-radio-answer-28-6" />龋齿
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
            <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    function save() {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
    }
    function score() {
        var a1 = parseInt($("input:radio[name='answer-1']:checked").val());
        var a2 = parseInt($("input:radio[name='answer-2']:checked").val());
        var a3 = parseInt($("input:radio[name='answer-3']:checked").val());
        var a4 = parseInt($("input:radio[name='answer-4']:checked").val());
        var leftUp1 = parseInt($("input:radio[name='t-answer-1']:checked").val());
        var rightUp1 = parseInt($("input:radio[name='t-answer-2']:checked").val());
        var leftUp2 = parseInt($("input:radio[name='t-answer-3']:checked").val());
        var rightUp2 = parseInt($("input:radio[name='t-answer-4']:checked").val());
        var leftUp3 = parseInt($("input:radio[name='t-answer-5']:checked").val());
        var rightUp3 = parseInt($("input:radio[name='t-answer-6']:checked").val());
        var leftUp4 = parseInt($("input:radio[name='t-answer-7']:checked").val());
        var rightUp4 = parseInt($("input:radio[name='t-answer-8']:checked").val());
        var leftUp5 = parseInt($("input:radio[name='t-answer-9']:checked").val());
        var rightUp5 = parseInt($("input:radio[name='t-answer-10']:checked").val());
        var leftUp6 = parseInt($("input:radio[name='t-answer-11']:checked").val());
        var rightUp6 = parseInt($("input:radio[name='t-answer-12']:checked").val());
        var leftUp7 = parseInt($("input:radio[name='t-answer-13']:checked").val());
        var rightUp7 = parseInt($("input:radio[name='t-answer-14']:checked").val());
        var leftDown1 = parseInt($("input:radio[name='t-answer-15']:checked").val());
        var rightDown1 = parseInt($("input:radio[name='t-answer-16']:checked").val());
        var leftDown2 = parseInt($("input:radio[name='t-answer-17']:checked").val());
        var rightDown2 = parseInt($("input:radio[name='t-answer-18']:checked").val());
        var leftDown3 = parseInt($("input:radio[name='t-answer-19']:checked").val());
        var rightDown3 = parseInt($("input:radio[name='t-answer-20']:checked").val());
        var leftDown4 = parseInt($("input:radio[name='t-answer-21']:checked").val());
        var rightDown4 = parseInt($("input:radio[name='t-answer-22']:checked").val());
        var leftDown5 = parseInt($("input:radio[name='t-answer-23']:checked").val());
        var rightDown5 = parseInt($("input:radio[name='t-answer-24']:checked").val());
        var leftDown6 = parseInt($("input:radio[name='t-answer-25']:checked").val());
        var rightDown6 = parseInt($("input:radio[name='t-answer-26']:checked").val());
        var leftDown7 = parseInt($("input:radio[name='t-answer-27']:checked").val());
        var rightDown7 = parseInt($("input:radio[name='t-answer-28']:checked").val());

        var remark = $("#remark").val() || '';
        
        var data = "{";
        data += "'resultTooth.babyId':" + $("#babyid").val() + ",";
        data += "'resultTooth.attentionBrushWay':" + a1 + ",";
        data += "'resultTooth.attentionBrushHabit':" + a2 + ",";
        data += "'resultTooth.attentionTeethSituation':" + a3 + ",";
        data += "'resultTooth.attentionFu':" + a4 + ",";      
        
        data += "'resultTooth.leftUp1':" + leftUp1 + ",";   
        data += "'resultTooth.leftUp2':" + leftUp2 + ",";   
        data += "'resultTooth.leftUp3':" + leftUp3 + ",";
        data += "'resultTooth.leftUp4':" + leftUp4 + ",";
        data += "'resultTooth.leftUp5':" + leftUp5 + ",";
        data += "'resultTooth.leftUp6':" + leftUp6 + ",";
        data += "'resultTooth.leftUp7':" + leftUp7 + ",";
        data += "'resultTooth.rightUp1':" + rightUp1 + ",";
        data += "'resultTooth.rightUp2':" + rightUp2 + ",";
        data += "'resultTooth.rightUp3':" + rightUp3 + ",";
        data += "'resultTooth.rightUp4':" + rightUp4 + ",";
        data += "'resultTooth.rightUp5':" + rightUp5 + ",";
        data += "'resultTooth.rightUp6':" + rightUp6 + ",";
        data += "'resultTooth.rightUp7':" + rightUp7 + ",";

        data += "'resultTooth.leftDown1':" + leftDown1 + ",";
        data += "'resultTooth.leftDown2':" + leftDown2 + ",";
        data += "'resultTooth.leftDown3':" + leftDown3 + ",";
        data += "'resultTooth.leftDown4':" + leftDown4 + ",";
        data += "'resultTooth.leftDown5':" + leftDown5 + ",";
        data += "'resultTooth.leftDown6':" + leftDown6 + ",";
        data += "'resultTooth.leftDown7':" + leftDown7 + ",";
        data += "'resultTooth.rightDown1':" + rightDown1 + ",";
        data += "'resultTooth.rightDown2':" + rightDown2 + ",";
        data += "'resultTooth.rightDown3':" + rightDown3 + ",";
        data += "'resultTooth.rightDown4':" + rightDown4 + ",";
        data += "'resultTooth.rightDown5':" + rightDown5 + ",";
        data += "'resultTooth.rightDown6':" + rightDown6 + ",";
        data += "'resultTooth.rightDown7':" + rightDown7 + ",";
        data += "}";
        data = eval('(' + data + ')');
        if (remark) {
            data['resultTooth.remark'] = remark;
        }
        $.ajax({
            url: 'saveresultTooth',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultTooth.id;
                var refreshData = {
                    babyid: $("#babyid").val()
                }
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "showresultTooth?id=" + rId;
                    }
                })
            }
        })
    }


</script>

</body>
</html>