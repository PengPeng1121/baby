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
        table > tbody > tr > td{
            width:18%;
        }
        table > tbody > tr > td:first-child{
            width: 10%;
        }
        .noanswer{
            background-color: #ffeb3b;
        }
        #tr-info{
            position: fixed;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">幼儿气质问卷</h1>
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
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">被访者与儿童的关系：</label>
                        <label class="col-md-3 front-label">
                            <select class="form-control" id="answerRelation">
                                <option value="爸爸">爸爸</option>
                                <option value="妈妈">妈妈</option>
                                <option value="爷爷">爷爷</option>
                                <option value="奶奶">奶奶</option>
                                <option value="姥爷">姥爷</option>
                                <option value="姥姥">姥姥</option>
                                <option value="叔叔">叔叔</option>
                                <option value="婶婶">婶婶</option>
                                <option value="姑姑">姑姑</option>
                                <option value="姑父">姑父</option>
                                <option value="舅舅">舅舅</option>
                                <option value="舅妈">舅妈</option>
                                <option value="阿姨">阿姨</option>
                                <option value="姨夫">姨夫</option>
                                <option value="哥哥">哥哥</option>
                                <option value="姐姐">姐姐</option>
                                <option value="保姆">保姆</option>
                            </select>
                        </label>
                    </div>
                </div>
            </div>
            <div class="panel panel-default front-panel">
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
                <!-- 问题列表 -->
                <input id="questionSum" type="hidden" value="<s:property value="questionList.size()"/>">
                <!-- 每组问题的个数 -->
                <input id="questionMonthSum" type="hidden" value="<s:property value="questionMonthList.size()"/>">
                <!-- type  题目类型 -->
                <input id="questionTypeSum" type="hidden" value="<s:property value="questionTypeList.size()"/>">
                <table id="table-navbar" style="margin: 0; position: fixed; background-color: white;width: 100%;display: none; text-align: left">
                    <tr class="line nav-line">
                        <td>
                                【输入提示：1.从不 、2.偶尔、3.很少、4.有时、5.经常、6.总是 、9.不适用】
                        </td>
                    </tr>
                </table>

                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr id="tr-title">
                            <td colspan="3">
                                【输入提示：1.从不 、2.偶尔、3.很少、4.有时、5.经常、6.总是 、9.不适用】
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>序号</td>
                            <td>题目</td>
                            <td>答案</td>
                        </tr>
                        
                            <s:iterator value="questionList" var="question">
                                
                                    <tr class="question <s:property value="#question.type"/> ">
                                        <td>
                                            <s:property value="#question.ordinal"/>
                                        </td>
                                        <td style="width:60%">
                                            <s:property value="#question.description"/>
                                        </td>
                                        <td class="type-<s:property value="#question.type"/> ">
                                            <select class="answer-<s:property value="#question.ordinal"/> form-control ">
                                                <option value="0">-请选择-</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="9">9</option>
                                            </select>
                                        </td>
                                    </tr>
                               
                            </s:iterator>
                        
                    </tbody>
                </table>
            </div>
            <div style="margin-bottom: 73px;">
                <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a>
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    
    // 活动水平
    // 节律性
    // 趋避性
    // 适应性
    // 反应强度
    // 情绪本质
    // 坚持度
    // 注意分散度
    // 反应阈   
    ;(function () {
        
        var $tableNavbar = $('#table-navbar');
        var $tableMain = $('#table-main');
        var $title = $('#tr-title');
        $tableNavbar.width($('.panel').width());
        $tableNavbar.css('top', $('.navbar').height() + 1);
        $tableNavbar.hide();
        var pos = $tableMain.offset().top - $('nav').height();
        $(document).scroll(function () {
            var dataScroll = $tableNavbar.data("scroll") || false;
            if($(this).scrollTop() >= pos) {
                if (!dataScroll) {
                    $tableNavbar.data("scroll", true);
                    $tableNavbar.show();
                    $title.hide();
                }
            } else {
                if (dataScroll) {
                    $tableNavbar.data("scroll", false);
                    $tableNavbar.hide();
                    $title.show();
                }
            }
        })
    })();

    var questionSum = $('#questionSum').val();
    var questionScore = [0,0,0,0,0,0,0,0,0,0];
    var days = $('#days').val();
    
    function isRevert(n) {
        var key = -1;
        if (days >= 1 && days <= 4) {
            key = [1,2,4,7,10,11,15,16,20,22,25,28,31,34,35,43,44,48,51,52,53,56,57,62,65,66,70,71,72,73,74].indexOf(n)
            if (key!= -1) {
                return true
            }
        }

        if (days >= 5 && days <= 11) {
            key = [1,2,4,5,6,7,9,10,12,13,16,21,22,23,24,26,27,28,29,30,32,39,41,44,45,47,49,50,53,55,56,58,59,60,61,62,63,72,73,75,79,80,81,82,84,85,86,87,89,92,94].indexOf(n)

            if (key!= -1) {
                return true
            }
        }

        if (days >= 12 && days <= 36) {
            key = [1,3,4,5,11,12,13,15,16,18,21,23,26,28,30,31,32,37,38,39,41,43,45,50,55,56,57,59,60,62,63,64,65,66,67,70,71,73,75,76,77,79,80,82,85,90,91,92,96].indexOf(n)

            if (key!= -1) {
                return true
            }
        }


        if (days >= 37 && days <= 84) {
            key = [2,3,5,6,11,12,13,17,19,23,25,26,27,28,29,31,35,36,37,40,43,44,47,49,52,54,56,61,62,63,67,73,79,83,84,90,91,93].indexOf(n)

            if (key!= -1) {
                return true
            }
        }

        if (days >= 85 && days <= 114) {
            key = [10,11,13,14,15,16,17,20,21,22,32,40,41,42,43,44,46,47,49,50,51,52,53,54,69,72,73,74,75,76,77,78,79,80,81,83,84,85,99].indexOf(n)

            if (key!= -1) {
                return true
            }
        }


        return false;
    }


    function prepare() {
        questionScore = [0,0,0,0,0,0,0,0,0,0];
        var  temp;
        var  type;
        $('.question').removeClass('noanswer');
        // 去掉所有没有答的题的样式
        for(var i = 1; i <= questionSum; i++) {
            temp = $(".answer-" + i).val();
            if (temp === '0') {
                // 标注所有没有答的题
                for (var j = i; j <= questionSum; j++) {
                    if ($(".answer-" + j).val() === '0') {
                        $(".answer-" + j).parents('tr').addClass('noanswer');
                    }
                }
                $.tipModal('alert', 'warning', '有题目未完成！');
                return false;
            }

        }


        for (var k = 1; k <= questionSum; k++) {
            temp = $(".answer-" + k).val();
            if(temp==""||temp==undefined){
                continue;
            }
            type = $(".answer-" + k).parents('td').attr("class");
            //转换temp
            temp = parseInt(temp);

            if (temp === 0) {
                continue
            }
            if (temp === 9) {
                temp = 3.5 
            } else if(isRevert(k)) {
                temp = 7 - temp;
            } else {
                temp = temp;
            }

            if(type.indexOf('type-71') != -1){
                questionScore[1] += temp;
                continue;
            }
            if(type.indexOf('type-72')!= -1){
                questionScore[2] += temp;
                continue;
            }
            if(type.indexOf('type-73')!= -1){
                questionScore[3] += temp;
                continue;
            }
            if(type.indexOf('type-74')!= -1){
                questionScore[4] += temp;
                continue;
            }
            if(type.indexOf('type-75')!= -1){
                questionScore[5] += temp;
                continue;
            }
            if(type.indexOf('type-76')!= -1){
                questionScore[6] += temp;
                continue;
            }
            if(type.indexOf('type-77')!= -1){
                questionScore[7] += temp;
                continue;
            }
            if(type.indexOf('type-78')!= -1){
                questionScore[8] += temp;
                continue;
            }
            if(type.indexOf('type-79')!= -1){
                questionScore[9] += temp;
                continue;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_resultQiZhi.jsp'});
        }
    }



    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = "{";
                    var type1Len = $('.type-71').length;
                    var type2Len = $('.type-72').length;
                    var type3Len = $('.type-73').length;
                    var type4Len = $('.type-74').length;
                    var type5Len = $('.type-75').length;
                    var type6Len = $('.type-76').length;
                    var type7Len = $('.type-77').length;
                    var type8Len = $('.type-78').length;
                    var type9Len = $('.type-79').length;

                    data += "'resultQiZhi.a1':" + parseFloat(questionScore[1]/ type1Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a2':" + parseFloat(questionScore[2]/ type2Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a3':" + parseFloat(questionScore[3]/ type3Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a4':" + parseFloat(questionScore[4]/ type4Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a5':" + parseFloat(questionScore[5]/ type5Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a6':" + parseFloat(questionScore[6]/ type6Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a7':" + parseFloat(questionScore[7]/ type7Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a8':" + parseFloat(questionScore[8]/ type8Len).toFixed(2) + ",";
                    data += "'resultQiZhi.a9':" + parseFloat(questionScore[9]/ type9Len).toFixed(2) + ",";
                    

                    data += "'resultQiZhi.babyId':" + $("#babyid").val() + ",";
                    var answerRelation = $("#answerRelation").val();
                    answerRelation= " ' "+ answerRelation +" ' ";
                    data += "'resultQiZhi.answerRelation':" + answerRelation + "}";

                    $.ajax({
                        url: 'saveresultQiZhi',
                        type: 'post',
                        data: eval('(' + data + ')'),
                        success:function (json) {
                            window.location = "showresultQiZhi?id=" + json.resultQiZhi.id;
                        }
                    })
                }
            });
        }
    }

</script>
</body>
</html>