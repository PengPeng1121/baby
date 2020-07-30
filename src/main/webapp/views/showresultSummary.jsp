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
        body, table, tbody, tr, td {
            background-color: transparent;
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
        #content-table{
            left: 100px !important;
            top: 240px !important;
        }
        #date{
            left: 550px !important;
            top: 900px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultSummary.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultSummary.id"/>">
        <input id="remark" type="hidden" value="<s:property value="resultSummary.summary"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg5Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg5Girl.jpg">
                    </s:if>

                    <table style="width: 55%;
                        border: 0;
                        position: relative;
                        top: 120px;
                        left: 70px;
                        font-size: 16px">
                        <tr>

                            <td class="col-md-2" style="font-weight: bold;">
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                            </td>
                            <td class="col-md-3" style="border-bottom: 1px solid #df938f;padding-left: 0px"><s:property value="baby.name"/></td>

                            <td class="col-md-2 col-offset-2" style="font-weight: bold;">
                                <span style="letter-spacing: 1px">出生日期:</span>
                            </td>
                            <td class="col-md-3" style="border-bottom: 1px solid #df938f;padding-left: 0px"><s:date name="baby.birthday" format="yyyy-MM-dd"/></td>

                        </tr>
                    </table>

                    <table style="width: 590px; height:660px;border:0;font-size: 16px; position: absolute;top: 300px;left: 210px" id="content-table">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="remarkText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p id="date" style="
                        position: absolute;
                        top: 1000px;
                        left: 700px;
                        font-weight: bold;
                        font-size: 16px;
                    ">
                        <s:date name="resultSummary.summaryDate" format="yyyy-MM-dd"/>
                    </p>
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
    var remark = $('#remark').val();


    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remark = remark.replace(reg,"\n");
    $('#remarkText').html(remark);

    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

