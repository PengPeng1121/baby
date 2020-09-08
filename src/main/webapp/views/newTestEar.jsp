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
    <div class="container">
        <h1 style="margin-top: 0px;margin-bottom: 20px;">体力筛查</h1>
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
                <div class="panel-heading">上传听力筛查图片</div>
                <div class="panel-body front-no-padding" style="padding: 15px;">
                    
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <img id="preview1" style="width: 200px">
                        <input id="imgUrl1" type="hidden" >
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <form id="form1" method="POST" enctype="multipart/form-data"
                              onsubmit="return check();">
                            <input type="file" accept="image/*" name="file" id="file1"/>
                            <input type="button"  onclick="uploadImg1()" value="提交"/>
                        </form>
                    </div>


                    <div class="col-md-12" style="padding-bottom: 10px">
                        <img id="preview2" style="width: 200px">
                        <input id="imgUrl2" type="hidden" >
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <form id="form2" method="POST" enctype="multipart/form-data"
                              onsubmit="return check();">
                            <input type="file" accept="image/*" name="file" id="file2"/>
                            <input type="button"  onclick="uploadImg2()" value="提交"/>
                        </form>
                    </div>


                    
                </div>
            </div>

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">

    var fileDom1 = document.getElementById("file1");
    var previewDom1 = document.getElementById("preview1");
    fileDom1.addEventListener("change", e=>{
        var file = fileDom1.files[0];
        // check if input contains a valid image file
        if (!file || file.type.indexOf("image/") < 0) {
            fileDom1.value = "";
            previewDom1.src = "";
            return;
        }

        // use FileReader to load image and show preview of the image
        var fileReader = new FileReader();
        fileReader.onload = e=>{
            previewDom1.src = e.target.result;
        };
        fileReader.readAsDataURL(file);
    });


    var fileDom2 = document.getElementById("file2");
    var previewDom2 = document.getElementById("preview2");
    fileDom2.addEventListener("change", e=>{
        var file = fileDom2.files[0];
        // check if input contains a valid image file
        if (!file || file.type.indexOf("image/") < 0) {
            fileDom2.value = "";
            previewDom2.src = "";
            return;
        }

        // use FileReader to load image and show preview of the image
        var fileReader = new FileReader();
        fileReader.onload = e=>{
            previewDom2.src = e.target.result;
        };
        fileReader.readAsDataURL(file);
    });




    var formDom1 = document.getElementById("form1");
    function check() {
        var file = fileDom1.files[0];
        // check if input contains a valid image file
        if (!file || file.type.indexOf("image/") < 0) {
            return false;
        }
        return true;
    }


    var formDom2 = document.getElementById("form2");
    function check() {
        var file = fileDom2.files[0];
        // check if input contains a valid image file
        if (!file || file.type.indexOf("image/") < 0) {
            return false;
        }
        return true;
    }



    function uploadImg1() {
        var formData = new FormData();
        var file = fileDom1.files[0]; 
        formData.append("filename", file.name);
        formData.append("file", file);
        formData.append("testId", 42);
        formData.append("type", 1);
        formData.append("babyId", $('#babyid').val());
        $.ajax({
            url: "babyImg/uploadEarImg",
            type: "POST",
            enctype: "multipart/form-data",
            data: formData,
            processData: false,
            contentType: false,
            dataType: "json",
            success: function (json) {
                $('#imgUrl1').val(json.earImgUrlFirst);
            }
        });
    }


    function uploadImg2() {
        var formData = new FormData();
        var file = fileDom2.files[0]; 
        formData.append("filename", file.name);
        formData.append("file", file);
        formData.append("testId", 42);
        formData.append("type", 2);
        formData.append("babyId", $('#babyid').val());
        $.ajax({
            url: "babyImg/uploadEarImg",
            type: "POST",
            enctype: "multipart/form-data",
            data: formData,
            processData: false,
            contentType: false,
            dataType: "json",
            success: function (json) {
                $('#imgUrl2').val(json.earImgUrlSecond);
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


    function score() {
        

        var data = {};
        data ['resultEar.earImgUrlFirst'] = $("#imgUrl1").val();
        data ['resultEar.earImgUrlSecond'] = $("#imgUrl2").val();
        data ['resultEar.babyId'] = parseInt($("#babyid").val());

        $.ajax({
            url: 'saveresultEar',
            type: 'post',
            data: data,
            success:function (json) {
                window.location = "showresultEar?id=" + json.resultEar.id;
            }
        })
    }


</script>

</body>
</html>