<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<div class="modal-body" style="text-align: center">
    <div class="row">
        <label class="col-md-6">活动水平</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    <div class="row">
        <label class="col-md-6">节律性</label>
        <span class="col-md-6" id="questionScore2"></span>
    </div>
    <div class="row">
        <label class="col-md-6">趋避性</label>
        <span class="col-md-6" id="questionScore3"></span>
    </div>
    <div class="row">
        <label class="col-md-6">适应性</label>
        <span class="col-md-6" id="questionScore4"></span>
    </div>
    <div class="row">
        <label class="col-md-6">反应强度</label>
        <span class="col-md-6" id="questionScore5"></span>
    </div>
    <div class="row">
        <label class="col-md-6">情绪本质</label>
        <span class="col-md-6" id="questionScore6"></span>
    </div>
    <div class="row">
        <label class="col-md-6">坚持度</label>
        <span class="col-md-6" id="questionScore7"></span>
    </div>
    <div class="row">
        <label class="col-md-6">注意分散度</label>
        <span class="col-md-6" id="questionScore8"></span>
    </div>
    <div class="row">
        <label class="col-md-6">反应阈</label>
        <span class="col-md-6" id="questionScore9"></span>
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