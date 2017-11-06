<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<img style="z-index:1;" class="nav-toggle-left" id="front-nav-toggle-left" alt="SidebarToggle" src="http://newfront.free4inno.com/img/sidebar-toggle.png">
<div class="col-md-3 nav-left-offcanvas" id="nav-left-offcanvas">

    <div class="list-group nav-left">
        <a id="index" href="admin" class="list-group-item ${param.index=='index'?'active':''}">首页管理<span class="glyphicon glyphicon-chevron-right"></span></a>

        <a id="user" href="useradmin" class="list-group-item ${param.index=='user'?'active':''}">用户管理<span class="glyphicon glyphicon-chevron-right"></span></a>


        <a id="baby" href="javascript:void(0)" class="list-group-item  ${param.index=='babyset'||param.index=='search'?'active':''}" data-toggle="front-nav-left-sub" data-target="#slide-demo">病历管理<span class="glyphicon glyphicon-chevron-down"></span></a>
        <div id="slide-demo" class="list-group nav-left-sub ${ param.index=='babyset'||param.index=='search'? 'open active': ''}">
            <a id="sub_set" href="babyset_admin" class="list-group-item ${param.index=='babyset'?'front-nav-left-sub-active':''}">病历设置</a>
            <%-- 	       <a id="sub_mobile" href="group/mobilenoticeadmin?companyId2=${param.id}" class="list-group-item ${param.index=='mobilenotice'?'front-nav-left-sub-active':''}">手机版管理</a> --%>
            <a id="sub_search" href="baby_admin"  class="list-group-item ${param.index=='search'?'front-nav-left-sub-active':''}">病历查询</a>
        </div>
        <a id="test" href="javascript:void(0)" class="list-group-item  ${param.index=='test'?'active':''}" data-toggle="front-nav-left-sub" data-target="#slide-demo1">测评管理<span class="glyphicon glyphicon-chevron-down"></span></a>
        <div id="slide-demo1" class="list-group nav-left-sub ${ param.index=='test'? 'open active': ''}">
            <a id="test1" href="testadmin" class="list-group-item ${param.index=='test'?'front-nav-left-sub-active':''}">小儿神经心理发育测评查询</a>
        </div>
    </div>
</div>
<!-- end 左侧栏 -->