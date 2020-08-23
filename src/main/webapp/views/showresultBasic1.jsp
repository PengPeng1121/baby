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
        .line{
            border-bottom: 1px solid #df9390;
            height: 40px;
        }
        .line-img{
            width: 20px;
            z-index: 1;
            padding-bottom: 4px;
        }
        .value{
            margin-left: 10px;
        }
        #faceImg{
            width: 120px;
            position: absolute;
            z-index: 1;
            top: 290px;
            left: 460px;
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
        #faceImg{
            width: 120px !important;
            position: absolute !important;
            z-index: 1 !important;
            top: 220px !important;
            left: 100px !important;
        }
        #table1, #table2{
            width: 52% !important;
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
        <input id="contactMobile" type="hidden" value="<s:property value="resultBasic1.headImgUrl"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg2Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg2Girl.jpg">
                    </s:if>



                    <img id="faceImg" src="<s:property value="resultBasic1.headImgUrl"/>">

                    <table style="width: 38%;
                        border: 0;
                        position: relative;
                        top: 220px;
                        left: 270px;
                        font-size: 16px"
                        id="table1">
                        <tr  class="line">

                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/name1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/name2.png">">
                                </s:if>
                                <span style="letter-spacing: 10px;margin-left: 10px ">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <span class="value">
                                    <s:property value="baby.name"/>
                                </span>
                            </td>
                            
                        </tr>

                        <tr  class="line">
                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/nick1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/nick2.png">">
                                </s:if>
                                <span style="letter-spacing: 10px;margin-left: 10px ">小</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <span class="value">
                                    <s:property value="resultBasic1.nickName"/>
                                </span>
                            </td>
                            
                        </tr>

                        <tr  class="line">
                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/gender1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/gender2.png">">
                                </s:if>
                                <span style="letter-spacing: 10px;margin-left: 10px ">性</span>
                                <span style="letter-spacing: 1px">别:</span>
                                <span class="value">
                                    <s:if test="baby.gender == 1">男</s:if><s:else>女</s:else>
                                </span>
                            </td>
                        </tr>

                        <tr  class="line">
                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/birth1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/birth2.png">">
                                </s:if>
                                <span style="letter-spacing: 1px;margin-left: 10px ">出生日期:</span>
                                <span class="value">
                                    <s:date name="baby.birthday" format="yyyy-MM-dd"/>
                                </span>
                            </td>
                        </tr>
                    </table>

                    <table style="width: 38%;
                        border: 0;
                        position: relative;
                        top: 320px;
                        left: 270px;
                        font-size: 16px"
                        id="table2">
                        <tr class="line">
                                
                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/nation1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/nation2.png">">
                                </s:if>
                                <span style="letter-spacing: 10px;margin-left: 10px ">民</span>
                                <span style="letter-spacing: 1px">族:</span>
                                <span class="value">
                                    <s:property value="baby.nation"/>
                                </span>
                            </td>
                            
                        </tr>

                        <tr class="line">
                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/add1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/add2.png">">
                                </s:if>
                                <span style="letter-spacing: 10px;margin-left: 10px ">地</span>
                                <span style="letter-spacing: 1px">址:</span>
                                <span class="value">
                                    <s:property value="resultBasic1.address"/>
                                </span>
                            </td>
                            
                        </tr>



                        <tr class="line">
                            <td>
                                <s:if test="baby.gender == 1">
                                <img class="line-img" src="statics/img/phone1.png">
                                </s:if>
                                <s:if test="baby.gender == 0">
                                <img class="line-img" src="statics/img/phone2.png">">
                                </s:if>
                                <span style="letter-spacing: 1px;margin-left: 10px ">联系电话:</span>
                                <span class="value">
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

