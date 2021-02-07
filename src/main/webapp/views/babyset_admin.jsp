<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
</head>
<body class="front-body">
<div class="front-inner front-inner-media">
    <s:include value="nav.jsp?act=admin"/>
    <div class="container">
        <div class="row front-canvas" id="front-canvas">
            <s:include value="/template/admin_left.jsp?index=babyset"/>
            <div class="col-md-9">
                <div class="panel panel-default front-panel">
                    <div class="panel-heading">病历设置</div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="motherIllness" >母亲孕期疾病</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="motherIllness" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.motherIllness ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="parity" >胎次</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="parity" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.parity ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="pregnancy" >孕期</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="pregnancy" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.pregnancy ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="delivery" >分娩方式</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="delivery" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.delivery ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="asphyxia" >窒息</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="asphyxia" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.asphyxia ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="jaundice" >新生儿黄疸</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="jaundice" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.jaundice ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="birthWeight" >出生体重</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="birthWeight" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.birthWeight ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="havePumping" >抽风史</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="havePumping" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.havePumping ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="relation" >填表人称呼</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="relation" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.relation ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="sit" >坐高</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="sit" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.sit ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="bust" >胸围</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="bust" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.bust ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="head" >头围</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="head" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.head ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="address" >家庭住址</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="address" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.address ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="postcode" >邮政编码</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="postcode" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.postcode ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="account" >户口属性</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="account" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.account ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="bloodtype" >小儿血型</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="bloodtype" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.bloodtype ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="education" >受教育程度</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="education" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.education ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="preDelivery" >早产天数</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="preDelivery" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.preDelivery ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="deformity" >畸形</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="deformity" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.deformity ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="frontalSuture" >前囟</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="frontalSuture" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.frontalSuture ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="onlyChild" >是否独生子女</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="onlyChild" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.onlyChild ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="familyHistory" >家族病史</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="familyHistory" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.familyHistory ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="illnessHistory" >重要病史</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="illnessHistory" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.illnessHistory ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="reason" >来诊原因</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="reason" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.reason ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="motherBirthage" >母亲生产年龄</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="motherBirthage" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.motherBirthage ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="marriage" >家庭婚姻状况</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="marriage" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.marriage ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="evaluation" >家长对小儿评价</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="evaluation" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.evaluation ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="overview" >测查小儿概述</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="overview" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.overview ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="diagnosis" >初步诊断</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="diagnosis" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.diagnosis ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="remarks" >备注</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="remarks" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.remarks ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <%--<label class="col-md-1 control-label front-label" for="height" >身长</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="height" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.height == 1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="weight" >体重</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="weight" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.weight ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>--%>
                                <label class="col-md-1 control-label front-label" for="bmi" >身高/体重/BMI</label>
                                <div class="col-md-3">
                                    <span class="control-label front-label">
					                     <select id="bmi" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0">隐藏</option>
                                             <option value="1" <s:if test="bs.bmi ==1">selected="selected"</s:if>>显示</option>
                                         </select></span>
                                </div>

                            </div>

                            <div class="text-right">
                                <button type="button" id="enter" class="btn btn-primary" onclick="saveSet()">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    function saveSet() {
        $.tipModal('confirm', 'info', '确定保存设置吗？', function (result) {
            $('.modal').modal('hide')
            if(result==true){
                $.ajax({
                    type : 'post',
                    url : 'savebabyset',
                    data : {
                        motherIllness:$("#motherIllness").val(),
                        parity:$("#parity").val(),
                        pregnancy:$("#pregnancy").val(),
                        delivery:$("#delivery").val(),
                        asphyxia:$("#asphyxia").val(),
                        jaundice:$("#jaundice").val(),
                        birthWeight:$("#birthWeight").val(),
                        havePumping:$("#havePumping").val(),
                        familyHistory:$("#familyHistory").val(),
                        illnessHistory:$("#illnessHistory").val(),
                        height:$("#height").val(),
                        weight:$("#weight").val(),
                        head:$("#head").val(),
                        diagnosis:$("#diagnosis").val(),
                        remarks:$("#remarks").val(),
                        relation:$("#relation").val(),
                        address:$("#address").val(),
                        postcode:$("#postcode").val(),
                        account:$("#account").val(),
                        bloodtype:$("#bloodtype").val(),
                        education:$("#education").val(),
                        preDelivery:$("#preDelivery").val(),
                        deformity:$("#deformity").val(),
                        frontalSuture:$("#frontalSuture").val(),
                        onlyChild:$("#onlyChild").val(),
                        reason:$("#reason").val(),
                        evaluation:$("#evaluation").val(),
                        overview:$("#overview").val(),
                        motherBirthage:$("#motherBirthage").val(),
                        marriage:$("#marriage").val(),
                        sit:$("#sit").val(),
                        bust:$("#bust").val(),
                        bmi:$("#bmi").val()
                    },success:function(data){
                        if(data.update){
                            $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'保存成功！'});
                            window.location = "babyset_admin";
                        }
                    }
                });
            }
        })
    }
</script>
</body>
</html>