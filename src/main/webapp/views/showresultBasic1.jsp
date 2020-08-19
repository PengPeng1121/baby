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

        <input id="babyid" type="hidden" value="<s:property value="resultBasic1.babyid"/>">
        <input id="nickName" type="hidden" value="<s:property value="resultBasic1.nickName"/>">
        <input id="address" type="hidden" value="<s:property value="resultBasic1.address"/>">
        <input id="contactMobile" type="hidden" value="<s:property value="resultBasic1.contactMobile"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg2Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg2Girl.jpg">
                    </s:if>



                    <img style="width: 120px;position: absolute;z-index: 1;top: 270px;left: 400px;" src="statics/img/hemaBg2Girl.jpg">

                    <table style="width: 55%;
                        border: 0;
                        position: relative;
                        top: 200px;
                        left: 470px;
                        font-size: 16px">
                        <tr>

                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <span>
                                    <s:property value="baby.name"/>
                                </span>
                            </td>
                            
                        </tr>

                        <tr>
                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 10px">小</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <span>
                                    <s:property value="resultBasic1.nickName"/>
                                </span>
                            </td>
                            
                        </tr>

                        <tr>
                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 10px">性</span>
                                <span style="letter-spacing: 1px">别:</span>
                                <span>
                                    <s:if test="baby.gender == 1">男</s:if><s:else>女</s:else>
                                </span>
                            </td>
                        </tr>

                        <tr>
                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 1px">出生日期:</span>
                                <span>
                                    <s:date name="baby.birthday" format="yyyy-MM-dd"/>
                                </span>
                            </td>
                        </tr>
                    </table>

                    <table style="width: 55%;
                        border: 0;
                        position: relative;
                        top: 320px;
                        left: 470px;
                        font-size: 16px">
                        <tr>

                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 10px">民</span>
                                <span style="letter-spacing: 1px">族:</span>
                                <span>
                                    <s:property value="baby.nation"/>
                                </span>
                            </td>
                            
                        </tr>

                        <tr>
                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 10px">地</span>
                                <span style="letter-spacing: 1px">址:</span>
                                <span>
                                    <s:property value="resultBasic1.address"/>
                                </span>
                            </td>
                            
                        </tr>



                        <tr>
                            <td  style="font-weight: bold;">
                                <span style="letter-spacing: 1px">联系电话:</span>
                                <span>
                                    <s:property value="resultBasic1.contactMobile"/>
                                </span>
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


    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

