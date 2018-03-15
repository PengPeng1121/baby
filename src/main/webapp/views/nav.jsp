<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>

<nav class="navbar navbar-default navbar-fixed-top front-nav">
    <div class="container">
        <div>
            <!-- 左侧栏移动端触发：可选  -->
            <%--<img class="nav-toggle-left" id="front-nav-toggle-left" alt="SidebarToggle"/>--%>
            <!-- 品牌图片大小为150 * 30：宽度不定，高度固定30px -->
            <div class="nav-brand"><a href="home"><img class="img-responsive" src="http://123.56.19.0/image/<s:property value="#session.logo"/>" alt="Babycheckup" onerror="this.src='statics/img/logo.png'" style="height: 30px;width: 250px;"/></a></div>
        </div>
        <!-- 导航栏菜单 -->
        <div class="nav-collapse collapse" id="nav-collapse-demo">
            <ul class="nav navbar-nav">
                <li id="home" class="${param.act == "home" ? "front-active" : ""}"><a href="home">首页</a></li>
                <li id="record" class="${param.act == "record" ? "front-active" : ""}"><a href="record">病历</a></li>
                <!-- <li id="test" class="${param.act == "test" ? "front-active" : ""}"><a href="record">测评</a></li> -->
                <s:if test="#session.authority == 1">
                    <li id="admin" class="${param.act == "admin" ? "front-active" : ""}"><a href="admin">管理</a></li>
                </s:if>
                        <!-- 下拉菜单 -->
                <%--<li class="dropdown ${param.act == 'new' ? 'front-active' : ''}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">新建<span class="caret"></span></a>
                    <ul class="dropdown-menu nav-dropdown">
                        <li><a href="task/newtask">任务</a></li>
                        <li><a href="report/new">报告</a></li>
                    </ul>
                </li>--%>
                <!-- end 下拉菜单 -->
            </ul>
        </div>
        <!-- end 导航栏横向菜单 -->
        <!-- 导航栏右侧区域 -->
        <div class="nav-right">
            <!-- 产品导航-->
            <div class="area area-media"><span style="font-size: 14px;">
                <span id="hname"></span>
                <s:property value="#session.username" />，您好！
            <a data-toggle="front-modal" data-title="修改密码" data-href="modals/modal_changepassword.jsp">修改密码</a>
            <a href="account/logout">退出</a>
            </span></div>
            <div class="area visible-xs visible-sm nav-toggle-down" data-toggle="collapse" data-target="#nav-collapse-demo" aria-expanded="false">
                <span class="glyphicon glyphicon-menu-hamburger" id="front-nav-toggle-down-demo"></span>
            </div>
        </div>
        <!-- end 导航栏右侧区域 -->
    </div>
</nav>
<script src="statics/js/jquery.min.js"></script>
<script type="text/javascript">
    findhospital();
    function findhospital() {
        $.ajax({
            url:"findhospital",
            type:"get",
            success:function (data) {
                $("#hname").html("["+data.name + "] ");
            }
        });
    }
</script>