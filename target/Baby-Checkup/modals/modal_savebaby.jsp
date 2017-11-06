<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-content" id="savebabymodal">
    <div class="modal-header">
        <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>--%>
        <h4 class="modal-title" aria-label="front-modal-label">请选择操作</h4>
    </div>
    <input type="hidden" id="babyid" value="">
    <div class="modal-body">
        <a type="button" class="btn modal-box text-center" href="record/new"><h4 style="color: white;">新建病历</h4></a>
        <a type="button" class="btn modal-box text-center" href="record"><h4 style="color: white;">管理病历</h4></a>
        <div style="margin-top: 10px;">
            <a type="button" class="btn  modal-box text-center" href="javascript:start()"><h4
                    style="color: white;font-size: small">开始0-6岁小儿<br/>神经心理发育测评</h4></a>
        </div>
        <div style="margin-top: 10px;">
            <a type="button" class="btn  modal-box text-center" href="javascript:start()"><h4
                    style="color: white;font-size: small">开始3-6岁小儿<br/>神经心理发育测评</h4></a>
        </div>
    </div>
</div>
<script>
    function start() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童超出本系统测查年龄！'});
                }
            }

        })

    }
</script>
