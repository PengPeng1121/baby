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
        #table-1{
            top: 400px;
        }
        #table-2{
            top: 500px;
        }
        #table-3{
            top: 600px;
        }
        #table-4{
            top: 700px;
        }
        #title-1{
            top: 380px;
        }
        #title-2{
            top: 480px;
        }
        #title-3{
            top: 580px;
        }
        #title-4{
            top: 680px;
        }
        .title-boy{
            position: absolute;
            letter-spacing: 6px;
            color: #51627e;
            left: 546px;
            font-size: 16px;
            font-weight: bold;
        }
        .title-girl{
            position: absolute;
            letter-spacing: 6px;
            color: #e89893;
            left: 546px;
            font-size: 16px;
            font-weight: bold;
        }
        .content{
            width: 590px; 
            height:100px;
            border:0;
            font-size: 16px; 
            position: absolute;
            left: 538px;
        }
        textarea{
            margin-top: 8px;
        }

        #table-info-boy{
            
            color: #51627e ;
        }

        #table-info-girl{
            
            color: #e89893 ;
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
        .title-girl{
            
            left: 170px !important;
            color: #e89893 !important;
            
        }

        .title-boy{
            
            left: 170px !important;
            color: #51627e !important;
            
        }

        .content{
            
            left: 160px !important;
        }



        #table-1{
            top: 300px !important;
        }
        #table-2{
            top: 400px !important;
        }
        #table-3{
            top: 500px !important;
        }
        #table-4{
            top: 600px !important;
        }
        #title-1{
            top: 280px !important;
        }
        #title-2{
            top: 380px !important;
        }
        #title-3{
            top: 480px !important;
        }
        #title-4{
            top: 580px !important;
        }

        #table-info-boy{
            width: 80% !important;
            color: #51627e !important;
        }

        #table-info-girl{
            width: 80% !important;
            color: #e89893 !important;
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
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg9Boy.jpg">

                    <table style="width: 50%;
                        border: 0;
                        position: relative;
                        top: 208px;
                        left: 150px;
                        font-size: 16px;"
                        id="table-info-boy">
                        <tr>
                            <td style="width: 50%; padding-left: 15px">
                                <span style="letter-spacing: 18px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <span>
                                    <s:property value="baby.name"/>
                                </span>
                            </td>
                            <td>
                                <span style="letter-spacing: 18px">性</span>
                                <span style="letter-spacing: 1px">别:</span>
                                <span>
                                    <s:if test="baby.gender == 1">男</s:if><s:else>女</s:else>
                                </span>
                            </td>
                            
                        </tr>
                    </table>


                    <p class="title-boy" id="title-1">自己的愿望:</p>
                    <table class="content" id="table-1">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="ownWishText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p class="title-boy" id="title-2">医生的祝愿:</p>
                    <table class="content" id="table-2">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="doctorWishText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p class="title-boy" id="title-3">医生的祝愿:</p>
                    <table class="content" id="table-3">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="healthPlanText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p class="title-boy" id="title-4">建议未来发展方向:</p>
                    <table class="content" id="table-4">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="futureDirectionText"></textarea>
                            </td>
                        </tr>
                    </table>


                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg9Girl.jpg">

                    <table style="width: 50%;
                        border: 0;
                        position: relative;
                        top: 208px;
                        left: 150px;
                        font-size: 16px;
                        "
                        id="table-info-girl">
                        <tr>
                            <td style="width: 50%; padding-left: 15px">
                                <span style="letter-spacing: 18px">姓</span>
                                <span style="letter-spacing: 1px">名: </span>
                                <span>
                                     <s:property value="baby.name"/>
                                </span>
                            </td>
                            <td>
                                <span style="letter-spacing: 18px">性</span>
                                <span style="letter-spacing: 1px">别: </span>
                                <span>
                                     <s:if test="baby.gender == 1">男</s:if><s:else>女</s:else>
                                </span>
                            </td>
                            
                        </tr>
                    </table>


                    <p class="title-girl" id="title-1">自己的愿望:</p>
                    <table class="content" id="table-1">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="ownWishText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p class="title-girl" id="title-2">医生的祝愿:</p>
                    <table class="content" id="table-2">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="doctorWishText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p class="title-girl" id="title-3">医生的祝愿:</p>
                    <table class="content" id="table-3">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="healthPlanText"></textarea>
                            </td>
                        </tr>
                    </table>

                    <p class="title-girl" id="title-4">建议未来发展方向:</p>
                    <table class="content" id="table-4">
                        <tr>
                            <td>
                                <textarea rows="3" style="resize:none;border: 0;width: 80%;height: 100%; background-color: transparent;" id="futureDirectionText"></textarea>
                            </td>
                        </tr>
                    </table>


                    </s:if>


                    

                    
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

