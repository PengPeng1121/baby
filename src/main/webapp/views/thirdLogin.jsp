<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <!-- <s:include value="/statics/head.html"/> -->
    <title>儿童发育评测平台</title>
</head>

<body class="front-body">

<div class="front-inner">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default front-panel" style=" border: 0;">
                    <div class="panel-heading">
                        
                    </div>
                    <div class="panel-body">
                        <form id= "thirdForm" class="form-horizontal" method="post" action="account/thirdLogin">
                            <div class="form-group" style="margin-left: 0px;color:#337ab7;" >
                                <s:property value="name"/>
                            </div>
                            <div class="form-group" id="tel-div">
                                <input type="text" readonly class="form-control login-input" id="tel-input" name="tel" placeholder="手机" style="margin-right: auto;margin-left: auto;width: 90%">
                            </div>
                            <div class="form-group" id="psw-div">
                                <input readonly type="password" class="form-control login-input" id="psw-input" name="psw" placeholder="密码">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<s:include value="/statics/tail.html"/>
<!-- <script src="statics/js/jquery.cookie.js"></script> -->
<!-- <script src="statics/js/jquery.md5.js"></script> -->
<script>

    ;(function () {
        function getUrlParam (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
        var tel = getUrlParam('tel');
        var psw = getUrlParam('psw');
        
        if (tel && psw) {
            $('#tel-input').val(tel)
            $('#psw-input').val(psw)
            // $('#psw-input').val($.md5(psw))
            $('#thirdForm').submit();
        }
        
    })();

</script>
</body>
</html>
