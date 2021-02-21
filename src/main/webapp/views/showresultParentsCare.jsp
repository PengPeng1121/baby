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
        #name-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
        }

        #birth-text{
            display: inline-block;
            border-bottom: 1px solid #df938f;
            margin-left: 20px;
            width: 160px;
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
            top: 260px !important;
        }
        #date{
            left: 550px !important;
            top: 900px !important;
        }
        #name-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;
            
        }
        #birth-text{
            display: inline-block !important;
            border-bottom: 1px solid #df938f !important;
            margin-left: 10px !important;
            width: 160px !important;

        }
        #name-table{
            width: 700px !important;
            position: relative;
            top: 120px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultParentsCare.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultParentsCare.id"/>">
        <input id="care1" type="hidden" value="<s:property value="resultParentsCare.care1"/>">
        <input id="care2" type="hidden" value="<s:property value="resultParentsCare.care2"/>">
        <input id="care3" type="hidden" value="<s:property value="resultParentsCare.care3"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/bgBoy.png">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/bgGirl.png">
                    </s:if>

                    <table style="width: 55%;
                        border: 0;
                        position: relative;
                        top: 100px;
                        left: 70px;
                        font-size: 16px"
                        id="name-table">
                        <tr>

                            <td class="col-md-4" >
                                <span style="letter-spacing: 10px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                                <div id="name-text">
                                    <s:property value="baby.name"/>
                                </div>
                            </td>
                            

                            <td class="col-md-4 col-offset-4" >
                                <span style="letter-spacing: 1px">出生日期:</span>
                                <div id="birth-text">
                                    <s:date name="baby.birthday" format="yyyy-MM-dd"/>
                                </div>
                            </td>
                            

                        </tr>
                    </table>

                    <table style="width: 590px; border:0;font-size: 16px; position: absolute;top: 240px;left: 460px" id="content-table">
                        <tr>
                            <td>
                                需求点1
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p id="care1Text"></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                需求点2
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p id="care2Text"></p>
                            </td>
                        </tr><tr>
                            <td>
                                需求点3
                            </td>
                        </tr><tr>
                            <td>
                                <p id="care3Text"></p>
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
    var care1 = $('#care1').val();
    var care2 = $('#care2').val();
    var care3 = $('#care3').val();
    var map = {
        0: '我想综合了解宝宝的发育情况',
        1: '生长发育问题：身高、体重等',
        2: '喂养问题：如奶量、厌奶、吐奶及辅食添加顺序、挑食、食欲不振等',
        3: '营养素补充问题：如钙、铁、锌、维生素D等',
        4: '睡眠问题：如摇头，夜醒频繁、哭闹、失眠等',
        5: '排泄问题：便秘；腹泻等',
        6: '皮肤问题：皮肤泛红、起皮疹等',
        7: '宝宝是否存在有过敏相关的不适',
        8: '注意力不集中',
        9: '语言问题：如：发音不准，说话晚等',
        10: '社交问题：不喜欢和小朋友交流、玩耍等',
        11: '体姿体态问题：如O型腿、X型腿等',
    }
    $('#care1Text').text(map[care1]);
    $('#care2Text').text(map[care2]);
    $('#care3Text').text(map[care3]);
    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

