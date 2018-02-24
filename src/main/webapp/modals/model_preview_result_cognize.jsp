<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-body" style="text-align: center">
    <div class="row">
        <label class="col-md-6" >姓名</label>
        <span class="col-md-6" id="previewName"></span>
    </div>
    <div class="row">
        <label class="col-md-6" >月龄</label>
        <span class="col-md-6" id="previewAge"></span>
    </div>
    <div class="row">
        <label class="col-md-6" >得分</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    
</div>
<div class="modal-footer">
    <a href="" class="btn btn-primary" data-dismiss="modal">确定</a>
</div>
<script>
    ;(function () {
        $('#previewName').html(name);
        $('#previewAge').html(days);
        $('#questionScore1').html(questionScore[1]);
    })();
</script>