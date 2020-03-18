<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-content" id="savebabymodal">
    <div class="modal-header">
        <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>--%>
        <h4 class="modal-title" aria-label="front-modal-label">请选择操作</h4>
    </div>
    <input type="hidden" id="babyid" value="">
    <input type="hidden" id="hoid" value="<s:property value="#session.hoid"/>">
    <div class="modal-body">
        <a type="button" class="btn modal-box text-center" href="record/new" style="margin-top: 10px"><h4 style="color: white;">新建病历</h4></a>
        <a type="button" class="btn modal-box text-center" href="record" style="margin-top: 10px"><h4 style="color: white;">管理病历</h4></a>
        <br/>
        <a type="button" class="btn  modal-box text-center old-test" href="javascript:start0_6()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始0-6岁小儿<br/>神经心理发育测评</h4></a>

        <a type="button" class="btn  modal-box text-center new-test" href="javascript:start2016()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始0-6岁小儿<br/>神经心理发育测评<br/>(2016)</h4></a>
        
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start3_6()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始3-6岁<br/>育儿技能评估</h4></a>
        <br/> -->
        <a type="button" class="btn  modal-box text-center" href="javascript:start0_2()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始家庭养育<br/>评估（0-2岁）</h4></a>
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start0_3()" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">开始育儿技能<br/>评估（0-3岁)</h4></a> -->


        <a type="button" class="btn  modal-box text-center" href="javascript:start50()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始学前50项<br/>智力筛查</h4></a>
        <a type="button" class="btn  modal-box text-center" href="javascript:start132()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">婴儿-初中学生<br/>生活能力量表</h4></a>
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_cognize()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">婴幼儿认知测定</h4></a> -->
        <a type="button" class="btn  modal-box text-center" href="javascript:start_ddst()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">小儿智能发育筛查</h4></a>
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_nei()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">中国比内测验</h4></a> -->
        <a type="button" class="btn  modal-box text-center" href="javascript:start_group()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">生长发育测验</h4></a>
        <a type="button" class="btn  modal-box text-center" href="javascript:start_QiZhi()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">气质测试</h4></a>
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_Feel()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">感觉统合能力</h4></a> -->
    </div>
</div>
<script>


    var hoid = $("#hoid").val();
    console.log(hoid)


    if (hoid == 3) {
        $('.old-test').hide();
    } else {
        $('.new-test').hide();
    }


    function start0_6() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest0_6?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童超出本系统测查年龄！'});
                }
            }

        })

    }


    function start2016() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest2016?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童超出本系统测查年龄！'});
                }
            }

        })

    }

    function start3_6() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest3_6?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童超出本系统测查年龄！'});
                }
            }

        })

    }


    function start0_2() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest0_2?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童超出本系统测查年龄！'});
                }
            }

        })

    }

    function start0_3() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest0_3?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童超出本系统测查年龄！'});
                }
            }

        })

    }


    function start50() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage50",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest50?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })

    }

    function start132() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage132",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtest132?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })

    }
    function start_cognize() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthagecognize",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestcognize?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })

    }


    function start_ddst() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageDDST",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestDDST?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })

    }


    function start_nei() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageNei",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestNei?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })

    }
    function start_group() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageGroup",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestGroup?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }
    function start_QiZhi() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageGroup",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestQiZhi?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }
    function start_Feel() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageGroup",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestFeel?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }
</script>
