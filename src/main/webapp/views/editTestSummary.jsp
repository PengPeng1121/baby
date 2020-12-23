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
        <input id="resultID" type="hidden" value="<s:property value="resultSummary.id"/>">

        <input id="remarkOld" type="hidden" value="<s:property value="resultSummary.summary"/>">
        <input id="summaryDateOld" type="hidden" value="<s:property value="resultSummary.summaryDate"/>">
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
            


            <textarea rows="30" style="width: 800px;resize:none;border: 0;position: relative;left: 170px;" id="remark"></textarea>


            <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 30%;position: relative;left: 170px">
                <tbody style="width: 100%">
                    <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                        <td>
                            总评日期
                        </td>
                        <td>
                            <input id="summaryDate" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                        </td>
                    </tr>
                </tbody>
            </table>


            
            
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


    var remarkOld = $('#remarkOld').val();


    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remarkOld = remarkOld.replace(reg,"\n");
    $('#remark').html(remarkOld);

    var summaryDateOld = $('#summaryDateOld').val();

    $('#summaryDate').cxCalendar();

    $('#summaryDate').val(summaryDateOld);
    
    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }


    function score() {
        var summaryDate = $("#summaryDate").val().trim();
        var summary = $('#remark').val();
        resultID = $("#resultID").val();

        var data = "{";
        data += "'resultSummary.babyId':" + $("#babyid").val();
        data += "}";
        
        data = eval('(' + data + ')');
        data['resultSummary.summaryDate'] = summaryDate;
        data['resultSummary.summary'] = summary;
        // 结果页ID
        data ['resultSummary.id'] = resultID;
        $.ajax({
            url: 'updateresultSummary',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultSummary.id;
                var refreshData = {
                    babyid: $("#babyid").val()
                }
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "showresultSummary?id=" + rId;
                    }
                })
                // window.location = "showresultSummary?id=" + json.resultSummary.id;
            }
        })
    }


</script>

</body>
</html>