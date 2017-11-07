<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-body" style="text-align: center">
    <div class="row">
        <label class="col-md-6">育儿观念</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    <div class="row">
        <label class="col-md-6">关注和接纳</label>
        <span class="col-md-6" id="questionScore2"></span>
    </div>
    <div class="row">
        <label class="col-md-6">规矩或自我调控能力</label>
        <span class="col-md-6" id="questionScore3"></span>
    </div>
    <div class="row">
        <label class="col-md-6">养育关系和沟通</label>
        <span class="col-md-6" id="questionScore4"></span>
    </div>
    <div class="row">
        <label class="col-md-6">学习环境</label>
        <span class="col-md-6" id="questionScore5"></span>
    </div>
    <div class="row">
        <label class="col-md-6">语言环境</label>
        <span class="col-md-6" id="questionScore6"></span>
    </div>
    <div class="row">
        <label class="col-md-6">玩耍和娱乐</label>
        <span class="col-md-6" id="questionScore7"></span>
    </div>
    <div class="row">
        <label class="col-md-6">安全和居住环境</label>
        <span class="col-md-6" id="questionScore8"></span>
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