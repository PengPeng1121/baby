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
                    <div class="col-md-4" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">身高:</label>
                        <div class="col-md-9">
                           <input id="height" />cm
                        </div>
                    </div>
                    <div class="col-md-4" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">体重:</label>
                        <div class="col-md-9">
                           <input id="weight" />kg 
                        </div>
                    </div>
                    <div class="col-md-4" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">BMI:</label>
                        <div class="col-md-9">
                           <input onclick="calculate()" id="BMI" />
                        </div>
                    </div>
                    <div class="col-md-4" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">头围:</label>
                        <div class="col-md-9">
                           <input id="head" />CM
                        </div>
                    </div>
                </div>
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



    //月龄
    var days = parseInt($('#days').val());




    function preview() {
            $.frontModal({size: 'modal-md', title: '预览', href: 'modals/model_preview_result_group.jsp'});
        
    }

    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }

    function calculate() {
        var bmi,
            height,
            weight;
        height = parseFloat($("#height").val());
        heightM = height / 100;
        weight = parseFloat($("#weight").val());
        bmi = (weight / Math.pow(heightM,2)).toFixed(2);

        $("#BMI").val(bmi);

    }
    function score() {
        var bmi,
            height,
            weight;
        height = parseFloat($("#height").val());
        weight = parseFloat($("#weight").val());
        bmi = $("#BMI").val();
        head = $("#head").val();

        var data = "{";
        data += "'resultGroup2020.babyId':" + $("#babyid").val() + ",";
        data += "'resultGroup2020.height':" + height + ",";
        data += "'resultGroup2020.weight':" + weight + ",";
        if (bmi) {
            data += "'resultGroup2020.bmi':" + bmi + ",";
        }

        if (head) {
            data += "'resultGroup2020.head':" + head + ",";
        }
        
        data += "}";
        
        $.ajax({
            url: 'saveresultGroup2020',
            type: 'post',
            data: eval('(' + data + ')'),
            success:function (json) {
                window.location = "showresultGroup2020?id=" + json.resultGroup2020.id;
            }
        })
    }


</script>

</body>
</html>