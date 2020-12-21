<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<div class="modal-body" style="padding: 0px;">
    <div class="form-horizontal" style="width:100%;margin-top: 15px;">
        <div class="form-group">
            <label class="col-md-3 control-label">手机号</label>
            <div class="col-md-4">
                <input id="tel" class="form-control front-no-radius front-no-box-shadow"  type="text" placeholder="登录用户名">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">姓名</label>
            <div class="col-md-4">
                <input id="name" class="form-control front-no-radius front-no-box-shadow"  type="text">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">邮箱</label>
            <div class="col-md-4">
                <input id="email" class="form-control front-no-radius front-no-box-shadow"  type="text">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">职位</label>
            <div class="col-md-4">
                <input id="position" class="form-control front-no-radius front-no-box-shadow"  type="text">
            </div>
        </div>
        <div class="form-group" id="isAdmin">
            <label class="col-md-3 control-label">设置为管理员</label>
            <div class="col-md-4">
                <label><input type="radio" name="admin" id="noAdmin" value="0" checked>否</label>
                <label style="margin-left: 15px;"><input type="radio" name="admin" id="admin" value="1">是</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn btn-default" data-dismiss="modal">取消</a>
        <button type="button" class="btn btn-primary" onclick="save()">保存</button>
    </div>
</div>
<script type="text/javascript">
    function save() {
        if ($("#tel").val().trim().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写联系电话！'});
        }else if(isTelCode($("#tel").val().trim()) == false ) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写正确的手机号码！'});
        } else if ($("#name").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写用户姓名！'});
        }else if($("#name").val().trim().length <2){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度至少为两位！'});
        } else if($("#name").val().trim().length >20){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度不能超过二十位！'});
        }else if($("#email").val().trim().length != 0 && isEmail($("#email").val().trim()) == false){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '邮箱格式不正确！'});
        }
        else {
            var admin = $("input:radio[name='admin']:checked").val();
            var newPSW = "123456";
            newPSW = $.md5(newPSW);
            debugger;
            $.ajax({
                url: 'account/newuser',
                type: 'post',
                data: {
                    "user.tel":$("#tel").val(),
                    "user.name":$("#name").val(),
                    "user.position":$("#position").val(),
                    "user.email":$("#email").val(),
                    "user.authority":admin,
                    newPSW:newPSW
                },
                success: function (data) {
                    if(data.flag){
                        $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'保存失败，手机号码已存在！'});
                    }else {
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'保存成功！'});
                        window.location = "useradmin";
                    }
                }
            })
        }
    }
    function isTelCode(str) {
        var  reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
        return true;
        // return reg.test(str);
    }
    function NumofName(str) {
        var  reg = /[0-9]/;
        return reg.test(str);
    }
    function ischina(str) {
        var reg=/^[a-zA-Z·\u4E00-\u9FA5]{2,20}$/;
        return reg.test(str);
    }
    function isEmail(str) {
        var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
        return reg.test(str);
    }
</script>