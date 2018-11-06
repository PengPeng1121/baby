<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal-content" id="savebabymodal">
    <div class="modal-header">
        <h4 class="modal-title" aria-label="front-modal-label">请选择操作</h4>
    </div>
    <input type="hidden" id="babyid" value="">
    <div class="modal-body test">
        <a type="button" class="btn  modal-box text-center" href="javascript:change(1)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">开始0-6岁小儿<br/>神经心理发育测评</h4></a>
        <a type="button" class="btn  modal-box text-center" href="javascript:change(2)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">开始3-6岁<br/>育儿技能评估</h4></a>
        <br/>
        <a type="button" class="btn  modal-box text-center" href="javascript:change(16)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">开始家庭养育<br/>评估（0-2岁）</h4></a>


        <a type="button" class="btn  modal-box text-center" href="javascript:change(17)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">开始学前50项<br/>智力筛查</h4></a>
        <a type="button" class="btn  modal-box text-center" href="javascript:change(18)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">婴儿-初中学生<br/>生活能力量表</h4></a>
        <a type="button" class="btn  modal-box text-center" href="javascript:change(19)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">婴幼儿认知测定</h4></a>
        <a type="button" class="btn  modal-box text-center" href="javascript:change(20)" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">小儿智能发育筛查</h4></a>
    </div>
    <div class="modal-body code">
        <div style="margin-top: 10px; display: inline-block; width: 550px">
            

            <a type="button" class="btn  modal-box text-center" href="javascript:showCode(1)" style="margin-left:30px"><h4 style="color: white;font-size: xx-large">免费</h4></a>
            <a type="button" class="btn  modal-box text-center" href="javascript:showCode(2)" style="margin-left:30px"><h4 style="color: white;font-size: xx-large">打折</h4></a>
            <a type="button" class="btn  modal-box text-center" style="margin-left:30px" href="javascript:showCode(3)"><h4 style="color: white;font-size: xx-large">原价</h4></a>
        </div>
    </div>

</div>
<script>
    var testId = 0;
    var orderId = 0;
    $('.code').hide()

    function change(testId) {
        $('.code').show()
        $('.test').hide()
        testId = testId
    }

    function showCode(type) {
        // 请求二维码图片
        orderId = $.now()
        window.openTest('http://localhost:8010/pay/orderInfo/payIndex?testId='+ testId + '&type=' + type + "&orderId=" + orderId)


        //判断是否付款成功
        
        setInterval(function(){
            $.ajax({
                url:"isOrderPayed",
                type:"post",
                data:{
                    orderId:orderId
                },
                success:function(data){
                    if (data) {
                        openTest(testId)
                    }
                }
            })

        }, 5000)
    }

    function openTest(testId) {
        switch (testId){
            case 1:
                start0_6();
                break;
            case 2:
                start3_6();
                break;
            case 16:
                start0_2();
                break;
            case 20:
                start0_3();
                break;
            case 17:
                start50();
                break;
            case 18:
                start132();
                break;
            case 19:
                start_cognize();
                break;  
            case 21:
                start_ddst();
                break;          
            default :
                alert("testId不正确");
                break;
        }
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
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围内！'});
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
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围内！'});
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
</script>
