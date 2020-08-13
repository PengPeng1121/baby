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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">儿童生长发育2020</h1>
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
                <div class="panel-heading">测查数据:</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                        <tbody style="width: 100%">
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>1</td>
                                <td>
                                    当前总奶量:
                                </td>
                                <td >
                                    <input id="babyBirthWeekAge" style="width: 100%" /> 
                                </td>
                                <td>
                                    <input type="checkbox" name="childbirthSituation"  value="0">母乳
                                    <input type="checkbox" name="childbirthSituation"  value="1">配方
                                    <input type="checkbox" name="childbirthSituation"  value="2">混合
                                </td>
                            </tr>

                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>2</td>
                                <td>
                                    配方种类
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="childbirthSituation"  value="0">普通
                                    <input type="checkbox" name="childbirthSituation"  value="1">适度
                                    <input type="checkbox" name="childbirthSituation"  value="2">深度
                                    <input type="checkbox" name="childbirthSituation"  value="3">氨基酸
                                    <input type="checkbox" name="childbirthSituation"  value="4">羊奶粉
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>3</td>
                                <td>
                                    辅食添加情况:
                                </td>
                                <td colspan="2">
                                    <input id="babyBirthWeekAge" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>4</td>
                                <td>
                                    食物过敏情况
                                </td>
                                <td>
                                    <label for="radio-answer-1-1">
                                        <input type="radio" name="isHeredityDisease1" value="1" id="radio-answer-1-1" />有
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-1-0">
                                        <input type="radio" name="isHeredityDisease1" value="0" id="radio-answer-1-0" />无
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>5</td>
                                <td>
                                    过敏情况
                                </td>
                                <td colspan="2">
                                    <input id="childBearingAge" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>6</td>
                                <td>
                                    辅食添加次数/天
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="childbirthSituation"  value="0">一餐
                                    <input type="checkbox" name="childbirthSituation"  value="1">二餐
                                    <input type="checkbox" name="childbirthSituation"  value="2">三餐
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>7</td>
                                <td>
                                    辅食性状:
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="childbirthSituation"  value="0">泥糊
                                    <input type="checkbox" name="childbirthSituation"  value="1">泥糊带小颗粒
                                    <input type="checkbox" name="childbirthSituation"  value="2">小丁块
                                    <input type="checkbox" name="childbirthSituation"  value="3">大丁块
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>8</td>
                                <td>
                                    辅食添加时间:
                                </td>
                                <td colspan="2">
                                    <input id="pregnantCount" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>9</td>
                                <td>
                                    是否自主进食
                                </td>
                                <td>
                                    <label for="radio-answer-2-1">
                                        <input type="radio" name="isHeredityDisease1" value="1" id="radio-answer-2-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-2-0">
                                        <input type="radio" name="isHeredityDisease1" value="0" id="radio-answer-2-0" />否
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>10</td>
                                <td>
                                    备注
                                </td>
                                <td colspan="2">
                                    <input id="childBearingAge" style="width: 100%" /> 
                                </td>
                            </tr>
                            
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>
                                    大便次数:
                                </td>
                                <td>
                                    <input id="pregnantCount" style="width: 100%" /> 
                                </td>
                                <td>
                                    大便性状:
                                </td>
                                <td>
                                    <input id="pregnantCount" style="width: 100%" /> 
                                </td>
                            </tr>
                            
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>
                                    <textarea rows="40" style="width: 800px;resize:none;border: 0;" id="remark"></textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">



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
        data['resultBasic2.childbirthSituation'] = childbirthSituationStr;
        data['resultBasic2.babyBirthWeekAge'] = $("#babyBirthWeekAge").val();
        data['resultBasic2.babyBirthWeight'] = $("#babyBirthWeight").val();
        data['resultBasic2.childBearingAge'] = $("#childBearingAge").val();

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

        
        
        $.ajax({
            url: 'saveresultFeed',
            type: 'post',
            data: data,
            success:function (json) {
                window.location = "showresultFeed?id=" + json.resultFeed.id;
            }
        })
    }


</script>

</body>
</html>