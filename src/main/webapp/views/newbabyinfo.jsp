<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>新建病历-儿童发育评测平台</title>
    <%@include file="/statics/head.html"%>
    <script src="statics/cxcalendar/jquery.cxcalendar.js"></script>
    <link rel="stylesheet" href="statics/cxcalendar/jquery.cxcalendar.css"/>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=records"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">小儿详细资料
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
                <!-- <label class="col-lg-1 col-md-2 control-label required">父-姓名</label>
                <div class="col-md-2">
                    <input id="father_name" class="form-control front-no-radius front-no-box-shadow"  type="text" value="父亲">
                </div> -->
                <label class="col-lg-1 col-md-2 control-label required">父母电话</label>
                <div class="col-md-2">
                    <input id="f_tel" class="form-control front-no-radius front-no-box-shadow"  type="text" value="13212312310">
                </div>
                <!-- <label class="col-lg-1 col-md-2 control-label required">母-姓名</label>
                <div class="col-md-2">
                    <input id="mother_name" class="form-control front-no-radius front-no-box-shadow"  type="text"  value="母亲">
                </div>
                <label class="col-lg-1 col-md-2 control-label required" >手机号</label>
                <div class="col-md-2">
                    <input id="m_tel" class="form-control front-no-radius front-no-box-shadow"  type="text" value="13212312311">
                </div> -->
            </div>
            <div class="form-group" style="margin-top: 20px;">
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
    <input type="hidden" id="username" value="<s:property value="#session.username"/>">
    <input type="hidden" id="userid" value="<s:property value="#session.userid"/>">
    <input type="hidden" id="tel" value="<s:property value="#session.tel"/>">
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

        var username = $("#username").val();
        var userid = $("#userid").val();
        var tel = $("#tel").val();

        if (username.indexOf('家长') != -1) {
            console.log('家长视角。。。。。。');
            
            $('.navbar').hide();
            $('.footer-default').hide();
            if (tel) {
                $('#f_tel').attr("readonly","readonly");
            }
            $('#doctor').attr("readonly","readonly")
            
        }


        // var userlist = <s:property value="userlist"/>;//用户列表

        // for (var i = 0, l = userlist.length; i < l; i++) {
        //   if (userlist[i]['name'] === username) {
        //     $("#doctor").val(userlist[i]['userid']);
        //     break;
        //   }
        // }

        // if (username.indexOf('家长填报') != -1) {
        //     for (var i = 0, l = userlist.length; i < l; i++) {
        //       if (userlist[i]['name'] === username) {
        //         $("#doctor").val(userlist[i]['userid']);
        //         break;
        //       }
        //     }
        // }
        $("#doctor").val(userid);
        $("#f_tel").val(tel);
    });

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
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写父母手机号！'});
        }else if(($("#f_tel").val().trim().length != 0)&&(($("#f_tel").val().trim().length != 11)||(isTelCode($("#f_tel").val().trim())) == false)) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写格式正确的手机号！'});
        }else {
            // 判断名字与手机号唯一
            $.ajax({
                url : 'record/babyRepeat',
                type : 'post',
                data : {
                    "babyName": $("#baby_name").val().trim(),
                    "fatherTel":$("#f_tel").val().trim(),   
                },
                success : function(data) {
                    var repeatFlag = data.repeatFlag;
                    if (!repeatFlag) {
                        $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '病历重复，无法新建'});
                        return;
                    }
                    $.ajax({
                        url : 'record/saveBaby',
                        type : 'post',
                        data : {
                            "baby.gender": $("#gender").val(),
                            "baby.name": $("#baby_name").val().trim(),
                            "baby.userid": $("#doctor").val(),
                            birthday: $("#birthday").val(),
                            "baby.nation": $("#nation").val(),

                            "father.name":'父亲',

                            "father.tel":$("#f_tel").val().trim(),
                            
                            "mother.name":'母亲',
                            
                            "mother.tel":0,
                            
                        },
                        success : function(data) {
                            if(data.babyid != 0 &&data.babyid != null) {
                                $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'新建资料成功！'});
                                $.frontModal({size: 'modal-md', href: 'modals/modal_savebaby.jsp'}).on('shown.bs.modal', function () {
                                    $("#babyid").val(data.babyid);
                                }).on('hide.bs.modal', function (){
                                    // window.location.href = 'home';
                                });
                            } else {
                                $.fillTipBox({type:'danger', icon:'glyphicon-remove-sign', content:'保存失败！'});
                            }
                        }
                    });
                }
            });
        }
    }
    function isTelCode(str) {
        var  reg = /^0?1[3|4|5|7|8][0-9]\d{8}$/;
        return true;
        // return reg.test(str);
    }
    function NumofName(str) {
        var  reg = /[0-9]/;
        return reg.test(str);
    }
    function ischina(str) {
        var reg=/^[a-zA-Z·\u4E00-\u9FA5]{2,20}$/;
        return reg.test(str);
    }

</script>
</body>
</html>