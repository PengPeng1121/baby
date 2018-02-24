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
        .start{
            background-color: #79eef7;
        }
        .startLetter{
            background-color: #fff !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">婴幼儿认知测定</h1>
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
                        <label class="col-md-3 front-label">早产天数</label>
                        <label class="col-md-3 front-label"><s:property value="preDelivery"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">检查日期</label>
                        <label class="col-md-3 front-label"><%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%></label>
                    </div>
                    
                </div>
            </div>
            
            <div class="panel panel-default front-panel">
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <!-- 起点 -->
                <input id="start" type="hidden" value="<s:property value="start"/>">
                <input id="name" type="hidden" value="<s:property value="baby.name"/>">
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
                            <td>起点</td>
                            <td>No.</td>
                            <td>项目</td>
                            <td colspan="2">得分</td>
                            <td>备注</td>
                        </tr>
                        <s:iterator value="questionList" id="question" status='st'>
                            <tr class="question">
                                <s:if test="#question.ordinal == 1">
                                    <td style="width:30px" rowspan="2" class="startLetter">
                                        A
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 3">
                                    <td style="width:30px" rowspan="4" class="startLetter">
                                        BC
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 7">
                                    <td style="width:30px" rowspan="9" class="startLetter">
                                        D
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 16">
                                    <td style="width:30px" rowspan="3" class="startLetter">
                                        E
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 19">
                                    <td style="width:30px" rowspan="3" class="startLetter">
                                        F
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 22">
                                    <td style="width:30px" rowspan="3" class="startLetter">
                                        G
                                    </td>
                                </s:if>

                                <s:if test="#question.ordinal == 25">
                                    <td style="width:30px" rowspan="6" class="startLetter">
                                        H
                                    </td>
                                </s:if>

                                <s:if test="#question.ordinal == 31">
                                    <td style="width:30px" rowspan="3" class="startLetter">
                                        I
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 34">
                                    <td style="width:30px" rowspan="6" class="startLetter">
                                        J
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 40">
                                    <td style="width:30px" rowspan="5" class="startLetter">
                                        K
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 45">
                                    <td style="width:30px" rowspan="11" class="startLetter">
                                        LM
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 56">
                                    <td style="width:30px" rowspan="4" class="startLetter">
                                        N
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 60">
                                    <td style="width:30px" rowspan="3" class="startLetter">
                                        O
                                    </td>
                                </s:if>
                                <s:if test="#question.ordinal == 63">
                                    <td style="width:30px" rowspan="4" class="startLetter">
                                        P
                                    </td>
                                </s:if>

                                <s:if test="#question.ordinal == 67">
                                    <td style="width:30px" rowspan="25" class="startLetter">
                                        Q
                                    </td>
                                </s:if>


                                <td style="width:30px"  class="order" id="order<s:property value="#question.ordinal"/>">
                                    <s:property value="#question.ordinal"/>
                                </td>

                                <td style="width:400px">
                                    <s:property value="#question.description"/>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> a hide" style="top: 4px; color: green;text-align:center">
                                        A
                                    </span>
                                </td>
                                <td style="width:30px" onclick="select(this)">
                                    <span class="<s:property value="#question.ordinal"/> b hide" style="top: 4px; color: red; text-align: center">
                                        B
                                    </span>
                                </td>
                                <td style="width:10px">
                                    <input  id="desc<s:property value="#question.ordinal"/>"/>
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

    ;(function () {
    })();
    var starts = {
        'A': '1',
        'B': '3',
        'C': '3',
        'D': '7',
        'E': '16',
        'F': '19',
        'G': '22',
        'H': '25',
        'I': '31',
        'J': '34',
        'K': '40',
        'L': '45',
        'M': '45',
        'N': '56',
        'O': '60',
        'P': '63',
        'Q': '67'
    };
    var questionSum = $('#questionSum').val();
    var questionMonthSum = $('#questionMonthSum').val();
    var questionTypeSum = $('#questionTypeSum').val();
    var questionScore = [0,0,0,0,0,0,0,0];
    var questionReason = [questionSum];
    var questionReasonDesc = [questionSum];
    var name = $('#name').val();
    var days = $('#days').val();
    var start = $('#start').val() || 'E';
    var startNow = 0;
    var flag = 1;
    var countTrue = 0;
    var countFalse = 0;


    function failReasons(ordinal, reasons) {

        $('#failMessage' + ordinal).css("color","#ff0049");

        $.frontModal({
            href: "modals/modal_question_reasons_cognize.jsp?reasons=" + reasons + "&qid="+ordinal,
            title: "请选择答案："
        }).on('shown.bs.modal', function () {
            $("#qid").val(ordinal);
        });
    }

    function prepare() {
        questionScore = [0,0,0,0,0,0,0,0];
        var  temp;
        $('.question').removeClass('noanswer');
        for (var i = 1; i <= questionSum; i++) {
            temp = $.trim($('.' + i + '.show').text());
            if (temp == 'A') {
               questionScore[1] += 1;
            }
        }
        return true;
    }

    function preview() {
        if(prepare()) {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_cognize.jsp'});
        }
    }

    $(function(){
        var s = $("input[type='checkbox']");
        s.each(function(i) {
//          alert(i);
            $(this).click(function(){
                if(this.checked==true){
                    var id = this.id;
                    var idNum = id.charAt(id.length-1);
                    $("#failMessage" + idNum).css("color","#337ab7");
                }
            });
        });

        //根据月龄判断跳转到起点
        startNow = parseInt(starts[start]);
        var offset = $('#order' + startNow).offset();
        var y = offset.top - 50;
        setTimeout(function() {
            window.scrollTo(0,y);
            $('.question').removeClass('start');
            $('#order' + startNow).parent().addClass('start');
        }, 500)
        
    })

    function save() {
        if(prepare()) {
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        }
    }

    function score() {
        var data = "{";

        //每个题的原因
        for(var i = 0; i < questionSum; i++) {
            questionReason[i] = $("#reason" + (i + 1)).val() || '';
        }

        for(var i = 0; i < questionSum; i++) {
            if((questionReason[i] != null)&&(questionReason[i] != '')){
                data += "'resultCognize.reason" + (i + 1) + "':'" + questionReason[i] + "',"
            }
        }

        // 每个题的详细原因
        // for(var i = 0; i < questionSum; i++) {
        //     questionReasonDesc[i] = $("#desc" + (i + 1)).val() || '';
        // }

        // for(var i = 0; i < questionSum; i++) {
        //     data += "'result_cognize.desc" + (i + 1) + "':'" + questionReasonDesc[i] + "',"
        // }




        data += "'resultCognize.score':" + questionScore[1] + ",";
        

        data += "'resultCognize.babyId':" + $("#babyid").val() + "}";
        

        $.ajax({
            url: 'saveresultcognize',
            type: 'post',
            data: eval('(' + data + ')'),
            success:function (json) {
                window.location = "showresultcognize?id=" + json.resultCognize.id;
            }
        })
    }

    function select(target) {
        var $target = $(target);
        //获取当前题目的序号
        var orderIndex = parseInt($.trim($target.parent().find('.order').text()));
        $(target).parent().find('.a').addClass('hide').removeClass('show');
        $(target).parent().find('.b').addClass('hide').removeClass('show');
        $(target).find('span').removeClass('hide').addClass('show');



        var value = $(target).find('span').attr('class');


        var prevClass1 = '';
        var prevClass2 = '';

        countTrue = 0;
        countFalse = 0;


        if (value.indexOf('a') != -1) {
            countTrue += 1;
        } else {
            countFalse += 1;
            //判断是不是在前三
            if (orderIndex < (startNow + 3) && flag) {
            //跳转到上一级
                var startIndex = start.charCodeAt();
                start = String.fromCharCode(startIndex - 1);
                startNow = parseInt(starts[start]);

                $('.question').removeClass('start');
                $('#order' + startNow).parent().addClass('start');
                var offset = $('#order' + startNow).offset();
                var y = offset.top - 50;
                window.scrollTo(0,y);
                flag = 0;
            }
        }

        for (var i = 1; i < 5; i++) {
            prev = orderIndex - i ;
            prevClass1 = $('.' + prev + '.a').attr('class');
            prevClass2 = $('.' + prev + '.b').attr('class');
            if ( prevClass1.indexOf('show') != -1){
                countTrue += 1;
            } 
            if ( prevClass2.indexOf('show') != -1){
                countFalse += 1;
            }
        }


        if (countFalse == 5) {
            setTimeout(function(){
                alert('测试结束');
                for (var i = 1; i <= questionSum; i++) {
                    temp = $.trim($('.' + i + '.show').text());
                    if (temp == 'A') {
                       questionScore[1] += 1;
                    }
                }
                score();
            }, 300);
        }


    }

</script>

</body>
</html>