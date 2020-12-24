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

            <input id="heightOld" type="hidden" value="<s:property value="resultGroup2020.height"/>">
            <input id="weightOld" type="hidden" value="<s:property value="resultGroup2020.weight"/>">
            <input id="bmiOld" type="hidden" value="<s:property value="resultGroup2020.bmi"/>">
            <input id="headOld" type="hidden" value="<s:property value="resultGroup2020.head"/>">
            <input id="resultid" type="hidden" value="<s:property value="resultPhysical.id"/>">
            
            <div class="panel panel-default front-panel">
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
                <div class="panel-heading">测查数据:</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-6" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">身高:</label>
                        <div class="col-md-9">
                           <input id="height" />cm
                        </div>
                    </div>
                    <div class="col-md-6" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">体重:</label>
                        <div class="col-md-9">
                           <input id="weight" />kg 
                        </div>
                    </div>
                    <div class="col-md-6" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">BMI:</label>
                        <div class="col-md-9">
                           <input onclick="calculate()" id="BMI" />(自动计算)
                        </div>
                    </div>
                    <div class="col-md-6" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">头围:</label>
                        <div class="col-md-9">
                           <input id="head" />CM
                        </div>
                    </div>
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



    
    var heightOld = $('#heightOld').val();
    var weightOld = $('#weightOld').val();
    var bmiOld = $('#bmiOld').val();
    var headOld = $('#headOld').val();
    $('#height').val(heightOld);
    $('#weight').val(weightOld);
    $('#bmi').val(bmiOld);
    $('#head').val(headOld);




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

        var data = {};
        data['resultGroup2020.id'] = $("#resultid").val();
        data['resultGroup2020.babyid'] = $("#babyid").val();
        data['resultGroup2020.height'] = height;
        data['resultGroup2020.weight'] = weight;
        data['resultGroup2020.bmi'] = bmi;
        data['resultGroup2020.head'] = head;


        
        $.ajax({
            url: 'updateresultGroup2020',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultGroup2020.id;
                var refreshData = {
                    babyid: $("#babyid").val()
                }
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "showresultGroup2020?id=" + rId;
                    }
                })
                // window.location = "showresultGroup2020?id=" + json.resultGroup2020.id;
            }
        })
    }


</script>

</body>
</html>