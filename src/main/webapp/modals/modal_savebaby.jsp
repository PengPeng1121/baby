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
        <a type="button" class="btn modal-box text-center manage doctorOperate view" href="record/new" style="margin-top: 10px"><h4 style="color: white;">新建病历</h4></a>
        <a type="button" class="btn modal-box text-center manage doctorOperate view" href="record" style="margin-top: 10px"><h4 style="color: white;">管理病历</h4></a>
        <br/>
        
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start3_6()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始3-6岁<br/>育儿技能评估</h4></a>
        <br/> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start0_2()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始家庭养育<br/>评估（0-2岁）</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start0_3()" style="margin-top: 10px"><h4
                    style="color: white;font-size: small">开始育儿技能<br/>评估（0-3岁)</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start50()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始学前50项<br/>智力筛查</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start132()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">婴儿-初中学生<br/>生活能力量表</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_cognize()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">婴幼儿认知测定</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_nei()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">中国比内测验</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_group()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">生长发育测验</h4></a> -->
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_QiZhi()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">气质测试</h4></a> -->
        
        <!-- <a type="button" class="btn  modal-box text-center" href="javascript:start_Feel()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">感觉统合能力</h4></a> -->
        
        <!-- <a type="button" class="btn  modal-box text-center doctorOperate" href="javascript:start_ADHD()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">多动症筛查</h4></a> -->

        <a type="button" class="btn  modal-box text-center manage doctorOperate parent view" href="javascript:start_Basic1()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">基本信息</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate parent view" href="javascript:start_Basic2()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">生产史、既往史<br/>家族史</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_Group2020()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">生长发育测验2020</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate parent view" href="javascript:start_Allergy()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">食物过敏/不耐受<br/>风险评估</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate parent view" href="javascript:start_ParentsCare()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">父母关心点</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_Physical()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">体格头面检查</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate feed view" href="javascript:start_Feed()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">营养与喂养</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate tooth view" href="javascript:start_Tooth()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">牙齿(28颗)</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate tooth view" href="javascript:start_Tooth20()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">牙齿(20颗)</h4></a>

        <a type="button" class="btn  modal-box text-center old-test manage doctorOperate view" href="javascript:start0_6()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始0-6岁小儿<br/>神经心理发育测评</h4></a>

        <a type="button" class="btn  modal-box text-center new-test manage doctorOperate view" href="javascript:start2016()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">开始0-6岁小儿<br/>神经心理发育测评<br/>(2016)</h4></a>
        <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_Feel2020()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">感觉统合能力2020</h4></a>
        <a type="button" class="btn  modal-box text-center manage doctorOperate qizhi view" href="javascript:start_QiZhi2020()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">气质测试2020</h4></a>
        <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_ddst()" style="margin-top: 10px"><h4
                style="color: white;font-size: small">小儿智能发育筛查</h4></a>
        <a type="button" class="btn  modal-box text-center manage doctorOperate qizhi view" href="javascript:start_Rear()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">养育风格指导</h4></a>
        <a type="button" class="btn  modal-box text-center manage doctorOperate heart view" href="javascript:start_Attention()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">儿童智商.注意力<br/>评估及指导</h4></a>

        <!-- <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_Plan()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">定制化方案</h4></a> -->

        <!-- <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_Bless()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">祝福</h4></a> -->

        <a type="button" class="btn  modal-box text-center manage doctorOperate hushi view" href="javascript:start_Eye()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">视力</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate hushi view" href="javascript:start_Ear()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">听力</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate hushi view" href="javascript:start_BMD()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">骨密度</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_Blood()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">血常规</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_Micro()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">微量元素</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_Bone()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">骨碱酶</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_Urine()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">尿常规</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_ECG()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">心电图</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_HBs()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">乙肝</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_FastAllergy()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">21项速发过敏原</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_FoodAllergy()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">14项慢性食物<br/>过敏原</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_BloodType()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">血型鉴定</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_VitaminD()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">25羟基维生素D</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_IGF_1()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">胰岛素样生长因子IGF-1</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate jianyan view" href="javascript:start_Ige()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">免疫球蛋白E(总ige)</h4></a>

        <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_Summary()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">总评</h4></a>
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">

        <a type="button" class="btn  modal-box text-center manage doctorOperate view" href="javascript:start_TCU()" style="margin-top: 10px"><h4
        style="color: white;font-size: small">复诊</h4></a>
        

    </div>
</div>
<script>


    var hoid = parseInt($("#hoid").val());
    var username = $("#username").val();
    console.log(hoid)


    // 适配陆总
    if (hoid != 2) {
        $('.old-test').hide();
    } else {
        $('.new-test').hide();
    }



   if (username.indexOf('家长') != -1) {
        console.log('家长视角。。。。。。');
        $('.view').hide();
        $('.parent').show();
    }

    if (username == '心理测评师') {
        console.log('心理测评师视角。。。。。。');
        $('.view').hide();
        $('.heart').show();
    }

    if (username == '气质测评师') {
        console.log('气质测评师视角。。。。。。');
        $('.view').hide();
        $('.qizhi').show();
    }

    if (username == '牙齿测评师') {
        console.log('牙齿测评师视角。。。。。。');
        $('.view').hide();
        $('.tooth').show();
    }

    if (username == '营养师') {
        console.log('营养师视角。。。。。。');
        $('.view').hide();
        $('.feed').show();
    }

    if (username.indexOf('检验师') != -1) {
        console.log('检验师视角。。。。。。');
        $('.view').hide();
        $('.jianyan').show();
    }

    if (username.indexOf('护士') != -1) {
        console.log('护士视角。。。。。。');
        $('.view').hide();
        $('.hushi').show();
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


    function start_Feel2020() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageGroup",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestFeel2020?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Group2020() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageGroup",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestGroup2020?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Physical() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthagePhysical",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestPhysical?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Summary() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageSummary",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestSummary?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_TCU() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestTCU?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Allergy() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageAllergy",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestAllergy?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_ParentsCare() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageAllergy",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestParentsCare?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Basic2() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageBasic2",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBasic2?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Basic1() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageBasic1",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBasic1?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_QiZhi2020() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageQiZhi2020",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestQiZhi2020?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Tooth() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageTooth",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestTooth?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Tooth20() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageTooth",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestTooth20?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Feed() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthageFeed",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestFeed?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Plan() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestPlan?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Bless() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBless?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Rear() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestRear?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Eye() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestEye?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Ear() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestEar?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_BMD() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBMD?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Blood() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBlood?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Micro() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestMicro?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Bone() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBone?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }


    function start_Urine() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestUrine?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_ECG() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestECG?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_HBs() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestHBs?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_FastAllergy() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestFastAllergy?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_FoodAllergy() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestFoodAllergy?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_BloodType() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestBloodType?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_VitaminD() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestVitaminD?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_IGF_1() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestIGF-1?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Ige() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestIge?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }

    function start_Attention() {
        var babyid = $("#babyid").val();
        $.ajax({
            url: "monthage",
            type: "post",
            data: {
                babyid: babyid
            }, success: function (data) {
                if (data.flag == true) {
                    location.href = "newtestAttention?babyid=" + babyid;
                } else {
                    $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
                }
            }

        })
    }



    function start_ADHD() {
        var babyid = $("#babyid").val();
        location.href = "newtestADHD?babyid=" + babyid;
        // $.ajax({
        //     url: "monthageGroup",
        //     type: "post",
        //     data: {
        //         babyid: babyid
        //     }, success: function (data) {
        //         if (data.flag == true) {
        //             location.href = "newtestADHD?babyid=" + babyid;
        //         } else {
        //             $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '该儿童不在本系统测查年龄范围之内！'});
        //         }
        //     }

        // })
    }
</script>
