<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/" />
    <%@include file="/statics/head.html"%>
    <title>首页管理-儿童发育评测平台</title>
</head>
<body class="front-body">
<div class="front-inner front-inner-media">
    <s:include value="nav.jsp?act=admin"/>
    <div class="container">
        <div class="row front-canvas" id="front-canvas">
            <s:include value="/template/admin_left.jsp?index=index"/>
            <div class="col-md-9" >
                <div class="panel panel-default front-panel ">
                    <div class="panel-heading">修改首页Logo</div>
                        <div class="panel-body" style="height: 100px;">
                            <div class="col-md-6 col-sm-6"><img id="logoLandingImg" src="http://123.56.19.0/image/<s:property value="hospital.logoLanding"/>" style="height: 30px;width: 250px;"></div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-6">
                                <span class="visible-md visible-lg visible-sm" style="height: 50px"></span>
                                <span class="visible-xs" style="height: 25px"></span>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-7 pull-right" ><input id="logoLanding" type="file" name="file" accept="image/*"></div>
                        </div>
                </div>
                <div class="panel panel-default front-panel ">
                    <div class="panel-heading">修改首页Banner</div>
                        <div class="panel-body visible-md visible-lg visible-sm" style="height: 100px;">
                            <div class="col-md-6 col-sm-6"><img id="bannerLandingImg" src="http://123.56.19.0/image/<s:property value="hospital.bannerLanding"/>" style="height: 80px;width: 250px;"></div>
                            <div class="col-md-6 col-lg-6 col-sm-6">
                                <span class="visible-md visible-lg visible-sm" style="height: 50px"></span>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-4 pull-right">
                                <input id="bannerLanding" type="file" name="file" accept="image/*">
                            </div>
                        </div>
                    <div class="panel-body visible-xs" style="height: 150px;">
                        <div><img id="bannerLandingImg1" src="http://123.56.19.0/image/<s:property value="hospital.bannerLanding"/>" style="height: 80px;width: 250px;"></div>
                        <div class="col-xs-12">
                            <span class="visible-xs" style="height: 25px"></span>
                        </div>
                        <div class="col-xs-7 pull-right">
                            <input id="bannerLanding1" type="file" name="file" accept="image/*">
                        </div>
                    </div>
                </div>
                <div class="panel panel-default front-panel ">
                    <div class="panel-heading">修改内页Logo</div>
                        <div class="panel-body" style="height: 100px;">
                            <div class="col-md-6 col-sm-6"><img id="logoImg" src="http://123.56.19.0/image/<s:property value="hospital.logo"/>" style="height: 30px;width: 250px;"></div>
                            <div class="col-md-6 col-lg-6 col-xs-12 col-sm-6">
                                <span class="visible-md visible-lg visible-sm" style="height: 50px"></span>
                                <span class="visible-xs" style="height: 25px"></span>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-7 pull-right"><input id="logo" type="file" name="file" accept="image/*"></div>
                        </div>
                    </div>
                <div class="panel panel-default front-panel ">
                    <div class="panel-heading">修改医院</div>
                    <div class="panel-body" style="height: 100px;">
                        <div class="col-md-6 col-sm-6">单位名称：<s:property value="hospital.name"/></div>
                        <div class="col-md-6 col-lg-6 col-xs-12 col-sm-6">
                            <span class="visible-md visible-lg visible-sm" style="height: 40px"></span>
                            <span class="visible-xs" style="height: 25px"></span>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-4 col-sm-6 pull-right" style="padding: 0">
                            <button class="btn btn-default pull-right" data-toggle="modal" data-target="#changehospitalname">
                                <span class="glyphicon glyphicon-edit"></span>修改单位名称
                            </button>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="changehospitalname" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">修改单位名称</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-horizontal" style="width:100%;margin-top: 15px;">
                                    <div class="form-group">
                                        <div class="col-md-4">&nbsp;&nbsp;原医院名称：</div>
                                        <div class="col-md-6">
                                            <span><s:property value="hospital.name"/></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-4" style="margin-top:8px;">&nbsp;&nbsp;请输入医院名称：</div>
                                        <div class="col-md-6">
                                            <input id="newhostipal" class="form-control front-no-radius front-no-box-shadow"  type="text">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" onclick="changehospital()">提交更改</button>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
                    <%--<table style="width:100%;">--%>
                        <%--<tbody>--%>
                        <%--<tr style="height: 100px; border-bottom:1px solid #ddd;">--%>
                            <%--<td style="width: 150px;padding-left: 20px;"><strong>修改首页Logo</strong></td>--%>
                            <%--<td style="width: 300px;"><img id="logoLandingImg" src="images/<s:property value="hospital.logoLanding"/>" onerror="javascript:this.src='images/logo.png'" style="height: 30px;width: 250px;"></td>--%>
                            <%--<td><input id="logoLanding" type="file" name="file" accept="image/*"></td>--%>
                        <%--</tr>--%>
                        <%--<tr style="height: 100px;border-bottom:1px solid #ddd;">--%>
                            <%--<td style="padding-left: 20px;"><strong>修改首页Banner</strong></td>--%>
                            <%--<td><img id="bannerLandingImg" src="images/<s:property value="hospital.bannerLanding"/>" onerror="javascript:this.src='images/0002.png'" style="height: 80px;width: 250px;"></td>--%>
                            <%--<td><input id="bannerLanding" type="file" name="file" accept="image/*"></td>--%>
                        <%--</tr>--%>
                        <%--<tr style="height: 100px;">--%>
                            <%--<td style="padding-left: 20px;"><strong>修改内页Logo</strong></td>--%>
                            <%--<td><img id="logoImg" src="images/<s:property value="hospital.logo"/>"  onerror="javascript:this.src='statics/img/landing.png'" style="height: 30px;width: 250px;"></td>--%>
                            <%--<td><input id="logo" type="file" name="file" accept="image/*"></td>--%>
                        <%--</tr>--%>
                        <%--</tbody>--%>
                    <%--</table>--%>

            </div>
        </div>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script>
    function changehospital() {
        if($("#newhostipal").val().trim().length == 0){
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写医院名称！'});
        }else{
            var hospitalname = $("#newhostipal").val().trim();
            $.ajax({
                url: 'updatehospital',
                type: 'post',
                data: {
                    name:hospitalname,
                },
                success: function (data) {
                    if(data.flag){
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'修改成功！'});
                        $("#changehospitalname").modal("hide");
                    }else {
                        $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'修改失败！'});
                    }
                }
            })
        }
    }

    $(':file').on("change", function () {
        $.showLoading('show');
        var position = $(this).attr("id");
        var file = this.files[0];
        var formData = new FormData();
        formData.append("filename", file.name);
        formData.append("file", file);
        formData.append("position", position);
        $.ajax({
            url: "admin/uploadLogo",
            type: "POST",
            enctype: "multipart/form-data",
            data: formData,
            processData: false,
            contentType: false,
            dataType: "json",
            success: function (json) {
                $.showLoading('reset');
                $('#' + position + 'Img').attr("src", "http://123.56.19.0/image/" + json.relativePath);
            }
        });
    })
</script>
</body>
</html>