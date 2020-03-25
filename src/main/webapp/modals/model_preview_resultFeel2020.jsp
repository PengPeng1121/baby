<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<div class="modal-body" style="text-align: center">
    
    
    <div class="row">
        <label class="col-md-6">前脑平衡和大脑双侧分化</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    <div class="row">
        <label class="col-md-6">脑神经心理抑制困难</label>
        <span class="col-md-6" id="questionScore2"></span>
    </div>
    <div class="row">
        <label class="col-md-6">触觉防御过多及反应不足</label>
        <span class="col-md-6" id="questionScore3"></span>
    </div>
    <div class="row">
        <label class="col-md-6">发育期运动障碍</label>
        <span class="col-md-6" id="questionScore4"></span>
    </div>
    <div class="row">
        <label class="col-md-6">视觉空间，形态</label>
        <span class="col-md-6" id="questionScore5"></span>
    </div>
    <div class="row">
        <label class="col-md-6">本体觉（重力不安症）</label>
        <span class="col-md-6" id="questionScore6"></span>
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