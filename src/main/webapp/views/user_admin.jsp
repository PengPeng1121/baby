<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>用户管理-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style type="text/css">
        .front-table > tbody > tr:last-child {
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body class="front-body">
<div class="front-inner front-inner-media">
    <s:include value="nav.jsp?act=admin"/>
    <div class="container">
        <div class="row front-canvas" id="front-canvas">
            <s:include value="/template/admin_left.jsp?index=user"/>
            <div class="col-md-9">
                <div class="front-toolbar other" style="height: 43px;">
                    <a type="button" class="btn btn-primary" data-toggle="front-modal" data-href="modals/modal_newuser.jsp" data-title="新增用户">新增用户</a>
                </div>
                <div class="panel panel-default front-panel">
                    <div class="panel-body" style="padding: 0px;">
                        <table class="table table-striped front-table" >
                            <tbody>
                            <tr>
                                <td><strong>用户姓名</strong></td>
                                <td><strong>手机号</strong></td>
                                <td colspan="4"><strong>操作</strong></td>
                            </tr>
                            <s:iterator value="userList" var="user">
                                <tr>
                                    <td><s:property value="#user.name"/></td>
                                    <td><s:property value="#user.tel"/></td>
                                    <td><a onclick="resetPsw(<s:property value="#user.userid"/>)">重置密码</a></td>
                                    <s:if test="#user.authority == 1">
                                        <td>管理员</td>
                                        <td><a onclick="cancelAdmin(<s:property value="#user.userid"/>)">取消管理员</a></td>
                                    </s:if>
                                    <s:elseif test="#user.authority == 0">
                                        <td></td>
                                        <td><a onclick="setAdmin(<s:property value="#user.userid"/>)">设为管理员</a></td>
                                    </s:elseif>
                                    <td><a onclick="deleteUser(<s:property value="#user.userid"/>)">删除用户</a></td>
                                </tr>
                            </s:iterator>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/js/jquery.md5.js"></script>
<script type="text/javascript">
    function resetPsw(uid) {
        $.tipModal('confirm', 'info', '确定将该用户密码重置为默认密码吗？', function (result) {
            if(result){
                var newPSW = "123456";
                newPSW = $.md5(newPSW);
                $.post("account/resetPSW",{uid:uid,newPSW:newPSW},function (data) {
                    if(data.is){
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'修改成功！'});
                    }else {
                        $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'修改失败！'});
                    }
                })
            }
        })
    }
    function deleteUser(uid) {
        $.tipModal('confirm', 'warning', 'Warning Confirm', function(result) {
            if(result == true){
                $.post("account/deleteuser",{uid:uid},function (data) {
                    if(data.is){
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'删除成功！'});
                        window.location = "useradmin";
                    }
                })
            }
        })
    }

    function cancelAdmin(uid) {
        $.tipModal('confirm', 'info', '确定取消该用户管理员权限吗？', function (result) {
            if (result) {
                $.ajax({
                        url:"account/cancelAdmin",
                    type:"post",
                    data:{uid:uid},
                    success:function(){
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'取消成功！'});
                        window.location = "useradmin";
                    }
                })
            }
        })
    }
    function setAdmin(uid) {
        $.tipModal('confirm', 'info', '确定将该用户设置为管理员吗？', function (result) {
            if (result) {
                $.ajax({
                    url:"account/setAdmin",
                    type:"post",
                    data:{uid:uid},
                    success:function(){
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'设置成功！'});
                        window.location = "useradmin";
                    }
                })
            }
        })
    }
</script>
</body>
</html>