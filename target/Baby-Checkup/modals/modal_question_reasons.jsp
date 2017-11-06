<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-body">
    <form>
        <s:iterator value="#parameters.reasons[0].split(';')" id="reason">
        <input type="radio" name="1" value="<s:property value="#reason"/>"><s:property value="#reason"/><br>
        </s:iterator>
        <input type="radio" name="1" value="4">其他
        <input type="text"  id="other" value="">
        <input type="hidden" id="qid" value="">
    </form>
</div>
<div class="modal-footer">
    <a href="#" class="btn btn-default" data-dismiss="modal">取消</a><a onclick="saveReason()" class="btn btn-primary">确定</a> <!-- 注意按钮换行会导致多余的外补(margin) -->
</div>


<script type="text/javascript">
    function saveReason(){
        var select = $("input:radio[name='1']:checked").val();
        if(select == 4){
            select = $("#other").val();
        }
        var qid = $("#qid").val();
        $("#reason"+qid).val(select);
        $('#front-modal').modal('hide');
    }
</script>