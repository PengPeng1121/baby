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
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>
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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">体格头面检查</h1>
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



            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">自己的愿望</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-12">
                        <textarea rows="5"  id="ownWish"></textarea>
                    </div>
                </div>
            </div>

            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">医生的祝愿</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-12">
                        <textarea rows="5"  id="doctorWish"></textarea>
                    </div>
                </div>
            </div>


            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">健康规划</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-12">
                        <textarea rows="5"  id="healthPlan"></textarea>
                    </div>
                </div>
            </div>



            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">建议未来发展方向</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-12">
                        <textarea rows="5"  id="futureDirection"></textarea>
                    </div>
                </div>
            </div>
            





            
            
            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>

            <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
<script type="text/javascript">



    

    $('#summaryDate').cxCalendar();
    
    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }


    function score() {
        
        var ownWish = $('#ownWish').val();
        var doctorWish = $('#doctorWish').val();
        var healthPlan = $('#healthPlan').val();
        var futureDirection = $('#futureDirection').val();
        var data = "{";
        data += "'resultPlan.babyId':" + $("#babyid").val();
        data += "}";
        
        data = eval('(' + data + ')');
        data['resultPlan.ownWish'] = ownWish;
        data['resultPlan.doctorWish'] = doctorWish;
        data['resultPlan.healthPlan'] = healthPlan;
        data['resultPlan.futureDirection'] = futureDirection;
        $.ajax({
            url: 'saveresultPlan',
            type: 'post',
            data: data,
            success:function (json) {
                window.location = "showresultPlan?id=" + json.resultPlan.id;
            }
        })
    }


</script>

</body>
</html>