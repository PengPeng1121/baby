<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>病历管理-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>

</head>
<body class="front-body">
<div class="front-inner front-inner-media">
    <s:include value="nav.jsp?act=admin"/>
    <div class="container">

        <div class="row front-canvas" id="front-canvas">
            <s:include value="/template/admin_left.jsp?index=search"/>
            <div class="col-md-9">
                <div class="front-toolbar other">
                    <div class="front-toolbar-header clearfix">
                        <button type="button" class="front-toolbar-toggle navbar-toggle" data-toggle="collapse" data-target="#baby_buttons">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="baby-button" class="front-btn-group collapse" data-toggle="buttons">
                        <label class="btn btn-default front-no-box-shadow active" data-group="all">
                            <input type="radio" name="options" autocomplete="off">全部
                        </label>
                        <label class="btn btn-default front-no-box-shadow" data-group="search">
                            <input type="radio" name="options" autocomplete="off"><span class="glyphicon glyphicon-search"></span> 搜索
                        </label>
                    </div>
                    <a type="button" class="btn btn-primary" href="record/new">新建病历</a>
                </div>
                <div id="baby-search" style="display:none;">
                    <div class="panel panel-default front-panel" style="margin-bottom: 13px">
                        <div class="panel-heading" >搜索病历
                            <%--<a  class="btn btn-primary pull-right" href="record/new">新建病历</a>--%>
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
                                    <label class="col-md-1 control-label front-label" for="parent-name" style="padding-left:0px; ">家长姓名</label>
                                    <div class="col-md-5">
                                        <input id="parent-name" onkeydown="EnterPress(event)" type="text" class="form-control front-no-box-shadow">
                                    </div>
                                    <label class="col-md-1 control-label front-label" for="parent-tel" style="padding-left:0px;">联系电话</label>
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
                    <div id="search_result"></div>
                </div>
                <div id="search_allbaby"></div>
            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
<script type="text/javascript">
    AllBabyDivPage(1);
    function searchbaby(){
        var babyName = $("#baby-name").val().trim();
        var babyBirth = $("#baby-birth").val().trim();
        var parentName = $("#parent-name").val().trim();
        var parentTel = $("#parent-tel").val().trim();
        if(babyName.length == 0 && parentName.length == 0 && parentTel.length == 0){
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写搜索内容！'});
        }else {
            $.ajax({
                url:"record/searchBabyByHoid",
                type:"post",
                data:{
                    babyName:babyName,
                    parentName:parentName,
                    parentTel:parentTel,
                    babyBirth:babyBirth
                },
                success:function(html){
                    $("#search_result").html(html);
                }
            })
        }
    }

    function cancelSearch() {
        $("#baby-name").val("");
        $("#parent-name").val("");
        $("#parent-tel").val("");
    }
    function EnterPress(e) {
        var e = e || window.event;
        if(e.keyCode == 13) {
            document.getElementById("enter").focus();
        }
    }
    $('#baby-button').click(function (event) {
        var target = $(event.target).is('span') ? $(event.target).parent() : $(event.target);
        switch (target.attr('data-group')){
            case 'all':
                $("#baby-search").css("display","none");
                $("#baby-all").css("display","block");
                $("#search_allbaby").css("display","block");
                $("#search_result").css("display","none");
                AllBabyDivPage(1);
                break;
            case 'search' :
                $("#baby-all").css("display","none");
                $("#baby-search").css("display","block");
                $("#search_allbaby").css("display","none");
                $("#search_result").css("display","block");
                break;
        }
    })

    $('#baby-birth').cxCalendar();
    
    function AllBabyDivPage(page) {
        $.post("record/searchAllBaby",{page:page},function (data) {
            $("#search_allbaby").html(data);
        })
    }
</script>
</body>
</html>