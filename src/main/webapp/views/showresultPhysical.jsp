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
        .column-body{
            width: 500px;
            height: 240px;
            margin-left: 50px;
            margin-top: 5px;
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
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultPhysical.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultPhysical.id"/>">
        <input id="height" type="hidden" value="<s:property value="resultPhysical.hairIsNormal"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaGroupBgBoy.png">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaGroupBgGirl.png">
                    </s:if>
                    <table style="width: 800px; height:1060px;border:0;font-size: 16px;font-weight: bold; position: absolute;top: 130px;" id="content-table">
                        <tr>
                            <td>
                                毛发
                            </td>
                            <td>
                                <input type="radio" name="answer-1" value="1" />正常
                            </td>
                            <td>
                                <input type="radio" name="answer-1" value="0" />其他
                            </td>
                            <td>
                                <input id="answer-1-detail" />
                            </td>
                        </tr>
                    </table>
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
    var gender = $('#gender').val();
    var hairIsNormal,
        hairReason;
    

    var data = "{";
        data += "'babyId':" + babyid+ ",";
        data += "'resultId':" + resultid+ ",";
        data += "}";
    $.ajax({
        url: 'getPhysicalResult',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            hairIsNormal = json.hairIsNormal;
            hairReason = json.hairReason;
            draw();
        }
    })
    function draw () {

    }
    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

