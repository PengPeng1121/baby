<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<div class="modal-body" style="padding: 0px;" >
    <div class="form-horizontal" style="width:100%;margin-top: 15px;">
        <div class="form-group">
            <label class="col-md-3 control-label">原密码</label>
            <div class="col-md-4">
                <input id="oldOne" class="form-control front-no-radius front-no-box-shadow"  type="password">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">新密码</label>
            <div class="col-md-4">
                <input id="newOne" class="form-control front-no-radius front-no-box-shadow"  type="password">
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3 control-label">确认新密码</label>
            <div class="col-md-4">
                <input id="re_newOne" class="form-control front-no-radius front-no-box-shadow"  type="password">
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <a href="#" class="btn btn-default" data-dismiss="modal">取消</a>
        <button type="button" class="btn btn-primary" onclick="changepsw()">修改</button>
    </div>
</div>
<script type="text/javascript">
    function changepsw() {
        if ($("#oldOne").val().trim().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写原密码！'});
        } else if ($("#newOne").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写新密码！'});
        } else if ($("#re_newOne").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写确认新密码！'});
        } else{
            var newPSW = $.md5($("#newOne").val());
            var renewPSW = $.md5($("#re_newOne").val());
            var oldPSW = $.md5($("#oldOne").val());
            //var newPSW = $("#newOne").val();
            //var renewPSW = $("#re_newOne").val();
            //var oldPSW = $("#oldOne").val();
            if(newPSW == renewPSW){
                $.post("account/changePSW",{newPSW:newPSW,oldPSW:oldPSW},function (data) {
                    if(data.is){
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'修改成功！'});
                        $('#front-modal').modal('hide');
                    }else {
                        $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'原密码不正确，请重新填写！'});
                    }
                })
            }else {
                $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'新密码两次不一致，请重新填写！'});
            }

        }
    }
</script>