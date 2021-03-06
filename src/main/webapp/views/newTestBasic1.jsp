<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <title>新建评测-儿童发育评测平台</title>
    <s:include value="/statics/head.html"></s:include>
    <style type="text/css">
        p{
            margin:0;
        }
        
        .noanswer{
            background-color: #ffeb3b;
        }

        .start{
            background-color: #79eef7;
        }
        .data-input{
            text-align: right;
            height: 25px;
            line-height: 25px;
        }


    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <input type="hidden" id="username" value="<s:property value="#session.username"/>">
    <input type="hidden" id="tel" value="<s:property value="#session.tel"/>">
    <div class="container">
        <h3 style="margin-top: 0px;margin-bottom: 20px;">儿童基本信息</h3>
        <form class="form-horizontal">
            <div class="panel panel-default front-panel" id="info">
                <div class="panel-heading">小儿基本资料</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">姓名</label>
                        <label class="col-md-3 front-label"><s:property value="baby.name"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">性别</label>
                        <label class="col-md-3 front-label"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">出生日期</label>
                        <label class="col-md-3 front-label"><s:date name="baby.birthday" format="yyyy-MM-dd"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">月龄</label>
                        <label class="col-md-3 front-label"><s:property value="days"/></label>
                    </div>
                    <div class="col-md-6">
                        <label class="col-md-3 front-label">检查日期</label>
                        <label class="col-md-3 front-label"><%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%></label>
                    </div>
                    
                </div>
            </div>
            
            <div class="panel panel-default front-panel">
                <input id="days" type="hidden" value="<s:property value="days"/>">
                <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">
                <div class="panel-heading">基本信息:</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input"><span class="label label-success">小名:</span></label>
                        <div class="col-md-9">
                           <input id="nickName" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input"><span class="label label-success">地址:</span></label>
                        <div class="col-md-9">
                           <input id="address" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input"><span class="label label-success">联系电话:</span></label>
                        <div class="col-md-9">
                           <input id="contactMobile" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input"><span class="label label-success">请上传孩子照片:</span></label>
                        <div class="col-md-9">
                            <form id="form" method="POST" enctype="multipart/form-data" 
                             onsubmit="return check();">
                                <input type="file" accept="image/*" name="file" id="file"/>
                                <input type="button"  class="btn btn-warning btn-xs" style="margin-top: 20px" onclick="uploadImg()" value="确认使用当前照片"/>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <img id="preview" style="width: 200px">
                        <input id="imgUrl" type="hidden" >
                    </div>
                    <div class="col-md-12">
                        
                           <p style="color: red">
                               注：保存之前不要忘记上传宝宝的照片哦！
                           </p>
                        
                    </div>
                </div>
            </div>

            

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                
                <a type="button" class="btn btn-primary pull-right" style="margin-left: 5px;margin-top: 5px" onclick="saveAndBasic2()" >保存并继续填写生育史等信息</a>
                <a type="button" class="btn btn-default pull-right" style="margin-left: 5px;margin-top: 5px" onclick="save()" >保存并返回</a>
                <!-- <a type="button" class="btn btn-primary pull-right" onclick="saveAndAllergy()" >保存并继续填写食物过敏或不耐受风险评估</a> -->
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<div class="modal fade" id="photoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <p>图片上传中。。。 请稍后</p>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<s:include value="/statics/tail.html"/>
<script type="text/javascript">
    var username = $("#username").val();
    var tel = $("#tel").val();
    if (username.indexOf('家长') != -1) {
        $('.navbar').hide();
        $('.footer-default').hide();
        if (tel) {
            $('#contactMobile').val(tel);
        }
    }
    


    var fileDom = document.getElementById("file");
    var previewDom = document.getElementById("preview");
    fileDom.addEventListener("change", e=>{
        var file = fileDom.files[0];
        // check if input contains a valid image file
        if (!file || file.type.indexOf("image/") < 0) {
            fileDom.value = "";
            previewDom.src = "";
            return;
        }

        // use FileReader to load image and show preview of the image
        var fileReader = new FileReader();
        fileReader.onload = e=>{
            previewDom.src = e.target.result;
        };
        fileReader.readAsDataURL(file);
    });

    var formDom = document.getElementById("form");
    function check() {
        var file = fileDom.files[0];
        // check if input contains a valid image file
        if (!file || file.type.indexOf("image/") < 0) {
            return false;
        }
        return true;
    }



    function uploadImg() {
        var formData = new FormData();
        var file = fileDom.files[0]; 
        formData.append("filename", file.name);
        formData.append("file", file);
        formData.append("testId", 33);
        formData.append("babyId", $('#babyid').val());
        $("#photoModal").modal("show");
        $.ajax({
            url: "babyImg/uploadHeadImg",
            type: "POST",
            enctype: "multipart/form-data",
            data: formData,
            processData: false,
            contentType: false,
            dataType: "json",
            success: function (json) {
                // 关闭loading
                $("#photoModal").modal("hide");
                $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '图片提交成功,请点击保存按钮'});
                $('#imgUrl').val(json.headImgUrl);
            }
        });
    }


    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }

    function saveAndBasic2() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    scoreAndBasic2();
                }
            });
        
    }

    function saveAndAllergy() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    scoreAndAllergy();
                }
            });
        
    }


    function score() {
        var nickName,
            address,
            contactMobile;

        nickName = $("#nickName").val();
        address = $("#address").val();
        contactMobile = $("#contactMobile").val();

        var data = {};
        data ['resultBasic1.babyId'] = parseInt($("#babyid").val());
        data ['resultBasic1.nickName'] = nickName;
        data ['resultBasic1.address'] = address;
        data ['resultBasic1.contactMobile'] = contactMobile;
        data ['resultBasic1.headImgUrl'] = $("#imgUrl").val();

        $.ajax({
            url: 'saveresultBasic1',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultBasic1.id;
                var refreshData = {
                    babyid: $("#babyid").val(),
                    testId: 33,
                    resultId: rId
                };
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        // window.location = "showresultBasic1?id=" + rId;
                         window.location = "record/moreinfo?babyid=" + $("#babyid").val();
                    }
                })
                // window.location = "showresultBasic1?id=" + json.resultBasic1.id;
            }
        })
    }


    function scoreAndBasic2() {
        var nickName,
            address,
            contactMobile;

        nickName = $("#nickName").val();
        address = $("#address").val();
        contactMobile = $("#contactMobile").val();

        var data = {};
        data ['resultBasic1.babyId'] = parseInt($("#babyid").val());
        data ['resultBasic1.nickName'] = nickName;
        data ['resultBasic1.address'] = address;
        data ['resultBasic1.contactMobile'] = contactMobile;
        data ['resultBasic1.headImgUrl'] = $("#imgUrl").val();

        $.ajax({
            url: 'saveresultBasic1',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultBasic1.id;
                var refreshData = {
                    babyid: $("#babyid").val(),
                    testId: 33,
                    resultId: rId
                };
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "newtestBasic2?babyid=" + parseInt($("#babyid").val());
                    }
                })
                // window.location = "newtestBasic2?babyid=" + parseInt($("#babyid").val());
            }
        })
    }


    function scoreAndAllergy() {
        var nickName,
            address,
            contactMobile;

        nickName = $("#nickName").val();
        address = $("#address").val();
        contactMobile = $("#contactMobile").val();

        var data = {};
        data ['resultBasic1.babyId'] = parseInt($("#babyid").val());
        data ['resultBasic1.nickName'] = nickName;
        data ['resultBasic1.address'] = address;
        data ['resultBasic1.contactMobile'] = contactMobile;
        data ['resultBasic1.headImgUrl'] = $("#imgUrl").val();

        $.ajax({
            url: 'saveresultBasic1',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultBasic1.id;
                var refreshData = {
                    babyid: $("#babyid").val(),
                    testId: 33,
                    resultId: rId
                };
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        window.location = "newtestAllergy?babyid=" + parseInt($("#babyid").val());
                    }
                })
                // window.location = "newtestAllergy?babyid=" + parseInt($("#babyid").val());
            }
        })
    }


</script>

</body>
</html>