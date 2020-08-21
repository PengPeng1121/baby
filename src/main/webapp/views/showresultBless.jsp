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
        #content-table{
            width: 450px; border:0;font-size: 16px; position: absolute;top: 550px;left: 550px
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

        #doctorName{
            left: 500px !important;
            top: 960px !important;
        }
        #babyName{
            left: 195px !important;
            top: 425px !important;
        }

        #content-table{
            top: 480px  !important;
            left: 195px  !important;
        }
        .info-girl{
            color: #e89893  !important;
        }
        .info-boy{
            color: #51627e  !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultBless.babyid"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        <input id="blessInfo" type="hidden" value="<s:property value="resultBless.blessInfo"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg10Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg10Girl.jpg">
                    </s:if>
                    

                    <p id="babyName" style="
                        position: absolute;
                        top: 495px;
                        left: 600px;
                        font-weight: bold;
                        font-size: 16px;
                        font-weight: bold;
                    ">
                        <s:property value="baby.name"/>
                    </p>



                    <p id="doctorName" style="
                        position: absolute;
                        top: 1030px;
                        left: 900px;
                        font-weight: bold;
                        font-size: 16px;
                    ">
                        <s:property value="resultBless.doctorName"/></td>
                    </p>

                    <s:if test="baby.gender == 1">
                    <table  id="content-table">
                        <tr>
                            <td>
                                <textarea rows="6" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;    letter-spacing: 2px;line-height: 30px;" id="blessInfoText" class="info-boy">
                                </textarea>
                            </td>
                        </tr>
                    </table>
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <table  id="content-table">
                        <tr>
                            <td>
                                <textarea rows="6" style="resize:none;border: 0;width: 100%;height: 100%; background-color: transparent;    letter-spacing: 2px;line-height: 30px;" id="blessInfoText" class="info-girl">
                                </textarea>
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
    var blessInfo = $('#blessInfo').val();


    var reg = new RegExp("<br>","g");//g,表示全部替换。
    blessInfo = blessInfo.replace(reg,"\n");
    $('#blessInfoText').html(blessInfo);

    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

