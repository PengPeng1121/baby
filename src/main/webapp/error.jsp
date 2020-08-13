<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <%@include file="/statics/head.html"%>
    <title>首页-儿童发育评测平台</title>

    <style>

    </style>
</head>

<body class="front-body">
<div class="front-inner front-inner-media">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                该测评未开通，请联系经销商15142070576！
                <s:property value="errorDesc"/>
            </div>
        </div>
    </div>   


    <footer class="footer-default">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
</body>
</html>