<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>评测管理-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>
</head>
<body class="front-body">
<div class="front-inner front-inner-media">
    <s:include value="nav.jsp?act=admin"/>
    <div class="container">
        <div class="row front-canvas" id="front-canvas">
            <s:include value="/template/admin_left.jsp?index=test"/>
            <div class="col-md-9">
                <div class="panel panel-default front-panel" style="margin-bottom: 13px">
                    <div class="panel-heading">测评查询</div>
                    <div class="panel-body">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="dq_start" >智能DQ值范围</label>
                                <div class="col-md-5">
                                    <input id="dq_start" onkeydown="EnterPress(event)" type="text" class="form-control front-no-box-shadow">
                                </div>
                                <label class="col-md-1 control-label front-label" for="dq_end" >至</label>
                                <div class="col-md-5">
                                    <input id="dq_end" onkeydown="EnterPress(event)" type="text" class="form-control front-no-box-shadow">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="dq_range" >智能DQ评级</label>
                                <div class="col-md-5">
                                    <span class="control-label front-label">
					                     <select id="dq_range" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="0"></option>
                                             <option value="1">优秀</option>
                                             <option value="2">聪明</option>
                                             <option value="3">正常</option>
                                             <option value="4">偏低</option>
                                             <option value="5">低下</option>
                                         </select></span>
                                </div>
                                <label class="col-md-1 control-label front-label" for="baby_sex" >小儿性别</label>
                                <div class="col-md-5">
                                    <span class="control-label front-label">
					                     <select id="baby_sex" class="form-control front-no-radius front-no-box-shadow">
                                             <option value="-1"></option>
                                             <option value="1">男</option>
                                             <option value="0">女</option>
                                         </select></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="dq_start" >小儿生日</label>
                                <div class="col-md-5">
                                    <input id="birthday_start" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                                </div>
                                <label class="col-md-1 control-label front-label" for="birthday_end" >至</label>
                                <div class="col-md-5">
                                    <input id="birthday_end" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-1 control-label front-label" for="dq_start" >检查日期</label>
                                <div class="col-md-5">
                                    <input id="checkday_start" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                                </div>
                                <label class="col-md-1 control-label front-label" for="checkday_end" >至</label>
                                <div class="col-md-5">
                                    <input id="checkday_end" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                                </div>
                            </div>
                            <div class="text-right">
                                <button type="button" id="reset" class="btn btn-default" onclick="cancelSearch()">重置</button>
                                <button type="button" id="enter" class="btn btn-primary" onclick="searchResult()">查找</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="testloading" style="margin-top: 50px; padding: 50px; display: none;"><div class="front-loading">
                    <div class="front-loading-block"></div>
                    <div class="front-loading-block"></div>
                    <div class="front-loading-block"></div>
                </div><div class="panel-body text-center">正在加载请稍候</div></div>
                <div id="search_result"></div>
            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
<script src="statics/cityselect/jquery.cityselect.js"></script>
<script type="text/javascript">

    $('#birthday_start').cxCalendar();
    $('#birthday_end').cxCalendar();
    $('#checkday_start').cxCalendar();
    $('#checkday_end').cxCalendar();

    function searchResult() {
        var dqRange = $('#dq_range').val();
        var babySex = $('#baby_sex').val();
        var dqStart = $('#dq_start').val().trim();
        var dqEnd = $('#dq_end').val().trim();
        var birthdayStart = $('#birthday_start').val();
        var birthdayEnd = $('#birthday_end').val();
        var checkdayStart = $('#checkday_start').val();
        var checkdayEnd = $('#checkday_end').val();
        $("#testloading").css("display", "block");
        $("#search_result").css("display", "none");
        if(dqRange == 0 && babySex == -1 && dqStart.length == 0 && dqEnd.length == 0 && birthdayStart.length == 0 && birthdayEnd.length == 0 && checkdayStart.length == 0 && checkdayEnd.length == 0) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写搜索内容！'});
            $("#testloading").css("display", "none");
        } else if(dqStart.length == 0 && dqEnd.length != 0) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '智能DQ范围有误！'});
            $("#testloading").css("display", "none");
        } else if(birthdayStart.length == 0 && birthdayEnd.length != 0) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '小儿生日有误！'});
            $("#testloading").css("display", "none");
        } else if(checkdayStart.length == 0 && checkdayEnd.length != 0) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '检查日期有误！'});
            $("#testloading").css("display", "none");
        } else if(dqEnd.length != 0 && Number(dqStart) > Number(dqEnd)) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '智能DQ范围有误！'});
            $("#testloading").css("display", "none");
        } else if(dqStart.length != 0 && dqRange != 0) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '智能DQ范围与评级只能选择一个！'});
            $("#testloading").css("display", "none");
        } else {
            if(dqStart.length != 0 && dqEnd.length == 0) {
                dqEnd="300";
            } else if(birthdayStart.length != 0 && birthdayEnd.length == 0) {
                birthdayEnd="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>";
            } else if(checkdayStart.length != 0 && checkdayEnd.length == 0) {
                checkdayEnd="<%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>";
            }
            $.ajax({
                url: "admin/searchResult",
                type: "post",
                data: {
                    dqStart: dqStart,
                    dqEnd: dqEnd,
                    dqRange: dqRange,
                    babySex: babySex,
                    birthdayStart: birthdayStart,
                    birthdayEnd: birthdayEnd,
                    checkdayStart: checkdayStart,
                    checkdayEnd: checkdayEnd,
                },

                success: function(html) {
                    $("#testloading").css("display", "none");
                    $("#search_result").css("display", "block");
                    $("#search_result").html(html);
                }
            });
        }
    }
    function cancelSearch() {
        $('#dq_start').val("");
        $('#dq_end').val("");
        $('#dq_range').val(0);
        $('#baby_sex').val(-1);
        $('#birthday_start').val("");
        $('#birthday_end').val("");
        $('#checkday_start').val("");
        $('#checkday_end').val("");
    }
    function EnterPress(e) {
        var e = e || window.event;
        if(e.keyCode == 13) {
            document.getElementById("enter").focus();
        }
    }
</script>
</body>
</html>