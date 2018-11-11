<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <s:include value="/statics/head.html"/>
    <title>用户登录-儿童发育评测平台</title>
</head>

<body class="front-body">
<nav class="navbar navbar-default navbar-fixed-top front-nav">
    <div class="container">
        <div>
            <!-- 左侧栏移动端触发：可选  -->
            <%--<img class="nav-toggle-left" id="front-nav-toggle-left" alt="SidebarToggle"/>--%>
            <!-- 品牌图片大小为150 * 30：宽度不定，高度固定30px -->
            <div class="nav-brand"><a href="home"><img class="img-responsive" src="http://47.94.202.106/image/<s:property value="hospital.logoLanding"/>" alt="Babycheckup" onerror="this.src='statics/img/CIPlogo.png'" style="height: 30px;width: 250px;"/></a></div>
        </div>
        <!-- 导航栏右侧区域 -->
        <%--<div class="nav-right">
            <div class="area area-media" style="font-size: 14px">您好，请先登录！</div>
        </div>--%>
    </div>
</nav>
<div class="front-inner">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="panel panel-default front-panel" style="background: #e7e7e7; border: 0;">
                    <div class="panel-body" style="height: 100%;padding: 0px;">
                        <img src="http://47.94.202.106/image/<s:property value="hospital.bannerLanding"/>" class="change-img" onerror="this.src='statics/img/banner.png'" style="width: 100%;max-width: 100%; display: block;">
                        <%--height: 271px;width: 847.5px;--%>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="panel panel-default front-panel" style=" border: 0;">
                    <div class="panel-heading">
                        <img src="statics/img/landing.png">
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" method="post" action="account/login" onsubmit="return preSubmit()">
                            <div class="form-group" style="margin-left: 0px;color:#337ab7;" >
                                <s:property value="name"/>
                            </div>
                            <div class="form-group" id="tel-div">
                                <input type="text" class="form-control login-input" id="tel-input" name="tel" placeholder="手机" style="margin-right: auto;margin-left: auto;width: 90%">
                            </div>
                            <div class="form-group" id="psw-div">
                                <input type="password" class="form-control login-input" id="psw-input" name="psw" placeholder="密码">
                            </div>
                            <div class="form-group" style="height: 25px;">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" id="rmb-tel"> 记住手机号码
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group" style="margin-bottom: 0px;">
                                <button type="submit" class="btn btn-info btn-block login-input">登录</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/js/jquery.cookie.js"></script>
<script src="statics/js/jquery.md5.js"></script>
<script>
    ;(function () {
        if($.cookie('tel') != undefined) {
            $('#tel-input').val($.cookie('tel'));
            $('#rmb-tel').attr('checked', 'true');
        }
        $('#tel-input').blur(telInputBlur);
        $('#psw-input').blur(pswInputBlur);
        var wrong= <s:property value="wrongOfTelOrPsw"/>;
        if(wrong){
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'手机或密码错误！'});
        }
    })();

    function telInputBlur() {
        if($('#tel-div').hasClass("has-error")) {
            $('#tel-div').removeClass("has-error");
            $('#tel-help-block').hide();
        }
        if($('#tel-input').val().length != 11) {
            $('#tel-div').addClass("has-error");
            $('#tel-help-block').show();
        }
    }

    function pswInputBlur() {
        if($('#psw-div').hasClass("has-error")) {
            $('#psw-div').removeClass("has-error");
            $('#psw-help-block').hide();
        }
        if($('#psw-input').val() == "") {
            $('#psw-div').addClass("has-error");
            $('#psw-help-block').show();
        }
    }

    function preSubmit() {
        $('#tel-input').blur();
        $('#psw-input').blur();
        if($('#rmb-tel').is(':checked')) {
            $.cookie('tel', $('#tel-input').val());
        } else {
            $.removeCookie('tel');
        }
        if($('#tel-div').hasClass("has-error") || $('#psw-div').hasClass("has-error")) {
            return false;
        } else {
            $('#psw-input').val($.md5($('#psw-input').val()));
            return true;
        }
    }
</script>
</body>
</html>
