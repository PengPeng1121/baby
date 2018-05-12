<div class="modal-body" style="text-align: center">
    <div class="row">
        <label class="col-md-6">个人-社会</label>
        <span class="col-md-6" id="questionScore1"></span>
    </div>
    <div class="row">
        <label class="col-md-6">精细动作-适应性</label>
        <span class="col-md-6" id="questionScore2"></span>
    </div>
    <div class="row">
        <label class="col-md-6">语言</label>
        <span class="col-md-6" id="questionScore3"></span>
    </div>
    <div class="row">
        <label class="col-md-6">大运动</label>
        <span class="col-md-6" id="questionScore4"></span>
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