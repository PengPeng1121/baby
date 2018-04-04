<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>病历查询-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>

</head>
<body class="front-body">
<s:include value="nav.jsp?act=record"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <div class="panel panel-default front-panel" style="margin-bottom: 13px">
            <div class="panel-heading" style="height:54px;">
                <div class="pull-left" style="height:54px;line-height: 33px;"> 搜索病历</div>
                <div class="pull-right"><a type="button" class="btn btn-primary pull-right" href="record/new">新建病历</a></div>
            </div>
            <div class="panel-body">
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-1 control-label front-label" for="baby-name">姓名</label>
                        <div class="col-md-5">
                            <input id="baby-name" onkeydown="EnterPress(event)" type="text" class="form-control front-no-box-shadow">
                        </div>
                        <label class="col-md-1 control-label front-label" for="baby-birth">出生日期</label>
                        <div class="col-md-5">
                            

                            <input id="baby-birth" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>


                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-1 control-label front-label" for="parent-name">家长姓名</label>
                        <div class="col-md-5">
                            <input id="parent-name" onkeydown="EnterPress(event)" type="text" class="form-control front-no-box-shadow">
                        </div>
                        <label class="col-md-1 control-label front-label" for="parent-tel">联系电话</label>
                        <div class="col-md-5">
                            <input id="parent-tel" onkeydown="EnterPress(event)" type="text" class="form-control front-no-box-shadow">
                        </div>
                    </div>
                    <div class="text-right">
                        <button type="button" id="reset" class="btn btn-default" onclick="cancelSearch()">重置</button>
                        <button type="button" id="enter" class="btn btn-primary" onclick="searchbaby()">查找</button>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="front-resource-info clearfix">
            <div class="pull-left">搜索结果共0个，建议更换搜索内容。</div>
        </div>
        <div style="margin-left: 13px"></div>
        <div class="panel panel-default front-panel" style="margin:0;">
            <div class="panel-body" id="search_result" style="padding: 0;">

            </div>
        </div>--%>
        <div id="search_result"></div>
    </div>
    <footer class="footer-default">
        <div class="text-center">Copyright © All Right Reserved by 协顺祥(2017)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/cxcalendar/jquery.cxcalendar.js"></script>

<script type="text/javascript">
    (function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
    })(jQuery);
    var testId = 0;
    //获取url参数
    testId = $.getUrlParam('testId');
    function searchbaby(){
        var babyName = $("#baby-name").val().trim();
        var babyBirth = $("#baby-birth").val().trim();
        var parentName = $("#parent-name").val().trim();
        var parentTel = $("#parent-tel").val().trim();
        if(babyName.length == 0 && parentName.length == 0 && parentTel.length == 0){
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写搜索内容！'});
        }else {
            $.ajax({
                url:"record/searchBaby",
                type:"post",
                data:{
                    babyName:babyName,
                    parentName:parentName,
                    parentTel:parentTel,
                    babyBirth:babyBirth,
                    testId: 0
                },
                success:function(html){
                    $("#search_result").html(html);
                }
            })
        }
    }
    function cancelSearch() {
        $("#baby-name").val("");
        $("#baby-birth").val("");
        $("#parent-name").val("");
        $("#parent-tel").val("");
    }
    function EnterPress(e) {
        var e = e || window.event;
        if(e.keyCode == 13) {
            document.getElementById("enter").focus();
        }
    }

    $('#baby-birth').cxCalendar();

    //首次请求
    $.ajax({
        url:"record/searchBaby",
        type:"post",
        data:{
            babyName:'',
            parentName:'',
            parentTel:'',
            babyBirth:'',
            testId: testId
        },
        success:function(html){
            $("#search_result").html(html);
        }
    })
</script>
</body>
</html>