<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<div class="modal-body" style="text-align: center">
    <div class="row">
        <p class="col-md-12" id="content" style="text-align: left"></p>
    </div>

    
</div>
<div class="modal-footer">
    <a href="" class="btn btn-primary" data-dismiss="modal">确定</a>
</div>
<script>
    ;(function () {
        $('#content').html(content)
    })();
</script>