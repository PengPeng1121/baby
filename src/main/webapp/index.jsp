<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <%@include file="/statics/head.html"%>
    <title>首页-儿童发育评测平台</title>

    <style>
        .label_number {
            font-size: 30px;
            color: black;
        }
        .panel-body{
            border: 2px solid #e7f2f8;
            height: 155px; 
            background-image: url(statics/img/cardBg.png); 
            background-size: 100% 100%;
            text-align: center;
            padding: 8px;
        }
        .as-desc{
            height: 55px;
        }
        .text-right a{
            font-size: 15px;
            color: #254168;
        }
    </style>
</head>

<body class="front-body">
<s:include value="views/nav.jsp?act=home"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="background-color: #FFF">
                <div class="col-md-12 as-carousel" style="padding-left: 0;margin: 0 15px">
                    <div class="col-md-2" style="display: inline-block;padding-left: 0">
                        <div class="text-left" style="margin-bottom: 5px;"><label style="font-weight:normal;"><h4>快捷功能</h4></label></div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="panel panel-default front-panel" style="height: 155px;">
                        <div class="panel-body" style="background: transparent;">
                            <div class="media">
                                <div class="media-left">
                                    <img class="media-object img-circle" style="height: 100px;width: 100px;" src="statics/img/babyinfo.png" alt="Logo">
                                </div>
                                <div class="media-body">
                                    <h4 class="media-heading">病历</h4>
                                    <div class="as-desc">
                                        <div style="display: inline-block">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfBaby"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <%-- <a href="record/newbaby" class="sum_span_blank"><span class="glyphicon glyphicon-plus"></span>新建</a>--%>
                                        <a href="record"><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12" style="background-color: #FFF;margin-top: 20px">
                <div class="col-md-12 as-carousel" style="padding-left: 0;margin: 0 15px">
                    <div class="col-md-2" style="display: inline-block;padding-left: 0">
                        <div class="text-left" style="margin-bottom: 7px;"><label style="font-weight:normal;"><h4>测评</h4></label></div>
                    </div>
                </div>

                <!-- 0-6岁小儿神经心理发育检查表 -->
                <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">0-6岁小儿神经心理发育检查表</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResult0_6"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="result0_6LeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=1" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- 育儿技能评估 -->
                <!-- <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body" style="">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">父母育儿评估量表（3-6岁）</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResult3_6"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="result3_6LeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=2" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div> -->


                <!-- 育儿技能评估（0-2岁） -->
                <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">家庭养育（0-2岁）</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResult0_2"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="result0_2LeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=16" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- 育儿技能评估（0-3岁） -->
                <!-- <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">父母育儿评估量表（0-3岁）</p>
                                    <div class="as-desc">
                                        即将上线 完成父母育儿评估量表（3-6岁）课程者优先试用！
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div> -->


                <!-- 学龄前50项智力测查 -->
                <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">学前50项智力筛查</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResult50"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="result50LeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=17" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <!-- 婴幼儿认知测定量表 -->
                <!-- <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">婴幼儿认知测定量表</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResultCognize"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="resultCognizeLeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=19" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->


                <!-- 婴儿-初中学生生活能力量表 -->
                <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">婴儿-初中学生生活能力量表</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResult132"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="result132LeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=18" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 小儿智能发育筛查 -->
                <!-- <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">小儿智能发育筛查</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResultDDST"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="resultDDSTLeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=21" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div> -->

                <!-- 比内 -->
                <!-- <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">中国比内测验</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResultNei"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="resultNeiLeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=22" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div> -->


                <!-- 生长发育 -->
                <s:if test="resultGroupLeftTimes != 0">
                <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">生长发育测验</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResultGroup"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="resultGroupLeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=23" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                </s:if>

                <!-- 气质 -->
                <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">气质测验</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResultQiZhi"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="resultGroupLeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=24" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>


                <!-- 感觉统合 -->
                <!-- <div class="col-md-3">
                    <div class="panel panel-default front-panel " style="height: 155px;border:0px">
                        <div class="panel-body">
                            <div class="media">
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 16px;">感觉统合测验</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 30px;color: black;font-weight: normal;"><s:property value="numberOfResultFeel"/></label>
                                            <label style="font-weight:normal;">个</label>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <s:if test="resultFeelLeftTimes == 0">
                                            <span>请购买</span>
                                        </s:if>
                                        <s:else>
                                            <a href="record?testId=25" onclick="" ><span class="glyphicon glyphicon-edit"></span>&nbsp;管理</a>
                                        </s:else>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
            


           <!--  <div class="col-md-12" style="background-color: #FFF;margin-top: 20px">

                <div class="col-md-12 as-carousel" style="padding-left: 0;margin: 0 15px">
                    <div class="col-md-2" style="display: inline-block;padding-left: 0">
                        <div class="text-left" style="margin-bottom: 5px;"><label style="font-weight:normal;"><h4>培训</h4></label></div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default front-panel " style="height: 155px;">
                        <div class="panel-body" style="background: transparent;">
                            <div class="media">
                                <div class="media-left">
                                    <img class="media-object" style="height: 100px;width: 100px;" src="statics/img/code.png" alt="">
                                </div>
                                <div class="media-body">
                                    <p class="media-heading" style="font-size: 24px; color: #6dd2de">父母育儿评估量表</p>
                                    <div class="as-desc">
                                        <div style="display: inline-block;">
                                            <label style="font-size: 14px;color: #6dd2de;font-weight: normal;">微信群：<br/> 育儿评估技术培训</label>
                                        </div>
                                        <div>
                                            <label style="font-size: 16px;color: black;font-weight: normal;">
                                                扫一扫二维码，加入该群
                                            </label>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div> -->


        </div>
    </div>


    <footer class="footer-default">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="statics/tail.html"/>
<script>
    $("#home").addClass("front-active");
</script>
</body>
</html>