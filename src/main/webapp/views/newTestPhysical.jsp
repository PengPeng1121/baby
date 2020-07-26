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
        <h1 style="margin-top: 0px;margin-bottom: 20px;">体格头面检查</h1>
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
                <table id="table-main" align="center" border="1px solid" style="margin: 0;width: 100%">
                    <tbody style="width: 100%">
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>1</td>
                            <td>
                                毛发
                            </td>
                            <td>
                                <label for="radio-answer-1-1">
                                    <input type="radio" name="answer-1" value="1" checked  id="radio-answer-1-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-1-0">
                                    <input type="radio" name="answer-1" value="0" id="radio-answer-1-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-1-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>2</td>
                            <td>
                                指甲
                            </td>
                            <td>
                                <label for="radio-answer-2-1">
                                    <input type="radio" name="answer-2" value="1" checked  id="radio-answer-2-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-2-0">
                                    <input type="radio" name="answer-2" value="0" id="radio-answer-2-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-2-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">    
                            <td>3</td>
                            <td>
                                皮肤
                            </td>
                            <td>
                                <label for="radio-answer-3-1">
                                    <input type="radio" name="answer-3" value="1" checked  id="radio-answer-3-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-3-0">
                                    <input type="radio" name="answer-3" value="0" id="radio-answer-3-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-3-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>4</td>
                            <td>
                                面色
                            </td>
                            <td>
                                <label for="radio-answer-4-1">
                                    <input type="radio" name="answer-4" value="1" checked  id="radio-answer-4-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-4-0">
                                    <input type="radio" name="answer-4" value="0" id="radio-answer-4-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-4-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            
                            <td>5</td>
                            <td>
                                头部
                            </td>
                            <td>
                                <label for="radio-answer-5-1">
                                    <input type="radio" name="answer-5" value="1" checked id="radio-answer-5-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-5-0">
                                    <input type="radio" name="answer-5" value="0" id="radio-answer-5-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-5-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>6</td>
                            <td>
                                眼
                            </td>
                            <td>
                                <label for="radio-answer-6-1">
                                    <input type="radio" name="answer-6" value="1" checked id="radio-answer-6-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-6-0">
                                    <input type="radio" name="answer-6" value="0"  id="radio-answer-6-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-6-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>7</td>
                            <td>
                                耳
                            </td>
                            <td>
                                <label for="radio-answer-7-1">
                                    <input type="radio" name="answer-7" value="1" checked id="radio-answer-7-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-7-0">
                                    <input type="radio" name="answer-7" value="0" id="radio-answer-7-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-7-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>8</td>
                            <td>
                                口腔
                            </td>
                            <td>
                                <label for="radio-answer-8-1">
                                    <input type="radio" name="answer-8" value="1" checked id="radio-answer-8-1"  />正常
                                </label>
                            </td>
                            <td>
                                <label>
                                    <input type="radio" name="answer-8" value="0" id="radio-answer-8-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-8-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>9</td>
                            <td>
                                颈部
                            </td>
                            <td>
                                <label for="radio-answer-9-1">
                                    <input type="radio" name="answer-9" value="1" checked id="radio-answer-9-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-9-0">
                                    <input type="radio" name="answer-9" value="0" id="radio-answer-9-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-9-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>10</td>
                            <td>
                                淋巴结
                            </td>
                            <td>
                                <label for="radio-answer-10-1">
                                    <input type="radio" name="answer-10" value="1" checked id="radio-answer-10-1"  />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-10-0">
                                    <input type="radio" name="answer-10" value="0"  id="radio-answer-10-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-10-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>11</td>
                            <td>
                                胸廓
                            </td>
                            <td>
                                <label for="radio-answer-11-1">
                                    <input type="radio" name="answer-11" value="1" checked  id="radio-answer-11-1"  />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-11-0">
                                    <input type="radio" name="answer-11" value="0"  id="radio-answer-11-0"  />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-11-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>12</td>
                            <td>
                                心脏
                            </td>
                            <td>
                                <label for="radio-answer-12-1">
                                    <input type="radio" name="answer-12" value="1" checked id="radio-answer-12-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-12-0">
                                    <input type="radio" name="answer-12" value="0" id="radio-answer-12-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-12-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>13</td>
                            <td>
                                肺
                            </td>
                            <td>
                                <label for="radio-answer-13-1">
                                    <input type="radio" name="answer-13" value="1" checked  id="radio-answer-13-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-13-0">
                                    <input type="radio" name="answer-13" value="0" id="radio-answer-13-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-13-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>14</td>
                            <td>
                                腹
                            </td>
                            <td>
                                <label for="radio-answer-14-1">
                                    <input type="radio" name="answer-14" value="1" checked id="radio-answer-14-1" />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-14-0">
                                    <input type="radio" name="answer-14" value="0" id="radio-answer-14-0" />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-14-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>15</td>
                            <td>
                                四肢
                            </td>
                            <td>
                                <label for="radio-answer-15-1">
                                    <input type="radio" name="answer-15" value="1" checked id="radio-answer-15-1"  />正常
                                </label>        
                            </td>
                            <td>
                                <label for="radio-answer-15-0">
                                    <input type="radio" name="answer-15" value="0" id="radio-answer-15-0"  />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-15-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>16</td>
                            <td>
                                肛门/外生殖器
                            </td>
                            <td>
                                <label for="radio-answer-16-1">
                                    <input type="radio" name="answer-16" value="1" checked id="radio-answer-16-1"  />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-16-0">
                                    <input type="radio" name="answer-16" value="0" id="radio-answer-16-0"  />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-16-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td>17</td>
                            <td>
                                可疑VD缺乏症状
                            </td>
                            <td>
                                <label for="radio-answer-17-1">
                                    <input type="radio" name="answer-17" value="1" checked id="radio-answer-17-1"  />正常
                                </label>
                            </td>
                            <td>
                                <label for="radio-answer-17-0">
                                    <input type="radio" name="answer-17" value="0" id="radio-answer-17-0"  />其他
                                </label>
                            </td>
                            <td>
                                <input id="answer-17-detail"  style="width: 80%" />
                            </td>
                        </tr>
                        <tr style="font-weight: bold;font-size: 16px;background-color: #d9edf7;">
                            <td colspan="5">
                                <textarea name="" id="remark" cols="100" rows="10" style="resize:none"></textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                <a type="button" class="btn btn-primary pull-right" onclick="save()" >保存</a>
            </div>

            <input id="babyid" type="hidden" value="<s:property value="baby.babyid"/>">


        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">



    //月龄
    var days = parseInt($('#days').val());

    

    function save() {
        
            $.tipModal('confirm', 'success', '确定保存本测评？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }


    function score() {
        var hairIsNormal = parseInt($("input:radio[name='answer-1']:checked").val());
        var hairReason = $("#answer-1-detail").val() || '';
        var fingernailIsNormal = parseInt($("input:radio[name='answer-2']:checked").val());
        var fingernailReason = $("#answer-2-detail").val() || '';
        var skinIsNormal = parseInt($("input:radio[name='answer-3']:checked").val());
        var skinReason = $("#answer-3-detail").val() || '';
        var faceIsNormal = parseInt($("input:radio[name='answer-4']:checked").val());
        var faceReason = $("#answer-4-detail").val() || '';
        var headIsNormal = parseInt($("input:radio[name='answer-5']:checked").val());
        var headReason = $("#answer-5-detail").val() || '';
        var eyeIsNormal = parseInt($("input:radio[name='answer-6']:checked").val());
        var eyeReason = $("#answer-6-detail").val() || '';
        var earIsNormal = parseInt($("input:radio[name='answer-7']:checked").val());
        var earReason = $("#answer-7-detail").val() || '';
        var mouthIsNormal = parseInt($("input:radio[name='answer-8']:checked").val());
        var mouthReason = $("#answer-8-detail").val() || '';
        var neckIsNormal = parseInt($("input:radio[name='answer-9']:checked").val());
        var neckReason = $("#answer-9-detail").val() || '';
        var lymphIsNormal = parseInt($("input:radio[name='answer-10']:checked").val());
        var lymphReason = $("#answer-10-detail").val() || '';
        var thoracicCavityIsNormal = parseInt($("input:radio[name='answer-11']:checked").val());
        var thoracicCavityReason = $("#answer-11-detail").val() || '';
        var heartIsNormal = parseInt($("input:radio[name='answer-12']:checked").val());
        var heartReason = $("#answer-12-detail").val() || '';
        var lungIsNormal = parseInt($("input:radio[name='answer-13']:checked").val());
        var lungReason = $("#answer-13-detail").val() || '';
        var stomachIsNormal = parseInt($("input:radio[name='answer-14']:checked").val());
        var stomachReason = $("#answer-14-detail").val() || '';
        var limbIsNormal = parseInt($("input:radio[name='answer-15']:checked").val());
        var limbReason = $("#answer-15-detail").val() || '';
        var sexFeaturesIsNormal = parseInt($("input:radio[name='answer-16']:checked").val());
        var sexFeaturesReason = $("#answer-16-detail").val() || '';
        var vdIsNormal = parseInt($("input:radio[name='answer-17']:checked").val());
        var vdReason = $("#answer-17-detail").val() || '';
        var remark = $("#remark").val() || '';
        
        var data = "{";
        data += "'resultPhysical.babyId':" + $("#babyid").val() + ",";
        
        data += "'resultPhysical.hairIsNormal':" + hairIsNormal + ",";
        if (hairReason) {
            data += "'resultPhysical.hairReason':'" + hairReason + "',";
        }
        // data += "'resultPhysical.hairReason':" + hairReason + ",";

        data += "'resultPhysical.fingernailIsNormal':" + fingernailIsNormal + ",";
        if (fingernailReason) {
            data += "'resultPhysical.fingernailReason':'" + fingernailReason + "',";
        }
        // data += "'resultPhysical.fingernailReason':" + fingernailReason + ",";

        data += "'resultPhysical.skinIsNormal':" + skinIsNormal + ",";
        if (skinReason) {
            data += "'resultPhysical.skinReason':'" + skinReason + "',";
        }
        // data += "'resultPhysical.skinReason':" + skinReason + ",";

        data += "'resultPhysical.faceIsNormal':" + faceIsNormal + ",";
        if (faceReason) {
            data += "'resultPhysical.faceReason':'" + faceReason + "',";
        }
        // data += "'resultPhysical.faceReason':" + faceReason + ",";

        data += "'resultPhysical.headIsNormal':" + headIsNormal + ",";
        if (headReason) {
            data += "'resultPhysical.headReason':'" + headReason + "',";
        }
        // data += "'resultPhysical.headReason':" + headReason + ",";

        data += "'resultPhysical.eyeIsNormal':" + eyeIsNormal + ",";
        if (eyeReason) {
            data += "'resultPhysical.eyeReason':'" + eyeReason + "',";
        }
        // data += "'resultPhysical.eyeReason':" + eyeReason + ",";

        data += "'resultPhysical.earIsNormal':" + earIsNormal + ",";
        if (earReason) {
            data += "'resultPhysical.earReason':'" + earReason + "',";
        }
        // data += "'resultPhysical.earReason':" + earReason + ",";

        data += "'resultPhysical.mouthIsNormal':" + mouthIsNormal + ",";
        if (mouthReason) {
            data += "'resultPhysical.mouthReason':'" + mouthReason + "',";
        }
        // data += "'resultPhysical.mouthReason':" + mouthReason + ",";

        data += "'resultPhysical.neckIsNormal':" + neckIsNormal + ",";
        if (neckReason) {
            data += "'resultPhysical.neckReason':'" + neckReason + "',";
        }
        // data += "'resultPhysical.neckReason':" + neckReason + ",";

        data += "'resultPhysical.lymphIsNormal':" + lymphIsNormal + ",";
        if (lymphReason) {
            data += "'resultPhysical.lymphReason':'" + lymphReason + "',";
        }
        // data += "'resultPhysical.lymphReason':" + lymphReason + ",";

        data += "'resultPhysical.thoracicCavityIsNormal':" + thoracicCavityIsNormal + ",";
        if (thoracicCavityReason) {
            data += "'resultPhysical.thoracicCavityReason':'" + thoracicCavityReason + "',";
        }
        // data += "'resultPhysical.thoracicCavityReason':" + thoracicCavityReason + ",";

        data += "'resultPhysical.heartIsNormal':" + heartIsNormal + ",";
        if (heartReason) {
            data += "'resultPhysical.heartReason':'" + heartReason + "',";
        }
        // data += "'resultPhysical.heartReason':" + heartReason + ",";

        data += "'resultPhysical.lungIsNormal':" + lungIsNormal + ",";
        if (lungReason) {
            data += "'resultPhysical.lungReason':'" + lungReason + "',";
        }
        // data += "'resultPhysical.lungReason':" + lungReason + ",";

        data += "'resultPhysical.stomachIsNormal':" + stomachIsNormal + ",";
        if (stomachReason) {
            data += "'resultPhysical.stomachReason':'" + stomachReason + "',";
        }
        // data += "'resultPhysical.stomachReason':" + stomachReason + ",";

        data += "'resultPhysical.limbIsNormal':" + limbIsNormal + ",";
        if (limbReason) {
            data += "'resultPhysical.limbReason':'" + limbReason + "',";
        }
        // data += "'resultPhysical.limbReason':" + limbReason + ",";

        data += "'resultPhysical.sexFeaturesIsNormal':" + sexFeaturesIsNormal + ",";
        if (sexFeaturesReason) {
            data += "'resultPhysical.sexFeaturesReason':'" + sexFeaturesReason + "',";
        }
        // data += "'resultPhysical.sexFeaturesReason':" + sexFeaturesReason + ",";

        data += "'resultPhysical.vdIsNormal':" + vdIsNormal + ",";
        if (vdReason) {
            data += "'resultPhysical.vdReason':'" + vdReason + "',";
        }
        // data += "'resultPhysical.vdReason':" + vdReason + ",";

        if (remark) {
            data += "'resultPhysical.remark':'" + remark + "'";
        }
        // data += "'resultPhysical.remark':" + remark + ",";

        data += "}";
        
        $.ajax({
            url: 'saveresultPhysical',
            type: 'post',
            data: eval('(' + data + ')'),
            success:function (json) {
                window.location = "showresultPhysical?id=" + json.resultPhysical.id;
            }
        })
    }


</script>

</body>
</html>