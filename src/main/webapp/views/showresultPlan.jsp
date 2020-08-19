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

        <input id="babyid" type="hidden" value="<s:property value="resultPlan.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultPlan.id"/>">

        <input id="ownWish" type="hidden" value="<s:property value="resultPlan.ownWish"/>">
        <input id="doctorWish" type="hidden" value="<s:property value="resultPlan.doctorWish"/>">
        <input id="healthPlan" type="hidden" value="<s:property value="resultPlan.healthPlan"/>">
        <input id="futureDirection" type="hidden" value="<s:property value="resultPlan.futureDirection"/>">

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


                    <table style="width: 590px; height:100px;border:0;font-size: 16px; position: absolute;top: 300px;left: 490px" id="content-table">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="ownWishText"></textarea>
                            </td>
                        </tr>
                    </table>


                    <table style="width: 590px; height:100px;border:0;font-size: 16px; position: absolute;top: 500px;left: 490px" id="content-table">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="doctorWishText"></textarea>
                            </td>
                        </tr>
                    </table>


                    <table style="width: 590px; height:100px;border:0;font-size: 16px; position: absolute;top: 700px;left: 490px" id="content-table">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="healthPlanText"></textarea>
                            </td>
                        </tr>
                    </table>


                    <table style="width: 590px; height:100px;border:0;font-size: 16px; position: absolute;top: 900px;left: 490px" id="content-table">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;" id="futureDirectionText"></textarea>
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
    var ownWish = $('#ownWish').val();
    var doctorWish = $('#doctorWish').val();
    var healthPlan = $('#healthPlan').val();
    var futureDirection = $('#futureDirection').val();



    var reg = new RegExp("<br>","g");//g,表示全部替换。
    ownWish = ownWish.replace(reg,"\n");
    $('#ownWishText').html(ownWish);

    
    doctorWish = doctorWish.replace(reg,"\n");
    $('#doctorWishText').html(doctorWish);


    
    healthPlan = healthPlan.replace(reg,"\n");
    $('#healthPlanText').html(healthPlan);


    
    futureDirection = futureDirection.replace(reg,"\n");
    $('#futureDirectionText').html(futureDirection);

    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

