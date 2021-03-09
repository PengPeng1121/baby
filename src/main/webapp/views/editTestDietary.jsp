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
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">

        <input id="r3Old" type="hidden" value="<s:property value="resultDietary.r3"/>">
        <input id="r6Old" type="hidden" value="<s:property value="resultDietary.r6"/>">
        <input id="r8Old" type="hidden" value="<s:property value="resultDietary.r8"/>">
        <input id="r9Old" type="hidden" value="<s:property value="resultDietary.r9"/>">
        <input id="r10Old" type="hidden" value="<s:property value="resultDietary.r10"/>">
        <input id="r11Old" type="hidden" value="<s:property value="resultDietary.r11"/>">
        <input id="r12Old" type="hidden" value="<s:property value="resultDietary.r12"/>">
        <input id="r13Old" type="hidden" value="<s:property value="resultDietary.r13"/>">
        <input id="r14Old" type="hidden" value="<s:property value="resultDietary.r14"/>">
        <input id="r15Old" type="hidden" value="<s:property value="resultDietary.r15"/>">
        <input id="remarkOld" type="hidden" value="<s:property value="resultDietary.remark"/>">


        <h3 style="margin-top: 0px;margin-bottom: 20px;">儿童饮食行为评估</h3>
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
                <div class="panel-heading">饮食行为评估</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                        <tbody style="width: 100%">
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>1</td>
                                <td>
                                    当前奶量
                                </td>
                                <td colspan="2">
                                    <input id="r1" style="width: 100%" /> 
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>2</td>
                                <td>
                                    奶类种类
                                </td>
                                <td colspan="2">
                                    <input id="r2" style="width: 100%" /> 
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>3</td>
                                <td>
                                    是否有过敏情况
                                </td>
                                <td>
                                    <label for="radio-answer-1-1" style="font-weight: normal;">
                                        <input type="radio" name="r3" value="1"  id="radio-answer-1-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-1-0" style="font-weight: normal;">
                                        <input type="radio" name="r3" value="0" id="radio-answer-1-0" />否
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>4</td>
                                <td>
                                    餐点次数
                                </td>
                                <td colspan="2">
                                    <input id="r4" style="width: 100%" /> 
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>5</td>
                                <td>
                                    食物性状
                                </td>
                                <td colspan="2">
                                    <input id="r5" style="width: 100%" /> 
                                </td>
                            </tr>

                            
                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>6</td>
                                <td>
                                    是否自主进食
                                </td>
                                <td>
                                    <label for="radio-answer-2-1">
                                        <input type="radio" name="r6" value="1"  id="radio-answer-2-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-2-0">
                                        <input type="radio" name="r6" value="0" id="radio-answer-2-0" />否
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>7</td>
                                <td>
                                    排便情况（性状/频次）
                                </td>
                                <td colspan="2">
                                    <input id="r7" style="width: 100%" /> 
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>8</td>
                                <td>
                                    是否挑食
                                </td>
                                <td>
                                    <label for="radio-answer-3-1">
                                        <input type="radio" name="r8" value="1"  id="radio-answer-3-1" />挑食
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-3-0">
                                        <input type="radio" name="r8" value="0" id="radio-answer-3-0" />不挑食
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-3-2">
                                        <input type="radio" name="r8" value="2" id="radio-answer-3-2" />其他
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>9</td>
                                <td>
                                    挑食原因
                                </td>
                                <td>
                                    <label for="radio-answer-4-1">
                                        <input type="radio" name="r9" value="1"  id="radio-answer-4-1" />食物选择单一
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-4-0">
                                        <input type="radio" name="r9" value="0" id="radio-answer-4-0" />习惯性挑食
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-4-2">
                                        <input type="radio" name="r9" value="2" id="radio-answer-4-2" />爱吃零食
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-4-3">
                                        <input type="radio" name="r9" value="3" id="radio-answer-4-3" />不喜欢气味，口味，外观，口感等
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>10</td>
                                <td>
                                    食物是否多样
                                </td>
                                <td>
                                    <label for="radio-answer-5-1">
                                        <input type="radio" name="r10" value="1"  id="radio-answer-5-1" />多样
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-5-0">
                                        <input type="radio" name="r10" value="0" id="radio-answer-5-0" />单一
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-5-2">
                                        <input type="radio" name="r10" value="2" id="radio-answer-5-2" />不确定
                                    </label>
                                </td>
                                
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>11</td>
                                <td>
                                    进食习惯
                                </td>
                                <td>
                                    <label for="radio-answer-6-1">
                                        <input type="radio" name="r11" value="1"  id="radio-answer-6-1" />能安静吃完一顿饭
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-6-0">
                                        <input type="radio" name="r11" value="0" id="radio-answer-6-0" />一边进食一边分心（看电视等）
                                    </label>
                                </td>
                            </tr>


                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>12</td>
                                <td>
                                    进餐时间
                                </td>
                                <td>
                                    <label for="radio-answer-7-1">
                                        <input type="radio" name="r12" value="1"  id="radio-answer-7-1" />5-10分钟
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-7-0">
                                        <input type="radio" name="r12" value="0" id="radio-answer-7-0" />10-20分钟
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-7-2">
                                        <input type="radio" name="r12" value="2" id="radio-answer-7-2" />20-30分钟
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-7-3">
                                        <input type="radio" name="r12" value="3" id="radio-answer-7-3" />大于1h
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-7-4">
                                        <input type="radio" name="r12" value="4" id="radio-answer-7-4" />其他
                                    </label>
                                </td>
                                
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>13</td>
                                <td>
                                    是否食物奖惩制
                                </td>
                                <td>
                                    <label for="radio-answer-8-1">
                                        <input type="radio" name="r13" value="1"  id="radio-answer-8-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-8-0">
                                        <input type="radio" name="r13" value="0" id="radio-answer-8-0" />否
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>14</td>
                                <td>
                                    是否情绪性进食
                                </td>
                                <td>
                                    <label for="radio-answer-9-1">
                                        <input type="radio" name="r14" value="1"  id="radio-answer-9-1" />是
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-9-0">
                                        <input type="radio" name="r14" value="0" id="radio-answer-9-0" />否
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>15</td>
                                <td>
                                    食物选择
                                </td>
                                <td>
                                    <label for="radio-answer-10-1">
                                        <input type="radio" name="r15" value="1"  id="radio-answer-10-1" />只吃自己选择的食物
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-10-0">
                                        <input type="radio" name="r15" value="0" id="radio-answer-10-0" />大人给什么吃什么
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-10-2">
                                        <input type="radio" name="r15" value="2" id="radio-answer-10-2" />不吃没吃过的食物
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>r16</td>
                                <td>
                                    食物响应
                                </td>
                                <td>
                                    <label for="radio-answer-11-1">
                                        <input type="radio" name="r16" value="1"  id="radio-answer-11-1" />吃的很少就不吃了（剩饭菜）
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-11-0">
                                        <input type="radio" name="r16" value="0" id="radio-answer-11-0" />即使很饱但看到喜欢的食物仍能吃的很多
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>17</td>
                                <td>
                                    外因性进食
                                </td>
                                <td>
                                    <label for="radio-answer-12-1">
                                        <input type="radio" name="r17" value="1"  id="radio-answer-12-1" />在餐馆比在家吃的多
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-12-0">
                                        <input type="radio" name="r17" value="0" id="radio-answer-12-0" />喜欢和别人同时进食
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-12-2">
                                        <input type="radio" name="r17" value="2" id="radio-answer-12-2" />改变饭菜的花样就吃的多
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-12-3">
                                        <input type="radio" name="r17" value="3" id="radio-answer-12-3" />用喜欢的餐具吃的多
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>18</td>
                                <td>
                                    思考性进食
                                </td>
                                <td>
                                    <label for="radio-answer-13-1">
                                        <input type="radio" name="r18" value="1"  id="radio-answer-13-1" />体重增加时进食量减少
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-13-0">
                                        <input type="radio" name="r18" value="0" id="radio-answer-13-0" />想减肥时进食量减少
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>19</td>
                                <td>
                                    每天运动时间
                                </td>
                                <td>
                                    <label for="radio-answer-14-1">
                                        <input type="radio" name="r19" value="1"  id="radio-answer-14-1" />10分钟
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-14-0">
                                        <input type="radio" name="r19" value="0" id="radio-answer-14-0" />30分钟
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-14-2">
                                        <input type="radio" name="r19" value="2" id="radio-answer-14-2" />1h以上
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-14-3">
                                        <input type="radio" name="r19" value="3" id="radio-answer-14-3" />其他
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>20</td>
                                <td>
                                    家长饮食情况
                                </td>
                                <td>
                                    <label for="radio-answer-15-1">
                                        <input type="radio" name="r15" value="1"  id="radio-answer-15-1" />单一
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-15-0">
                                        <input type="radio" name="r15" value="0" id="radio-answer-15-0" />挑食
                                    </label>
                                </td>
                                <td>
                                    <label for="radio-answer-15-0">
                                        <input type="radio" name="r15" value="2" id="radio-answer-15-2" />其他
                                    </label>
                                </td>
                            </tr>

                            <tr style="font-size: 14px;background-color: #d9edf7;">
                                <td>21</td>
                                <td>
                                    指导意见
                                </td>
                                <td colspan="5">
                                <textarea name="" id="remark" cols="100" rows="10" style="resize:none"></textarea>
                            </td>
                            </tr>

                            
                        </tbody>
                    </table>
                </div>
            </div>

            <div style="margin-bottom: 73px;">

                <a type="button" class="btn btn-default pull-right" style="margin-left: 20px" onclick="save()" >保存并返回</a>
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

    var r3Old = $('#r3Old').val();
    

    $("input:radio[name='r3'][value='"+ r3Old +"']").attr('checked','true');





    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }




    function score() {        
        $.ajax({
            url: 'saveresultDietary',
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
                        // window.location = "showresultBasic2?id=" + rId;
                        window.location = "record/moreinfo?babyid=" + $("#babyid").val();
                    }
                })
                // window.location = "showresultBasic2?id=" + json.resultBasic2.id;
            }
        })
    }





    function getData() {
        
        data['resultDietary.babyId'] = $("#babyid").val();

        data['resultDietary.r3'] = parseInt($("input:radio[name='r3']:checked").val());
        data['resultDietary.r6'] = parseInt($("input:radio[name='r6']:checked").val());
        data['resultDietary.r8'] = parseInt($("input:radio[name='r8']:checked").val());
        data['resultDietary.r9'] = parseInt($("input:radio[name='r9']:checked").val());
        data['resultDietary.r10'] = parseInt($("input:radio[name='r10']:checked").val());
        data['resultDietary.r11'] = parseInt($("input:radio[name='r11']:checked").val());
        data['resultDietary.r12'] = parseInt($("input:radio[name='r12']:checked").val());
        data['resultDietary.r13'] = parseInt($("input:radio[name='r13']:checked").val());
        data['resultDietary.r14'] = parseInt($("input:radio[name='r14']:checked").val());
        data['resultDietary.r15'] = parseInt($("input:radio[name='r15']:checked").val());

        data['resultDietary.r1'] = $("#r1").val();
        data['resultDietary.r2'] = $("#r2").val();
        data['resultDietary.r4'] = $("#r4").val();
        data['resultDietary.r5'] = $("#r5").val();
        data['resultDietary.r7'] = $("#r7").val();


        data['resultDietary.remark'] = $("#remark").val();
        
        return data;
    }




</script>

</body>
</html>