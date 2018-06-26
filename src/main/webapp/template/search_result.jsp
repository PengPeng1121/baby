<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:if test="resultList.size() == 0">
    <div class="front-resource-info clearfix" style="margin-left: 13px;margin-bottom: 13px">
        <div class="pull-left">搜索结果共0个，建议更换搜索内容。</div>
    </div>
</s:if>
<s:else>
    <div class="front-resource-info clearfix" style="margin-left: 13px;margin-bottom: 13px">
        <div class="pull-left">搜索结果共<s:property value="resultList.size()"/>个</div>
    </div>
    <div class="panel panel-default front-panel" style="margin:0;">
        <div class="panel-body" style="padding: 0;">
        <table class="table table-striped front-table" style="margin-bottom: 0px">
            <tbody>
            <s:iterator value="resultList" var="result">
            <tr>
                <td>
                    <div class="media front-overflow-visible">
                        <div class="media-body front-overflow-visible">
                            <h4 class="media-heading">
                                <span class="front-text-title" >
                                    <s:property value="#result.baby.name"/>
                                </span>
                            </h4>
                            <div class="front-text-break">
                                <div class="col-md-12" style="padding-left:0px;">
                                    <label class="col-md-1 control-label front-label" style="padding-left:0px;">检查时间</label>
                                    <span class="col-md-3 control-label front-label"><s:date name="#result.time" format="yyyy-MM-dd HH:mm:ss"/></span>
                                    <label class="col-md-1 control-label front-label" style="padding-left:0px;">性别</label>
                                    <span class="col-md-1 control-label front-label"><s:if test="#result.baby.gender == 0">女</s:if><s:else>男</s:else></span>
                                    <label class="col-md-1 control-label front-label" style="padding-left:0px;">出生日期</label>
                                    <span class="col-md-2 control-label front-label"><s:date name="#result.baby.birthday" format="yyyy-MM-dd"/></span>
                                    <label class="col-md-1 control-label front-label" style="padding-left:0px;">发育商DQ</label>
                                    <span class="col-md-1 control-label front-label"><s:property value="#result.growth"/></span>
                                </div>
                            </div>
                            <div class="front-checkboxes front-checkboxes-bottom pull-right" style="margin-bottom:0px;">
                                <a type="button" class="btn btn-sm btn-default" href="showreult?id=<s:property value="#result.id"/>"><span class="glyphicon glyphicon-search"></span> 查看报告</a>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
            </s:iterator>
            </tbody>
        </table>
        </div>
    </div>
</s:else>
