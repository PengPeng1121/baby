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
        <div class="panel panel-default front-panel" id="test">
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table" style="margin-bottom: 0px">
                    <tbody>
                        <s:iterator value="babyList" var="baby">
                            <tr class="">
                                <td>
                                    <div class="media front-overflow-visible" style="padding: 7px;">
                                        <div class="media-body front-overflow-visible" >
                                            <h4 class="media-heading" >
                                                <span class="front-text-title" >
                                                   <s:property value="#baby.name"/>
                                                </span>
                                            </h4>
                                        </div>
                                        <div class="pull-right" style="float: left;margin-top: 7px;">
                                            <a class="btn btn-default" target="_blank" href="newTestBasic1?id=<s:property value="#baby.id"/>">填写信息</a>
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
    

</script>
</body>
</html>
