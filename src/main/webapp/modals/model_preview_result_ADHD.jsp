<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<div class="modal-body" style="text-align: center">
    <div class="row">
        <label class="col-md-6">注意力不集中</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    <div class="row">
        <label class="col-md-6">多动/冲动</label>
        <span class="col-md-6" id="questionScore2"></span>
    </div>
    <div class="row">
        <label class="col-md-6">对立违抗性障碍</label>
        <span class="col-md-6" id="questionScore3"></span>
    </div>

    
</div>
<div class="modal-footer">
    <a href="" class="btn btn-primary" data-dismiss="modal">确定</a>
</div>
<script>
    ;(function () {
        for (var i = 1; i < questionScore.length; i++) {
            $('#questionScore' + i).html(questionScore[i])
        }
    })();
</script>