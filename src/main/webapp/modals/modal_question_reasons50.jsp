<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-body">
    <form>
        <s:iterator value="#parameters.reasons[0].split(';') " id="reason">
            <input type="checkbox" name="1" value="<s:property value="#reason"/>"><s:property value="#reason"/>
            <input type="text"  class="reason_desc"><br>
        </s:iterator>
        <input type="checkbox" name="1" value="4">其他
        <input type="text"  id="other1" value="">
        <input type="text"  id="other2" value="">
        <input type="hidden" id="qid" value="">
    </form>
</div>
<div class="modal-footer">
    <a href="#" class="btn btn-default" data-dismiss="modal">取消</a><a onclick="saveReason()" class="btn btn-primary">确定</a> <!-- 注意按钮换行会导致多余的外补(margin) -->
</div>


<script type="text/javascript">
    function saveReason(){
        var select = $("input:checkbox[name='1']:checked").val(),
            desc = $("input:checkbox[name='1']:checked").siblings('input').val();
        if(select == 4){
            select = $("#other1").val();
            desc = $("#other2").val();
        }


        var qid = $("#qid").val();
        $("#reason"+qid).val(select);
        $("#desc"+qid).val(desc);
        $('#front-modal').modal('hide');
    }
</script>