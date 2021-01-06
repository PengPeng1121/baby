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
        .cross{
            background-color: #87d4da;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">儿童智商.注意力评估及指导</h1>
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
                
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="text-align: center;">
                            <td style="width: 200px" colspan="2" rowspan="2">
                                项目
                            </td>
                            <td style="width: 400px" colspan="4">
                                程度
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td style="width: 100px">
                                良好
                            </td>
                            <td style="width: 100px">
                                正常
                            </td>
                            <td style="width: 100px">
                                需要提升
                            </td>
                            <td style="width: 100px">
                                筛查
                            </td>
                        </tr>
                        <tr class="question">
                            <td style="" rowspan="4"> 
                                注意力
                            </td>
                            <td style=""> 
                                抗干扰
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-1 a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-1 b hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-1 c hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-1 d hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                        </tr>
                        <tr class="question">
                            <td style=""> 
                                转移
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-2 a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-2 b hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-2 c hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-2 d hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                        </tr>
                        <tr class="question">
                            <td style=""> 
                                分配
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-3 a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-3 b hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-3 c hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-3 d hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                        </tr>
                        <tr class="question">
                            <td style=""> 
                                广度
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-4 a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-4 b hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-4 c hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                            <td style="" onclick="select(this)">
                                <span class="answer-4 d hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                </span>
                            </td>
                        </tr>
                        <tr class="question">
                            <td style=""> 
                                智商
                            </td>
                            <td colspan="4"> 
                                <input id="score" style="width: 100%" /> 
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>


            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">指导建议</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-12">
                        <textarea rows="10"  id="remark" style="width: 800px"></textarea>
                    </div>
                </div>
            </div>


            <div style="margin-bottom: 73px;">
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">



    var questionSum = 26;
    var questionScore = [0,0,0,0,0,0];
    var resultArr = [0,0,0,0,0]
    var resultMap = {
        a: 0,
        b: 1,
        c: 2,
        d: 3
    }


    function prepare() {
        return true;
    }


    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    var data = {};
                    var remark = $('#remark').val();
                    var score = parseInt($('#score').val());
                    var babyid = parseInt($('#babyid').val());
                    data['resultAttention.a1'] = resultArr[0];
                    data['resultAttention.a2'] = resultArr[1];
                    data['resultAttention.a3'] = resultArr[2];
                    data['resultAttention.a4'] = resultArr[3];
                    data['resultAttention.a5'] = 0;
                    data['resultAttention.suggest'] = remark;
                    data['resultAttention.score'] = score;
                    data['resultAttention.babyId'] = babyid;
                    
                    

                    $.ajax({
                        url: 'saveresultAttention',
                        type: 'post',
                        data: data,
                        success:function (json) {
                            var rId = json.resultAttention.id;
                            var refreshData = {
                                babyid: $("#babyid").val(),
                                testId: 52,
                                resultId: rId
                            };
                            $.ajax({
                                url: 'refreshExamTime',
                                type: 'post',
                                data: refreshData,
                                success:function (json) {
                                    console.log('更新时间成功');
                                    window.location = "showresultAttention?id=" + rId;
                                }
                            })
                            // window.location = "showresultAttention?id=" + json.resultAttention.id;
                        }
                    })
                }
            });
        }
    }

    function select(target) {
        var $target = $(target);
        var $span = $target.find('span');
        var $parent = $target.parent();
        var $span1 = $($parent.find('span')[0]);
        var $span2 = $($parent.find('span')[1]);
        var $span3 = $($parent.find('span')[2]);
        var $span4 = $($parent.find('span')[3]);
        
        // 去掉原有选项
        $span1.addClass('hide').removeClass('show');
        $span2.addClass('hide').removeClass('show');
        $span3.addClass('hide').removeClass('show');
        $span4.addClass('hide').removeClass('show');
        
        $span.addClass('show').removeClass('hide');
        var questionIndex = $span.attr('class').split(' ')[0].replace('answer-', '');
        var value = resultMap[$span.attr('class').split(' ')[1]]
        resultArr [questionIndex-1] = value
        console.log(resultArr)
    }

</script>
</body>
</html>
