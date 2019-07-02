<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>


<div class="modal-body" style="text-align: center">
    
    
    <div class="row">
        <label class="col-md-6">前庭功能</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    <div class="row">
        <label class="col-md-6">触觉防御</label>
        <span class="col-md-6" id="questionScore2"></span>
    </div>
    <div class="row">
        <label class="col-md-6">本体感</label>
        <span class="col-md-6" id="questionScore3"></span>
    </div>
    <div class="row tr-old">
        <label class="col-md-6">学习能力</label>
        <span class="col-md-6" id="questionScore4"></span>
    </div>
    <div class="row tr-old">
        <label class="col-md-6">大年龄儿童（10岁以上填）</label>
        <span class="col-md-6" id="questionScore5"></span>
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
        var days = $('#days').val();

        if (days < 72) {
            $('.tr-old').hide();
        }
    })();
</script>