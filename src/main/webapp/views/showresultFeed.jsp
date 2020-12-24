<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/"/>
    <title>评测结果-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style>
        #hemaFront {
            /*background-image: url(statics/img/hemaGroupBgBoy.png); */
            background-size: 100% 100%;
            padding-top: 0px;
            /*margin-top: 70px;*/
            background-color: transparent;
            /*width: 800px;*/
        }
        #name-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
        }
        body, table, tbody, tr, td {
            background-color: transparent;
        }
        input[type="radio"] {
            display: none;
        }
        input[type='radio'] + label:before{
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 2px solid #df9390;
            border-radius:50%;
            position: relative;
            top: 5px;
        }
        input[type='radio']:checked + label:before{
            background-color: #000;
            box-shadow: inset 0 0 0 3px #fff;
        }
        input[type="checkbox"] {
            display: none;
        }
        input[type='checkbox'] + label:before{
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 2px solid #df9390;
            border-radius:50%;
            position: relative;
            top: 5px;
        }
        input[type='checkbox']:checked + label:before{
            background-color: #000;
            box-shadow: inset 0 0 0 3px #fff;
        }
        .item-line{
            border-bottom: 1px solid #df9390;
            height: 40px;
        }
        #name-table{
            position: absolute;
            left: 430px;
            top: 188px;
            width: 15%;
            font-size: 16px;
        }
        #table-main{
            border: 0px;
            margin: 0;
            width: 35%;
            position: absolute;
            left: 440px;
            top: 280px;
        }
        #remark-table{
            width: 590px !important;
            height: 400px !important;
            border:0 !important;
            font-size: 16px !important;
            position: absolute !important;
            top: 750px !important;
            left: 490px !important;
        }
    </style>
    <style type="text/css" media="print">
        @page
        {
            size:  auto portrait;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
        input, .noprint {
            display: none
        }
        div{
            padding: 0px !important;
            margin: 0px !important;
        }
        body, table, tbody, tr, td {
            background-color: transparent;
        }

        #name-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
        }
        

        input[type="radio"] {
            display: none !important;
        }
        input[type='radio'] + label:before{
            content: "" !important;
            display: inline-block !important;
            width: 20px !important;
            height: 20px !important;
            border: 2px solid #df9390 !important;
            border-radius:50% !important;
            position: relative !important;
            top: 5px !important;
        }
        input[type='radio']:checked + label:before{
            background-color: #000 !important;
            box-shadow: inset 0 0 0 3px #fff !important;
        }
        input[type="checkbox"] {
            display: none !important;
        }
        input[type='checkbox'] + label:before{
            content: "" !important;
            display: inline-block !important;
            width: 20px !important;
            height: 20px !important;
            border: 2px solid #df9390 !important;
            border-radius:50% !important;
            position: relative !important;
            top: 5px !important;
        }
        input[type='checkbox']:checked + label:before{
            background-color: #000 !important;
            box-shadow: inset 0 0 0 3px #fff !important;
        }
        

        #name-table{
            width: 300px !important;
            position: absolute !important;
            left: 60px !important;
            top: 135px !important;
            
            font-size: 16px !important;
        }
        #table-main{
            border: 0px !important;
            margin: 0 !important;
            width: 80% !important;
            position: absolute !important;
            left: 60px !important;
            top: 225px !important;
        }
        #remark-table{
            width: 590px !important;
            height: 400px !important;
            border:0 !important;
            font-size: 16px !important;
            position: absolute !important;
            top: 680px !important;
            left: 110px !important;
        }


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultFeed.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultFeed.id"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">

        <input id="currentMilkYield" type="hidden" value="<s:property value="resultFeed.currentMilkYield"/>">
        <input id="milkType" type="hidden" value="<s:property value="resultFeed.milkType"/>">
        <input id="milkRecipe" type="hidden" value="<s:property value="resultFeed.milkRecipe"/>">
        <input id="accessoryFoodSituation" type="hidden" value="<s:property value="resultFeed.accessoryFoodSituation"/>">
        <input id="isFoodAllergy" type="hidden" value="<s:property value="resultFeed.isFoodAllergy"/>">
        <input id="foodAllergySituation" type="hidden" value="<s:property value="resultFeed.foodAllergySituation"/>">
        <input id="accessoryFoodAddTimes" type="hidden" value="<s:property value="resultFeed.accessoryFoodAddTimes"/>">
        <input id="accessoryFoodShape" type="hidden" value="<s:property value="resultFeed.accessoryFoodShape"/>">
        <input id="accessoryFoodAddDate" type="hidden" value="<s:property value="resultFeed.accessoryFoodAddDate"/>">
        <input id="isOwnFood" type="hidden" value="<s:property value="resultFeed.isOwnFood"/>">
        <input id="ownFoodSituation" type="hidden" value="<s:property value="resultFeed.ownFoodSituation"/>">
        <input id="shitTimes" type="hidden" value="<s:property value="resultFeed.shitTimes"/>">
        <input id="shitShape" type="hidden" value="<s:property value="resultFeed.shitShape"/>">
        <input id="feedSuggest" type="hidden" value="<s:property value="resultFeed.feedSuggest"/>">


        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg6Girl.jpg">
                    </s:if>
                    <table id="name-table">
                        <tr>

                            <td class="col-md-12">
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <div id="name-text">
                                    <s:property value="baby.name"/>
                                </div>
                            </td>

                        </tr>
                    </table>




                    <table id="table-main" align="center">
                        <tbody style="width: 100%">
                            <tr class="item-line">
                                <td>
                                    <span>
                                       当前总奶量:
                                    </span>
                                    <span style="margin-left: 40px">
                                        <s:property value="resultFeed.currentMilkYield"/> ml/天
                                    </span>

                                    <input type="checkbox" name="milkType"  value="0">
                                    <label style="font-weight: normal;margin-left: 100px"> 母乳</label>
                                    <input type="checkbox" name="milkType"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 40px"> 配方</label>
                                    <input type="checkbox" name="milkType"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 40px"> 混合</label>
                                    
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                      配方种类:  
                                    </span>
                                    <input type="checkbox" name="milkRecipe"  value="0">
                                    <label style="font-weight: normal;margin-left: 50px"> 普通</label>
                                    <input type="checkbox" name="milkRecipe"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 5px"> 适度</label>
                                    <input type="checkbox" name="milkRecipe"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 5px"> 深度</label>
                                    <input type="checkbox" name="milkRecipe"  value="3">
                                    <label style="font-weight: normal;margin-left: 5px"> 氨基酸</label>
                                    <input type="checkbox" name="milkRecipe"  value="4" style="">
                                    <label style="font-weight: normal;margin-left: 5px"> 羊奶粉</label>
                                    <input type="checkbox" name="milkRecipe"  value="5" style="">
                                    <label style="font-weight: normal;margin-left: 5px"> 其他</label>
                                    <span style="margin-left: 5px">
                                        <s:property value="resultFeed.milkRecipeInfo"/> 
                                    </span>
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                        辅食添加情况:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultFeed.accessoryFoodSituation"/> 
                                    </span>
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                        食物过敏情况
                                    </span>
                                    

                                    <input type="radio" name="isFoodAllergy" value="0"   id="radio-answer-5-0">
                                    <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 无</label>

                                    <input type="radio" name="isFoodAllergy" value="1"   id="radio-answer-5-1">
                                    <label for="radio-answer-5-1" style="width: 60px;margin-left: 25px;font-weight: normal;"> 有</label>
                                    
                                    <s:property value="resultFeed.foodAllergySituation"/>

                                </td>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                      辅食添加次数/天  
                                    </span>
                                    <input type="checkbox" name="accessoryFoodAddTimes"  value="0">
                                    <label style="font-weight: normal;margin-left: 7px"> 一餐</label>
                                    <input type="checkbox" name="accessoryFoodAddTimes"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 二餐</label>
                                    <input type="checkbox" name="accessoryFoodAddTimes"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 100px"> 三餐</label>
                                    
                                </td>
                            </tr>
                            <tr class="item-line">
                                <td>
                                    <span>
                                      辅食性状
                                    </span>
                                    <input type="checkbox" name="accessoryFoodShape"  value="0">
                                    <label style="font-weight: normal;margin-left: 53px"> 泥糊</label>
                                    <input type="checkbox" name="accessoryFoodShape"  value="1" style="">
                                    <label style="font-weight: normal;margin-left: 40px"> 泥糊带小颗粒</label>
                                    <input type="checkbox" name="accessoryFoodShape"  value="2" style="">
                                    <label style="font-weight: normal;margin-left: 40px"> 小丁块</label>
                                    <input type="checkbox" name="accessoryFoodShape"  value="3" style="">
                                    <label style="font-weight: normal;margin-left: 40px"> 大丁块</label>
                                    
                                </td>
                            </tr>


                            <tr class="item-line">
                                <td>
                                    <span>
                                        辅食添加时间:
                                    </span>
                                    <span style="margin-left: 60px">
                                        <s:property value="resultFeed.accessoryFoodAddDate"/> 
                                    </span>
                                </td>
                            </tr>

                            <tr class="item-line">
                                <td>
                                    <span>
                                        是否自主进食
                                    </span>
                                    

                                    

                                    <input type="radio" name="isOwnFood" value="1"   id="radio-answer-5-1">
                                    <label for="radio-answer-5-1" style="width: 60px;margin-left: 26px;font-weight: normal;"> 是</label>

                                    <input type="radio" name="isOwnFood" value="0"   id="radio-answer-5-0">
                                    <label for="radio-answer-5-0" style="width: 60px;margin-left: 20px;font-weight: normal;"> 否</label>
                                    
                                    <s:property value="resultFeed.ownFoodSituation"/>

                                </td>
                                </td>
                            </tr>



                            <tr class="item-line">
                                <td>
                                    <span>
                                        排便情况:
                                    </span>
                                    <span style="margin-left: 50px">
                                        大便次数:
                                    </span>
                                    <span>
                                        <s:property value="resultFeed.shitTimes"/>
                                    </span>
                                    <span style="margin-left: 100px">
                                        大便性状:
                                    </span>
                                    <span>
                                        <s:property value="resultFeed.shitShape"/>
                                    </span>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>

                    <table id="remark-table">
                        <tr>
                            <td>
                                <textarea rows="10" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="remarkText"></textarea>
                            </td>
                        </tr>
                    </table>

                </div>
            </div>
            <div style="width:270px;float: right">
                <!-- <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div> -->
                <div ><a type="button" class="btn btn-primary noprint pull-right print" style="">打印结果</a></div>
            </div>　
        </div>
    <footer class="footer-default noprint">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
</script>
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var resultid = $('#resultid').val();
    var days = $('#days').val();
    var feedSuggest = $('#feedSuggest').val();

    var milkTypeArr = $('#milkType').val().split(',');
    var milkRecipeArr = $('#milkRecipe').val().split(',');
    var accessoryFoodAddTimesArr = $('#accessoryFoodAddTimes').val().split(',');
    var accessoryFoodShapeArr = $('#accessoryFoodShape').val().split(',');

    var isFoodAllergy = $('#isFoodAllergy').val();
    var isOwnFood = $('#isOwnFood').val();
    

    $("input:radio[name='isFoodAllergy'][value='"+ isFoodAllergy +"']").attr('checked','true');
    $("input:radio[name='isOwnFood'][value='"+ isOwnFood +"']").attr('checked','true');
    


    for (var i = 0, len = milkTypeArr.length; i < len; i++) {
        $("input:checkbox[name='milkType'][value='" + milkTypeArr[i] + "']").attr('checked','true');
    }

    for (var j = 0, llen = milkRecipeArr.length; j < llen; j++) {
        $("input:checkbox[name='milkRecipe'][value='" + milkRecipeArr[j] + "']").attr('checked','true');
    }

    for (var k = 0, lllen = accessoryFoodAddTimesArr.length; k < lllen; k++) {
        $("input:checkbox[name='accessoryFoodAddTimes'][value='" + accessoryFoodAddTimesArr[k] + "']").attr('checked','true');
    }


    for (var m = 0, llllen = accessoryFoodShapeArr.length; m < llllen; m++) {
        $("input:checkbox[name='accessoryFoodShape'][value='" + accessoryFoodShapeArr[m] + "']").attr('checked','true');
    }





    var reg = new RegExp("<br>","g");//g,表示全部替换。
    feedSuggest = feedSuggest.replace(reg,"\n");
    $('#remarkText').html(feedSuggest);


    


    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

