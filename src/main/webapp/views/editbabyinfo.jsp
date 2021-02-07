<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>儿童发育评测平台</title>
    <%@include file="/statics/head.html"%>
    <script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>
</head>
<body class="front-body">
    <input type="hidden" id="username" value="<s:property value="#session.username"/>">
<s:include value="nav.jsp?act=records"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">儿童资料
            <label class="pull-right" style="font-size:20px;line-height: 39px;">注 ：标有<font color='red'>*</font>为必填项</label>
        </h1>
        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label required">姓名</label>
                <div class="col-md-2">
                    <input id="baby_name" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
                <label class="col-lg-1 col-md-2 control-label required">性别</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="gender" class="form-control front-no-radius front-no-box-shadow">
						<option value="1">男</option>
						<option value="0">女</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label required">民族</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="nation" class="form-control front-no-radius front-no-box-shadow">
						<option value="汉族">汉族</option>
                        <option value="满族">满族</option>
                        <option value="蒙族">蒙族</option>
                        <option value="回族">回族</option>
                        <option value="壮族">壮族</option>
                        <option value="维吾尔族">维吾尔族</option>
                        <option value="苗族">苗族</option>
                        <option value="朝鲜族">朝鲜族</option>
                        <option value="彝族">彝族</option>
                        <option value="藏族">藏族</option>
                        <option value="土家族">土家族</option>
                        <option value="蒙古族">蒙古族</option>
                        <option value="布依族">布依族</option>
                        <option value="瑶族">瑶族</option>
                        <option value="白族">白族</option>
                        <option value="其他">其他</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label required">出生年月</label>
                <div class="col-md-2">
                    <input id="birthday" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 0px;">

                <label class="col-lg-1 col-md-2 control-label required">父母电话</label>
                <div class="col-md-2">
                    <input id="f_tel" class="form-control front-no-radius front-no-box-shadow"  type="text" value="13212312310">
                </div>
                
            </div>
            

            <div class="form-group" style="margin-top: 30px;">
                <label class="col-lg-1 col-md-2 control-label">提交医生</label>
                <div class="col-md-4">
                    <span class="control-label front-label">
					<select id="doctor" class="form-control front-no-radius front-no-box-shadow">
                        <s:iterator value="userlist" var="user">
                        <option value="<s:property value="#user.userid"/>"><s:property value="#user.name"/></option>
                        </s:iterator>
                    </select></span>
                </div>
            </div>
            <s:if test="bs.remarks == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">备注</label>
                <div class="col-md-11">
                    <input id="remark" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <button type="button" class="btn btn-primary pull-right" style="margin:20px;margin-right: 0px;" onclick="save()">保存资料</button>
        </form>
    </div>
    <footer class="footer-default">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
<script src="statics/cityselect/jquery.cityselect.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $(".required").each(function() {
            var $this  = $(this);
            $(this).html($this.html()+" <font color='red'>*</font> ");
        });
        var bid = window.qs("babyid");
        window.bid = bid;
        // 请求儿童资料
        $.ajax({
            url : 'record/getBaby',
            type : 'post',
            data : {
                "babyid": window.bid
            },
            success : function(data) {
                console.log(data);
                // 赋值
                $("#gender").val(data.baby.gender);
                $("#baby_name").val(data.baby.name);
                $("#doctor").val(data.baby.userid);
                $("#birthday").val(data.baby_birth);
                $("#nation").val(data.baby.nation);
                
                
                // $("#father_name").val(data.baby.father.name);
                // $("#father_career").val(data.baby.father.career);
                $("#f_tel").val(data.baby.father.tel);
                // $("#education-f").val(data.baby.father.education);
                // $("#f_worktime").val(data.baby.father.worktime);
                // $("#f_birthday").val(data.father_birth);
                // $("#f_email").val(data.baby.father.email);
                
                // $("#mother_name").val(data.baby.mother.name);
                // $("#mother_career").val(data.baby.mother.career);
                // $("#education-m").val(data.baby.mother.education);
                // $("#m_tel").val(data.baby.mother.tel);
                // $("#m_worktime").val(data.baby.mother.worktime);
                // $("#m_birthday").val(data.mother_birth);
                // $("#m_email").val(data.baby.mother.email);

                // $("#birth-way").val(data.baby.delivery);

                // $("#relation").val(data.baby.relation);
                // $("#blood").val(data.baby.bloodtype);
                // $("#postcode").val(data.baby.postcode);
                // $("#account").val(data.baby.account);
                // $("#province").val(data.baby.province);
                // $("#city").val(data.baby.city);
                // $("#address").val(data.baby.address);
                // $("#mother_illness").val(data.baby.motherIllness);
                // $("#pregnant").val(data.baby.parity);
                // $("#duration").val(data.baby.pregnancy);
                // $("#education").val(data.baby.education);
                // $("#pre_delivery").val(data.baby.preDelivery);
                // $("#deformity").val(data.baby.deformity);
                // $("#only_child").val(data.baby.onlyChild);
                // $("#frontal_suture1").val(data.frontalSuture1);
                // $("#frontal_suture2").val(data.frontalSuture2);
                // $("#mother_birthage").val(data.baby.motherBirthage);
                // $("#marriage").val(data.baby.marriage);
                // $("#choke").val(data.baby.asphyxia);
                // $("#birth_weight").val(data.baby.birthWeight);
                // $("#jaundice").val(data.baby.jaundice);
                // $("#pumping").val(data.baby.havePumping);
                // $("#pumping-times").val(data.baby.pumpingTimes);
                // $("#pumping-begin").val(data.baby.pumpingBegin);
                // $("#family_history").val(data.baby.familyHistory);
                // $("#illness_history").val(data.baby.illnessHistory);
                // $("#height").val(data.baby.height);
                // $("#weight").val(data.baby.weight);
                // $("#head").val(data.baby.head);
                // $("#reason").val(data.baby.reason);
                // $("#overview").val(data.baby.overview);
                // $("#evaluation").val(data.baby.evaluation);
                // $("#diagnosis").val(data.baby.diagnosis);
                // $("#remark").val(data.baby.remarks);
            }
        })
    });
    window.qs = function getQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }

    function changeState(state) {
        switch (parseInt(state)) {
            case 0:
                $("#pumping-times").attr("disabled",true);
                $("#pumping-begin").attr("disabled",true);
                break;
            case 1:
                $("#pumping-times").attr("disabled",false);
                $("#pumping-begin").attr("disabled",false);
                break;
        }

    }

    function calculateBMI() {
        if ($("#height").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'计算BMI需填写身高！'});
        } else if ($("#weight").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'计算BMI需填写体重！'});
        } else {
            var height = parseInt($("#height").val())/100;
            var weight = parseInt($("#weight").val());
            var bmi = weight/(height*height);
            $("#bmi").html("BMI : " + bmi.toFixed(1));
        }

    }

    $('#birthday').cxCalendar();
    $('#f_birthday').cxCalendar();
    $('#m_birthday').cxCalendar();
    $("#cityselect").citySelect({
        url:"statics/cityselect/city.min.js",
        nodata:"none",
        required:false
    });
    function save() {
        var birthday=parseInt($("#birthday").val().replace("-","").replace("-",""));
        // var f_birthday=parseInt($("#f_birthday").val().replace("-","").replace("-",""));
        // var m_birthday=parseInt($("#m_birthday").val().replace("-","").replace("-",""));

        if ($("#baby_name").val().trim().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写儿童姓名！'});
        }else if($("#baby_name").val().trim().length <2){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度至少为两位！'});
        } else if($("#baby_name").val().trim().length >20){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度不能超过二十位！'});
        }else if(($("#baby_name").val().trim().length != 0)&&(NumofName($("#baby_name").val().trim())) == true){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名中不能有数字！'});
        } else if(($("#baby_name").val().trim().length != 0)&&(ischina($("#baby_name").val().trim())) == false) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名格式不正确！'});
        } else if ($("#gender").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写儿童性别！'});
        } else if ($("#nation").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写儿童民族！'});
        } else if ($("#birthday").val().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写儿童生日！'});
        } else if (($("#f_tel").val().trim().length == 0)) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写手机号！'});
        }else if(($("#f_tel").val().trim().length != 0)&&(($("#f_tel").val().trim().length != 11)||(isTelCode($("#f_tel").val().trim())) == false)) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写格式正确的手机号！'});
        }else {
            // 校验姓名与手机号是否唯一
            $.ajax({
                url : 'record/editBaby',
                type : 'post',
                data : {
                    "babyUpdate.babyId": window.bid,
                    "babyUpdate.babyGender": $("#gender").val(),
                    "babyUpdate.babyName": $("#baby_name").val(),
                    "babyUpdate.doctorId": $("#doctor").val(),
                    "babyUpdate.babyNation": $("#nation").val(),
                    "babyUpdate.babyDelivery": $("#birth-way").val(),
                    "babyUpdate.babyBirth": $("#birthday").val(),


                    "babyUpdate.fatherName":'父亲',
                    // "babyUpdate.fatherCareer":$("#father_career").val(),
                    "babyUpdate.fatherTel":$("#f_tel").val(),
                    // "babyUpdate.fatherEducation":$("#education-f").val(),
                    // "babyUpdate.fatherWorkTime":$("#f_worktime").val(),
                    // "babyUpdate.fatherBirth":$("#f_birthday").val(),
                    // "babyUpdate.fatherEmail":$("#f_email").val(),
                    
                    "babyUpdate.motherName":'母亲',
                    // "babyUpdate.motherCarrer":$("#mother_career").val(),
                    // "babyUpdate.motherEducation":$("#education-m").val(),
                    "babyUpdate.motherTel":0,
                    // "babyUpdate.motherWorkTime":$("#m_worktime").val(),
                    // "babyUpdate.motherBirth":$("#m_birthday").val(),
                    // "babyUpdate.motherEmail":$("#m_email").val(),

                    // "baby.relation":$("#relation").val(),
                    // "baby.bloodtype":$("#blood").val(),
                    // "baby.postcode":$("#postcode").val(),
                    // "baby.account":$("#account").val(),
                    // "baby.province":$("#province").val(),
                    // "baby.city":$("#city").val(),
                    // "baby.address":$("#address").val(),
                    // "baby.motherIllness": $("#mother_illness").val(),
                    // "baby.parity": $("#pregnant").val(),
                    // "baby.pregnancy": $("#duration").val(),
                    // "baby.education": $("#education").val(),
                    // "baby.preDelivery": $("#pre_delivery").val(),
                    // "baby.deformity": $("#deformity").val(),
                    // "baby.onlyChild": $("#only_child").val(),
                    // frontalSuture1:$("#frontal_suture1").val(),
                    // frontalSuture2:$("#frontal_suture2").val(),
                    // "baby.motherBirthage": $("#mother_birthage").val(),
                    // "baby.marriage": $("#marriage").val(),
                    // "baby.asphyxia": $("#choke").val(),
                    // "baby.birthWeight": $("#birth_weight").val(),
                    // "baby.jaundice": $("#jaundice").val(),
                    // "baby.havePumping": $("#pumping").val(),
                    // "baby.pumpingTimes": $("#pumping-times").val(),
                    // "baby.pumpingBegin": $("#pumping-begin").val(),
                    // "baby.familyHistory": $("#family_history").val(),
                    // "baby.illnessHistory": $("#illness_history").val(),
                    // "baby.height": $("#height").val(),
                    // "baby.weight": $("#weight").val(),
                    // "baby.head": $("#head").val(),
                    // "baby.reason": $("#reason").val(),
                    // "baby.overview": $("#overview").val(),
                    // "baby.evaluation": $("#evaluation").val(),
                    // "baby.diagnosis": $("#diagnosis").val(),
                    // "baby.remarks": $("#remark").val()
                },
                success : function(data) {
                    if(data.babyid != 0 &&data.babyid != null) {
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'编辑资料成功！'});
                        $.frontModal({size: 'modal-md', href: 'modals/modal_savebaby.jsp'}).on('shown.bs.modal', function () {
                            $("#babyid").val(data.babyid);
                        }).on('hide.bs.modal', function (){
                            // window.location.href = 'home';
                        });
                    } else {
                        $.fillTipBox({type:'danger', icon:'glyphicon-remove-sign', content:'编辑失败！'});
                    }
                }
            });
        }
    }
    function isTelCode(str) {
        var  reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
        return reg.test(str);
    }
    function NumofName(str) {
        var  reg = /[0-9]/;
        return reg.test(str);
    }
    function ischina(str) {
        var reg=/^[a-zA-Z·\u4E00-\u9FA5]{2,20}$/;
        return reg.test(str);
    }


    var username = $("#username").val();
    if (username.indexOf('家长') != -1) {
        console.log('家长视角。。。。。。');
        
        $('.navbar').hide();
        $('.footer-default').hide();
        $('#f_tel').attr("readonly","readonly");
        $('#doctor').attr("readonly","readonly");
        
    }

</script>
</body>
</html>