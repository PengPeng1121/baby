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

    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">营养与喂养</h1>
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
                                    <input id="currentMilkYield" style="width: 100%" /> 
                                </td>
                                <td colspan="2">
                                    <input type="checkbox" name="milkType"  value="0">母乳
                                    <input type="checkbox" name="milkType"  value="1">配方
                                    <input type="checkbox" name="milkType"  value="2">混合
                                </td>
                            </tr>

                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>2</td>
                                <td>
                                    配方种类
                                </td>
                                <td colspan="3">
                                    <input type="checkbox" name="milkRecipe"  value="0">普通
                                    <input type="checkbox" name="milkRecipe"  value="1">适度
                                    <input type="checkbox" name="milkRecipe"  value="2">深度
                                    <input type="checkbox" name="milkRecipe"  value="3">氨基酸
                                    <input type="checkbox" name="milkRecipe"  value="4">羊奶粉
                                    <input type="checkbox" name="milkRecipe"  value="5">其他
                                    <input id="milkRecipeInfo" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>3</td>
                                <td>
                                    辅食添加情况:
                                </td>
                                <td colspan="3">
                                    <input id="accessoryFoodSituation" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>4</td>
                                <td>
                                    食物过敏情况
                                </td>
                                <td colspan="3">
                                    
                                    <label for="radio-answer-1-0">
                                        <input type="radio" name="isFoodAllergy" value="0" id="radio-answer-1-0" />无
                                    </label>
                                    <label for="radio-answer-1-1">
                                        <input type="radio" name="isFoodAllergy" value="1" id="radio-answer-1-1" />有
                                    </label>
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>5</td>
                                <td>
                                    过敏情况
                                </td>
                                <td colspan="3">
                                    <input id="foodAllergySituation" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>6</td>
                                <td>
                                    辅食添加次数/天
                                </td>
                                <td colspan="3">
                                    <input type="checkbox" name="accessoryFoodAddTimes"  value="0">一餐
                                    <input type="checkbox" name="accessoryFoodAddTimes"  value="1">二餐
                                    <input type="checkbox" name="accessoryFoodAddTimes"  value="2">三餐
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>7</td>
                                <td>
                                    辅食性状:
                                </td>
                                <td colspan="3">
                                    <input type="checkbox" name="accessoryFoodShape"  value="0">泥糊
                                    <input type="checkbox" name="accessoryFoodShape"  value="1">泥糊带小颗粒
                                    <input type="checkbox" name="accessoryFoodShape"  value="2">小丁块
                                    <input type="checkbox" name="accessoryFoodShape"  value="3">大丁块
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>8</td>
                                <td>
                                    辅食添加时间:
                                </td>
                                <td colspan="3">
                                    <input id="accessoryFoodAddDate" style="width: 100%" /> 
                                </td>
                            </tr>
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>9</td>
                                <td>
                                    是否自主进食
                                </td>
                                
                                <td>
                                    <label for="radio-answer-2-1">
                                        <input type="radio" name="isOwnFood" value="1" id="radio-answer-2-1" />是
                                    </label>
                                    <input id="ownFoodSituation2" style="width: 100%" />
                                </td>
                                <td>
                                    <label for="radio-answer-2-0">
                                        <input type="radio" name="isOwnFood" value="0" id="radio-answer-2-0" />否
                                    </label>
                                    <input id="ownFoodSituation1" style="width: 100%" />
                                </td>
                            </tr>
                            
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td>
                                    10
                                </td>
                                <td>
                                    大便次数:
                                </td>
                                <td>
                                    <input id="shitTimes" style="width: 100%" /> 
                                </td>
                                <td>
                                    大便性状:
                                </td>
                                <td>
                                    <input id="shitShape" style="width: 100%" /> 
                                </td>
                            </tr>
                            
                            <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                                <td colspan="5">
                                    <textarea rows="10" style="width:100%;resize:none;border: 0;" id="feedSuggest"></textarea>
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
        var currentMilkYield,
            milkType,
            milkRecipe,
            accessoryFoodSituation,
            isFoodAllergy,
            foodAllergySituation,
            accessoryFoodAddTimes,
            accessoryFoodShape,
            accessoryFoodAddDate,
            isOwnFood,
            ownFoodSituation,
            shitTimes,
            shitShape,
            feedSuggest;
        var data = {};
        
        var milkTypeList = [];
        var milkTypeStr = '';
        $('input[name="milkType"]:checked').each(function(){
            milkTypeList.push($(this).val());
            milkTypeStr = milkTypeList.join(',');
        });

        var accessoryFoodAddTimesList = [];
        var accessoryFoodAddTimesStr = '';
        $('input[name="accessoryFoodAddTimes"]:checked').each(function(){
            accessoryFoodAddTimesList.push($(this).val());
            accessoryFoodAddTimesStr = accessoryFoodAddTimesList.join(',');
        });

        var accessoryFoodShapeList = [];
        var accessoryFoodShapeStr = '';
        $('input[name="accessoryFoodShape"]:checked').each(function(){
            accessoryFoodShapeList.push($(this).val());
            accessoryFoodShapeStr = accessoryFoodShapeList.join(',');
        });


        var milkRecipeList = [];
        var milkRecipeStr = '';
        $('input[name="milkRecipe"]:checked').each(function(){
            milkRecipeList.push($(this).val());
            milkRecipeStr = milkRecipeList.join(',');
        });







        data['resultFeed.babyId'] = $("#babyid").val();
        data['resultFeed.currentMilkYield'] = $("#currentMilkYield").val();
        data['resultFeed.milkType'] = milkTypeStr;
        data['resultFeed.milkRecipe'] = milkRecipeStr;

        data['resultFeed.accessoryFoodSituation'] = $("#accessoryFoodSituation").val();
        data['resultFeed.isFoodAllergy'] = parseInt($("input:radio[name='isFoodAllergy']:checked").val());
        data['resultFeed.foodAllergySituation'] = $("#foodAllergySituation").val();
        data['resultFeed.accessoryFoodAddTimes'] = accessoryFoodAddTimesStr;
        data['resultFeed.accessoryFoodShape'] = accessoryFoodShapeStr;
        data['resultFeed.accessoryFoodAddDate'] = $("#accessoryFoodAddDate").val();

        isOwnFood = parseInt($("input:radio[name='isOwnFood']:checked").val());
        data['resultFeed.isOwnFood'] = isOwnFood;
        if (isOwnFood) {
            data['resultFeed.ownFoodSituation'] = $("#ownFoodSituation2").val();
        } else {
            data['resultFeed.ownFoodSituation'] = $("#ownFoodSituation1").val();
        }
        

        data['resultFeed.shitTimes'] = $("#shitTimes").val();
        data['resultFeed.shitShape'] = $("#shitShape").val();
        data['resultFeed.feedSuggest'] = $("#feedSuggest").val();

        data['resultFeed.milkRecipeInfo'] = $("#milkRecipeInfo").val();
        


        
        
        $.ajax({
            url: 'saveresultFeed',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultFeed.id;
                var refreshData = {
                    babyid: $("#babyid").val()
                }
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "showresultFeed?id=" + rId;
                    }
                })
                // window.location = "showresultFeed?id=" + json.resultFeed.id;
            }
        })
    }


</script>

</body>
</html>