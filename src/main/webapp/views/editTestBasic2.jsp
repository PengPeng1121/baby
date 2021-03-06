<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>新建评测-儿童发育评测平台</title>
    <s:include value="/statics/head.html"></s:include>
    <style type="text/css">
        p{
            margin:0;
        }
        
        .noanswer{
            background-color: #ffeb3b;
        }

        .start{
            background-color: #79eef7;
        }
        .data-input{
            text-align: right;
            height: 25px;
            line-height: 25px;
        }


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h3 style="margin-top: 0px;margin-bottom: 20px;">生产、既往、家族史</h3>
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">
        <form class="form-horizontal">
            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">小儿基本资料</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">姓名</label>
                        <label class="col-md-3 front-label"><s:property value="baby.name"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">性别</label>
                        <label class="col-md-3 front-label"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">出生日期</label>
                        <label class="col-md-3 front-label"><s:date name="baby.birthday" format="yyyy-MM-dd"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">月龄</label>
                        <label class="col-md-3 front-label"><s:property value="days"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">检查日期</label>
                        <label class="col-md-3 front-label"><%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%></label>
                    </div>
                    
                </div>
            </div>
            
            <div class="panel panel-default front-panel">
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">

                <input id="isNormalChildbirthOld" type="hidden" value="<s:property value="resultBasic2.isNormalChildbirth"/>">
                <input id="childbirthSituationOld" type="hidden" value="<s:property value="resultBasic2.childbirthSituation"/>">
                <input id="familyHeredityDiseaseOld" type="hidden" value="<s:property value="resultBasic2.familyHeredityDisease"/>">
                <input id="isHeredityDisease1Old" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease1"/>">
                <input id="isHeredityDisease2Old" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease2"/>">
                <input id="isHeredityDisease3Old" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease3"/>">
                <input id="isHeredityDisease4Old" type="hidden" value="<s:property value="resultBasic2.isHeredityDisease4"/>">
                <input id="isAllergyHistoryOld" type="hidden" value="<s:property value="resultBasic2.isAllergyHistory"/>">



                <input id="babyBirthWeekAgeOld" type="hidden" value="<s:property value="resultBasic2.babyBirthWeekAge"/>">
                <input id="isPrematureOld" type="hidden" value="<s:property value="resultBasic2.isPremature"/>">
                <input id="babyBirthWeightOld" type="hidden" value="<s:property value="resultBasic2.babyBirthWeight"/>">
                <input id="childBearingAgeOld" type="hidden" value="<s:property value="resultBasic2.childBearingAge"/>">
                <input id="babyCountOld" type="hidden" value="<s:property value="resultBasic2.babyCount"/>">

                <input id="pregnantCountOld" type="hidden" value="<s:property value="resultBasic2.pregnantCount"/>">
                <input id="motherPregnancyDiseaseSituationOld" type="hidden" value="<s:property value="resultBasic2.motherPregnancyDiseaseSituation"/>">
                <input id="fatherHeightOld" type="hidden" value="<s:property value="resultBasic2.fatherHeight"/>">
                <input id="motherHeightOld" type="hidden" value="<s:property value="resultBasic2.motherHeight"/>">
                <input id="diseasePastHistoryOld" type="hidden" value="<s:property value="resultBasic2.diseasePastHistory"/>">
                <input id="allergySituationOld" type="hidden" value="<s:property value="resultBasic2.allergySituation"/>">


                <div class="panel-heading">测查数据:</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                        <tbody style="width: 100%">
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td width="10%">1</td>
                                <td width="40%">
                                    生产方式
                                </td>
                                <td width="25%">
                                    <label for="radio-answer-1-1" style="font-weight: normal;">
                                        <input type="radio" name="isNormalChildbirth" value="1"  id="radio-answer-1-1" />顺产
                                    </label>
                                </td>
                                <td width="25%">
                                    <label for="radio-answer-1-0" style="font-weight: normal;">
                                        <input type="radio" name="isNormalChildbirth" value="0" id="radio-answer-1-0" />剖腹产
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>2</td>
                                <td>
                                    出生时有无以下情况：(多选)
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="childbirthSituation"  value="0">无
                                    <input type="checkbox" name="childbirthSituation"  value="1">缺氧
                                    <input type="checkbox" name="childbirthSituation"  value="2">黄疸(病理性)
                                    <input type="checkbox" name="childbirthSituation"  value="3">感染
                                    <input type="checkbox" name="childbirthSituation"  value="4">住保温箱
                                    <input type="checkbox" name="childbirthSituation"  value="5">新生儿手术(外科治疗)
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>3</td>
                                <td>
                                    生产胎龄(周):
                                </td>
                                <td colspan="2">
                                    <input id="babyBirthWeekAge" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>4</td>
                                <td>
                                    是否早产
                                </td>
                                <td>
                                    <label for="radio-answer-2-1">
                                        <input type="radio" name="isPremature" value="1"  id="radio-answer-2-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-2-0">
                                        <input type="radio" name="isPremature" value="0" id="radio-answer-2-0" />否
                                    </label>
                                </td>
                            </tr>
                           <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>5</td>
                                <td>
                                    出生体重:
                                </td>
                                <td colspan="2">
                                    <input id="babyBirthWeight" style="width: 80%" /> kg
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>6</td>
                                <td>
                                    母亲生育年龄(周岁):
                                </td>
                                <td colspan="2">
                                    <input id="childBearingAge" style="width: 100%" /> 
                                </td>
                            </tr>
                            <!-- <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>7</td>
                                <td>
                                    胎次:
                                </td>
                                <td colspan="2">
                                    <input id="babyCount"  style="width: 100%" /> 
                                </td>
                            </tr> -->
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>7</td>
                                <td>
                                    母亲妊娠期患病情况:
                                </td>
                                <td colspan="2">
                                    <input id="motherPregnancyDiseaseSituation"  style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>父亲身高</td>
                                <td>
                                   <input id="fatherHeight"  style="width: 80%" /> cm
                                </td>
                                <td>母亲身高</td>
                                <td>
                                    <input id="motherHeight"  style="width: 80%" /> cm
                                </td>
                            </tr>
                            <!-- <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>9</td>
                                <td>
                                    产次:
                                </td>
                                <td colspan="2">
                                    <input id="pregnantCount" style="width: 100%" /> 
                                </td>
                            </tr> -->
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>8</td>
                                <td>
                                    有无重大疾病或发生意外情况:
                                </td>
                                <td colspan="2">
                                    <input id="diseasePastHistory" style="width: 100%"  /> 
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>9</td>
                                <td>
                                    父母、祖父母、外祖父母有无先天家族遗传疾病:
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="familyHeredityDisease"  value="0">无
                                    <input type="checkbox" name="familyHeredityDisease"  value="1">高血压
                                    <input type="checkbox" name="familyHeredityDisease"  value="2">冠心病
                                    <input type="checkbox" name="familyHeredityDisease"  value="3">糖尿病
                                    <input type="checkbox" name="familyHeredityDisease"  value="4">哮喘
                                    <input type="checkbox" name="familyHeredityDisease"  value="5">癫痫
                                    <input type="checkbox" name="familyHeredityDisease"  value="6">神经疾病
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>10</td>
                                <td>
                                    外祖父母、祖父母有慢性咳嗽、季节性咳嗽、运动后咳嗽或哮喘病史
                                </td>
                                <td>
                                    <label for="radio-answer-5-1">
                                        <input type="radio" name="isHeredityDisease1" value="1" id="radio-answer-5-1" />有
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-5-0">
                                        <input type="radio" name="isHeredityDisease1" value="0" id="radio-answer-5-0" />无
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>11</td>
                                <td>
                                    父母双方有皮肤发痒、荨麻疹、药疹、湿疹病史
                                </td>
                                <td>
                                    <label for="radio-answer-6-1">
                                        <input type="radio" name="isHeredityDisease2" value="1" id="radio-answer-6-1" />有
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-6-0">
                                        <input type="radio" name="isHeredityDisease2" value="0" id="radio-answer-6-0" />无
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>12</td>
                                <td>
                                    父母双方有哮喘、鼻炎、慢性咳嗽病史
                                </td>
                                <td>
                                    <label for="radio-answer-7-1">
                                        <input type="radio" name="isHeredityDisease3" value="1" id="radio-answer-7-1" />有
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-7-0">
                                        <input type="radio" name="isHeredityDisease3" value="0" id="radio-answer-7-0" />无
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>13</td>
                                <td>
                                    父母双方有食物吸收差、身体消瘦、排便异常病史。
                                </td>
                                <td>
                                    <label for="radio-answer-8-1">
                                        <input type="radio" name="isHeredityDisease4" value="1" id="radio-answer-8-1" />有
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-8-0">
                                        <input type="radio" name="isHeredityDisease4" value="0" id="radio-answer-8-0" />无
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>14</td>
                                <td>
                                    宝宝是否有过敏史
                                </td>
                                <td>
                                    <label for="radio-answer-9-1">
                                        <input type="radio" name="isAllergyHistory" value="1"  id="radio-answer-9-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-9-0">
                                        <input type="radio" name="isAllergyHistory" value="0" id="radio-answer-9-0" />否
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>15</td>
                                <td>
                                    宝宝过敏情况:
                                </td>
                                <td colspan="2">
                                    <input id="allergySituation" style="width: 100%" /> 
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                
                <!-- <a type="button" class="btn btn-primary pull-right" style="margin-left: 20px" onclick="saveAndBasic1()" >保存并继续填写基本信息</a> -->
                <a type="button" class="btn btn-default pull-right" style="margin-left: 20px" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    var username = $("#username").val();
    
    if (username.indexOf('家长') != -1) {
        $('.navbar').hide();
        $('.footer-default').hide();
        
    }
    var isNormalChildbirthOld = $('#isNormalChildbirthOld').val();
    var childbirthSituationOld = $('#childbirthSituationOld').val();
    var childbirthSituationOldArr = $('#childbirthSituationOld').val().split(',');
    var isHeredityDisease1Old = $('#isHeredityDisease1Old').val();
    var isHeredityDisease2Old = $('#isHeredityDisease2Old').val();
    var isHeredityDisease3Old = $('#isHeredityDisease3Old').val();
    var isHeredityDisease4Old = $('#isHeredityDisease4Old').val();
    var isAllergyHistoryOld = $('#isAllergyHistoryOld').val();
    var familyHeredityDiseaseOld = $('#familyHeredityDiseaseOld').val();
    var familyHeredityDiseaseOldArr = familyHeredityDiseaseOld.split(',');

    $("input:radio[name='isNormalChildbirth'][value='"+ isNormalChildbirthOld +"']").attr('checked','true');
    $("input:radio[name='isAllergyHistory'][value='"+ isAllergyHistoryOld +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease1'][value='"+ isHeredityDisease1Old +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease2'][value='"+ isHeredityDisease2Old +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease3'][value='"+ isHeredityDisease3Old +"']").attr('checked','true');
    $("input:radio[name='isHeredityDisease4'][value='"+ isHeredityDisease4Old +"']").attr('checked','true');

    for (var i = 0, len = familyHeredityDiseaseOldArr.length; i < len; i++) {
        $("input:checkbox[name='familyHeredityDisease'][value='" + familyHeredityDiseaseOldArr[i] + "']").attr('checked','true');
    }

    for (var j = 0, llen = childbirthSituationOldArr.length; j < llen; j++) {
        $("input:checkbox[name='childbirthSituation'][value='" + childbirthSituationOldArr[j] + "']").attr('checked','true');
    }

    var babyBirthWeekAgeOld = $('#babyBirthWeekAgeOld').val();
    var isPrematureOld = $('#isPrematureOld').val();
    var babyBirthWeightOld = $('#babyBirthWeightOld').val();
    var childBearingAgeOld = $('#childBearingAgeOld').val();
    var babyCountOld = $('#babyCountOld').val();
    var pregnantCountOld = $('#pregnantCountOld').val();
    var motherPregnancyDiseaseSituationOld = $('#motherPregnancyDiseaseSituationOld').val();
    var fatherHeightOld = $('#fatherHeightOld').val();
    var motherHeightOld = $('#motherHeightOld').val();
    var diseasePastHistoryOld = $('#diseasePastHistoryOld').val();
    var allergySituationOld = $('#allergySituationOld').val();

    $('#babyBirthWeekAge').val(babyBirthWeekAgeOld);

    $('#babyBirthWeight').val(babyBirthWeightOld);
    $('#childBearingAge').val(childBearingAgeOld);
    $('#babyCount').val(babyCountOld);
    $('#pregnantCount').val(pregnantCountOld);
    $('#motherPregnancyDiseaseSituation').val(motherPregnancyDiseaseSituationOld);
    $('#fatherHeight').val(fatherHeightOld);
    $('#motherHeight').val(motherHeightOld);
    $('#diseasePastHistory').val(diseasePastHistoryOld);
    $('#allergySituation').val(allergySituationOld);

    $("input:radio[name='isPremature'][value='"+ isPrematureOld +"']").attr('checked','true');




    //月龄
    var days = parseInt($('#days').val());



    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }


    function score() {        
        $.ajax({
            url: 'saveresultBasic2',
            type: 'post',
            data: getData(),
            success:function (json) {
                var rId = json.resultBasic2.id;
                var refreshData = {
                    babyid: $("#babyid").val(),
                    testId: 34,
                    resultId: rId
                };
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "record/moreinfo?babyid=" + $("#babyid").val();
                    }
                })
                // window.location = "showresultBasic2?id=" + json.resultBasic2.id;
            }
        })
    }


    


    function getData() {
        var isNormalChildbirth,
            childbirthSituation,
            babyBirthWeekAge,
            babyBirthWeight,
            motherPregnancyDiseaseSituation,
            babyCount,
            pregnantCount,
            diseasePastHistory,
            familyHeredityDisease,
            isHeredityDisease1,
            isHeredityDisease2,
            isHeredityDisease3,
            isHeredityDisease4,
            isAllergyHistory,
            isPremature,
            allergySituation;
        var data = {};
        var childbirthSituationList = [];
        var childbirthSituationStr = '';
        $('input[name="childbirthSituation"]:checked').each(function(){
            childbirthSituationList.push($(this).val());
            childbirthSituationStr = childbirthSituationList.join(',');
        });

        var familyHeredityDiseaseList = [];
        var familyHeredityDiseaseStr = '';
        $('input[name="familyHeredityDisease"]:checked').each(function(){
            familyHeredityDiseaseList.push($(this).val());
            familyHeredityDiseaseStr = familyHeredityDiseaseList.join(',');
        });




        data['resultBasic2.babyId'] = $("#babyid").val();
        data['resultBasic2.isNormalChildbirth'] = parseInt($("input:radio[name='isNormalChildbirth']:checked").val());
        data['resultBasic2.isPremature'] = parseInt($("input:radio[name='isPremature']:checked").val());
        data['resultBasic2.childbirthSituation'] = childbirthSituationStr;
        data['resultBasic2.babyBirthWeekAge'] = $("#babyBirthWeekAge").val();
        data['resultBasic2.babyBirthWeight'] = $("#babyBirthWeight").val();
        data['resultBasic2.childBearingAge'] = $("#childBearingAge").val();

        data['resultBasic2.fatherHeight'] = $("#fatherHeight").val();
        data['resultBasic2.motherHeight'] = $("#motherHeight").val();

        data['resultBasic2.motherPregnancyDiseaseSituation'] = $("#motherPregnancyDiseaseSituation").val();
        data['resultBasic2.babyCount'] = $("#babyCount").val();
        data['resultBasic2.pregnantCount'] = $("#pregnantCount").val();
        data['resultBasic2.diseasePastHistory'] = $("#diseasePastHistory").val();
        data['resultBasic2.familyHeredityDisease'] = familyHeredityDiseaseStr;
        data['resultBasic2.isHeredityDisease1'] = parseInt($("input:radio[name='isHeredityDisease1']:checked").val());
        data['resultBasic2.isHeredityDisease2'] = parseInt($("input:radio[name='isHeredityDisease2']:checked").val());
        data['resultBasic2.isHeredityDisease3'] = parseInt($("input:radio[name='isHeredityDisease3']:checked").val());
        data['resultBasic2.isHeredityDisease4'] = parseInt($("input:radio[name='isHeredityDisease4']:checked").val());
        data['resultBasic2.isAllergyHistory'] = parseInt($("input:radio[name='isAllergyHistory']:checked").val());
        data['resultBasic2.allergySituation'] = $("#allergySituation").val();
        return data;
    }




</script>

</body>
</html>