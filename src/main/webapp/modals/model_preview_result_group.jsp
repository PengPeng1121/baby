<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<div class="modal-body" style="text-align: center">
    <div class="row">
        <label class="col-md-5" style="text-align: right">身高:</label>
        <span class="col-md-1" id="heightP"></span>
        <span class="col-md-4" style="text-align: left; padding-left: 0px">CM</span>
    </div>
    <div class="row">
        <label class="col-md-5" style="text-align: right">体重:</label>
        <span class="col-md-1" id="weightP"></span>
        <span class="col-md-4" style="text-align: left; padding-left: 0px">KG</span>
    </div>
    <div class="row">
        <label class="col-md-5" style="text-align: right">bmi值:</label>
        <span class="col-md-1" id="bmiP"></span>
        <span class="col-md-4" style="text-align: left; padding-left: 0px"></span>
    </div>

    
</div>
<div class="modal-footer">
    <a href="" class="btn btn-primary" data-dismiss="modal">确定</a>
</div>
<script>
    ;(function () {
        var heightP,
            heightMP,
            weightP,
            bmiP;
        heightP = parseFloat($("#height").val());
        heightMP = heightP / 100;
        weightP = parseFloat($("#weight").val());
        bmiP = (weightP / Math.pow(heightMP,2)).toFixed(2);

        $('#heightP').html(heightP)
        $('#weightP').html(weightP)
        $('#bmiP').html(bmiP)
    })();
</script>