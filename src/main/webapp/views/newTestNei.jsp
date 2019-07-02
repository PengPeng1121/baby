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


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">中国比内测验</h1>
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
                <!-- 问题列表 -->
                <input id="questionSum" type="hidden" value="<s:property value="questionList.size()"/>">
                <!-- 每组问题的个数 -->
                <input id="questionMonthSum" type="hidden" value="<s:property value="questionMonthList.size()"/>">
                <!-- type  题目类型 -->
                <input id="questionTypeSum" type="hidden" value="<s:property value="questionTypeList.size()"/>">
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <th style="width:30px">No.</th>
                            <th style="width:400px">测试题目</th>
                            <th style="width:50px">计时器</th>
                            <th style="width:50px">符合</th>
                            <th style="width:50px">不符合</th>
                            <th style="width:100px">备注</th>
                            <th style="width:100px">指导语</th>
                        </tr>
                        <s:iterator value="questionList" var="question" status='st'>
                            <tr class="question">
                                <td  class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>
                                <td >
                                    <s:property value="#question.description"/>
                                </td>

                                <td style="cursor: pointer">
                                    <span class="<s:property value="#question.ordinal"/> time" onclick="showTime(this, <s:property value="#question.extend1"/>, <s:property value="#question.ordinal"/> )">
                                        计时开始
                                    </span>
                                </td>

                                <td style="cursor: pointer" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide glyphicon glyphicon-ok" style="top: 4px; color: green; text-align:center">
                                    </span>
                                </td>
                                <td style="cursor: pointer" onclick="select(this, <s:property value="#question.ordinal"/>)">
                                    <span class="<s:property value="#question.ordinal"/> b hide  glyphicon glyphicon-remove" style="top: 4px; color: red; text-align:center">
                                    </span>
                                </td>
                                <td >
                                    <input  id="reason<s:property value="#question.ordinal"/>"/>
                                    
                                </td>

                                <td  >
                                    <a type="button" class="<s:property value="#question.ordinal"/>  btn btn-primary pull-left"  onclick="showInstruction(this, <s:property value="#question.ordinal"/>)">查看指导语</a>
                                </td>
                            </tr>
                            
                            <tr class="questionExtend">
                                <td colspan="2"  class="<s:property value="#question.ordinal"/> instruction">
                                    
                                    <s:property value="#question.instruction"/>

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

    var content = ''

    var inter = []
    function showTime(target, time, id) {
        var $target = $(target);
        $target.text(time)
        var interID = setInterval(function(){
            if (time > 0) {
                time = time - 1
                $target.text(time)
            } else {
                $target.text('重新计时')
            }
        }, 1000)
        inter.push(interID)
    }


    //月龄
    var days = parseInt($('#days').val());
    var falseCount = 0;
    var questionSum = $('#questionSum').val();
    var questionScore = [0,0];
    var questionReason = [questionSum];
    var startNow = 0;
    // 当前开始题目
    // 当前高亮年龄段



    function prepare() {
        questionScore = [0,0];
        $('.question').removeClass('noanswer');
        count();
        return true;
    }

    function count() {
        for (var i = 1; i <= questionSum; i++) {
            temp = $('.' + i + '.show').attr('class');
            if(temp==""||temp==undefined){
                continue;
            }
            if (temp.indexOf('a') != -1) {
                temp = 1;
            } else {
                temp = 0;
            }
            questionScore[1] += temp;
            questionReason[i] = $("#reason" + (i)).val() || '';
        }

        if (24 <days && days< 72) {
            questionScore[1] += 0;
        } else if (days < 96) {
            questionScore[1] += 6;
        } else if (days < 108) {
            questionScore[1] += 9;
        } else if (days < 120) {
            questionScore[1] += 13;
        } else if (days < 132) {
            questionScore[1] += 17;
        } else if (days < 144) {
            questionScore[1] += 19;
        } else if (days < 168) {
            questionScore[1] += 21;
        }else if (days < 192) {
            questionScore[1] += 22;
        } else if (days < 216) {
            questionScore[1] += 23;
        }

        


    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_nei.jsp'});
        }
    }

    function showInstruction(target, id) {
        content = $('.instruction.'+id).html()
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '指导语', href: 'modals/model_instruction.jsp'});
        }
    }


    // 滚到指定位置
    $(function(){
        
        var top = 0;

        if (24 <days && days< 72) {
            startNow = 1;
        } else if (days < 96) {
            startNow = 7;
        } else if (days < 108) {
            startNow = 10;
        } else if (days < 120) {
            startNow = 14;
        } else if (days < 132) {
            startNow = 18;
        } else if (days < 144) {
            startNow = 20;
        } else if (days < 168) {
            startNow = 22;
        }else if (days < 192) {
            startNow = 23;
        } else if (days < 216) {
            startNow = 24;
        }

        $('#order' + startNow).parent().addClass('start');
        top = $('#order' + startNow).parent().offset().top;
        setTimeout(function() {
            window.scrollTo(0,top - 94 - 68 * (startNow-1));
        }, 300)

        $('.instruction').addClass('hide')
        
        
    })

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    questionScore = [0,0];
                    score();
                }
            });
        }
    }
    function score() {
        count();
        var data = "{";
        data += "'resultNei.totalScore':" + questionScore[1] + ",";
        data += "'resultNei.babyId':" + $("#babyid").val() + ",";
        for(var i = 1; i <= questionSum; i++) {
            data += "'resultNei.reason" + (i) + "':'" + questionReason[i] + "',"
        }
        data += "}";
        $.ajax({
            url: 'saveresultNei',
            type: 'post',
            data: eval('(' + data + ')'),
            success:function (json) {
                window.location = "showresultNei?id=" + json.resultNei.id;
            }
        })
    }




    function select(target, id) {
        var $target = $(target);
        for (var i = 0, len = inter.length; i < len; i++) {
            clearInterval(inter[i])
        }

        $(target).parent().find('.a').addClass('hide').removeClass('show');
        $(target).parent().find('.b').addClass('hide').removeClass('show');
        $(target).find('span').removeClass('hide').addClass('show');

        //获取当前题目的序号
        var value = $(target).find('span').attr('class');

        if (value.indexOf('a') != -1) {
            falseCount = 0;
        } else {
            falseCount += 1;
        }

        if (falseCount >= 5) {
            setTimeout(function(){
                alert('测试结束');
                score();
            }, 300);
        } 
        
    }



</script>

</body>
</html>