<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/"/>
    <title>评测结果-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style>
        #hemaFront {
            /*background-image: url(statics/img/hemaGroupBgBoy.png); */
            background-size: 100% 100%;
            padding-top: 0px;
            /*margin-top: 70px;*/
            background-color: transparent;
            /*width: 800px;*/
        }
        .column-body{
            width: 500px;
            height: 240px;
            margin-left: 50px;
            margin-top: 5px;
        }
        .item-line{
            border-bottom: 1px solid #df9390;
            height: 40px;
        }
        .item{
            letter-spacing: 8px;
            width: 230px;
        }
        body, table, tbody, tr, td {
            background-color: transparent;
        }
        input[type="radio"] {
            display: none;
        }
        input[type='radio'] + label:before{
            content: "";
            display: inline-block;
            width: 20px;
            height: 20px;
            border: 2px solid #df9390;
            border-radius:50%;
            position: relative;
            top: 5px;
        }
        input[type='radio']:checked + label:before{
            background-color: #000;
        }
        label {
            font-size: 14px;
            letter-spacing: 3px;
            font-weight: normal;
        }
        .detail{
            margin: 0px;
            font-weight: normal;
            font-size: 14px;
        }
    </style>
    <style type="text/css" media="print">
        @page
        {
            size:  auto portrait;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
        input, .noprint {
            display: none
        }
        div{
            padding: 0px !important;
            margin: 0px !important;
        }
        .column-body{
            width: 500px !important;
            height: 240px !important;
            margin-left: 50px !important;
            margin-top: 5px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultPhysical.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultPhysical.id"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">


        <input id="hairIsNormal" type="hidden" value="<s:property value="resultPhysical.hairIsNormal"/>">
        <input id="fingernailIsNormal" type="hidden" value="<s:property value="resultPhysical.fingernailIsNormal"/>">
        <input id="skinIsNormal" type="hidden" value="<s:property value="resultPhysical.skinIsNormal"/>">
        <input id="faceIsNormal" type="hidden" value="<s:property value="resultPhysical.faceIsNormal"/>">
        <input id="headIsNormal" type="hidden" value="<s:property value="resultPhysical.headIsNormal"/>">
        <input id="eyeIsNormal" type="hidden" value="<s:property value="resultPhysical.eyeIsNormal"/>">
        <input id="earIsNormal" type="hidden" value="<s:property value="resultPhysical.earIsNormal"/>">


        <input id="mouthIsNormal" type="hidden" value="<s:property value="resultPhysical.mouthIsNormal"/>">
        <input id="neckIsNormal" type="hidden" value="<s:property value="resultPhysical.neckIsNormal"/>">
        <input id="lymphIsNormal" type="hidden" value="<s:property value="resultPhysical.lymphIsNormal"/>">
        <input id="thoracicCavityIsNormal" type="hidden" value="<s:property value="resultPhysical.thoracicCavityIsNormal"/>">
        <input id="heartIsNormal" type="hidden" value="<s:property value="resultPhysical.heartIsNormal"/>">
        <input id="lungIsNormal" type="hidden" value="<s:property value="resultPhysical.lungIsNormal"/>">

        <input id="stomachIsNormal" type="hidden" value="<s:property value="resultPhysical.stomachIsNormal"/>">
        <input id="limbIsNormal" type="hidden" value="<s:property value="resultPhysical.limbIsNormal"/>">
        <input id="sexFeaturesIsNormal" type="hidden" value="<s:property value="resultPhysical.sexFeaturesIsNormal"/>">
        <input id="vdIsNormal" type="hidden" value="<s:property value="resultPhysical.vdIsNormal"/>">


        <input id="hairReason" type="hidden" value="<s:property value="resultPhysical.hairReason"/>">
        <input id="fingernailReason" type="hidden" value="<s:property value="resultPhysical.fingernailReason"/>">
        <input id="skinReason" type="hidden" value="<s:property value="resultPhysical.skinReason"/>">
        <input id="faceReason" type="hidden" value="<s:property value="resultPhysical.faceReason"/>">
        <input id="headReason" type="hidden" value="<s:property value="resultPhysical.headReason"/>">
        <input id="eyeReason" type="hidden" value="<s:property value="resultPhysical.eyeReason"/>">
        <input id="earReason" type="hidden" value="<s:property value="resultPhysical.earReason"/>">
        <input id="mouthReason" type="hidden" value="<s:property value="resultPhysical.mouthReason"/>">
        <input id="neckReason" type="hidden" value="<s:property value="resultPhysical.neckReason"/>">
        <input id="lymphReason" type="hidden" value="<s:property value="resultPhysical.lymphReason"/>">
        <input id="thoracicCavityReason" type="hidden" value="<s:property value="resultPhysical.thoracicCavityReason"/>">
        <input id="heartReason" type="hidden" value="<s:property value="resultPhysical.heartReason"/>">
        <input id="lungReason" type="hidden" value="<s:property value="resultPhysical.lungReason"/>">
        <input id="stomachReason" type="hidden" value="<s:property value="resultPhysical.stomachReason"/>">
        <input id="limbReason" type="hidden" value="<s:property value="resultPhysical.limbReason"/>">
        <input id="sexFeaturesReason" type="hidden" value="<s:property value="resultPhysical.sexFeaturesReason"/>">
        <input id="vdReason" type="hidden" value="<s:property value="resultPhysical.vdReason"/>">



        <input id="remark" type="hidden" value="<s:property value="resultPhysical.remark"/>">



        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg4Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1080px;" src="statics/img/hemaBg4Girl.jpg"">
                    </s:if>

                    <table style="width: 20%;
                        border: 0;
                        position: relative;
                        top: 120px;
                        left: 50px;
                        font-size: 16px">
                        <tr>
                            <td class="col-md-5" style="font-weight: bold;">
                                <span style="letter-spacing: 18px">姓</span>
                                <span style="letter-spacing: 1px">名:</span>
                            </td>
                            <td class="col-md-7" style="border-bottom: 1px solid #df938f;padding-left: 0px"><s:property value="baby.name"/></td>
                        </tr>
                    </table>

                    <table style="width: 660px; height:760px;border:0;font-size: 16px;font-weight: bold; position: relative;top: 210px;left: 60px" id="content-table">
                        <tr class="item-line">
                            <td class="item">
                                毛发
                            </td>
                            <td style="width: 75px">
                                <input type="radio" name="answer-1" value="1" checked  id="radio-answer-1-1">
                                <label for="radio-answer-1-1">正常</label>
                            </td>
                            <td style="width: 75px">
                                <input type="radio" name="answer-1" value="0" id="radio-answer-1-0">
                                <label for="radio-answer-1-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-1-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                指甲
                            </td>
                            <td>
                                <input type="radio" name="answer-2" value="1" checked  id="radio-answer-2-1">
                                <label for="radio-answer-2-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-2" value="0" id="radio-answer-2-0">
                                <label for="radio-answer-2-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-2-detail" class="detail"/>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                皮肤
                            </td>
                            <td>
                                <input type="radio" name="answer-3" value="1" checked  id="radio-answer-3-1">
                                <label for="radio-answer-3-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-3" value="0" id="radio-answer-3-0">
                                <label for="radio-answer-3-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-3-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                面色
                            </td>
                            <td>
                                <input type="radio" name="answer-4" value="1" checked  id="radio-answer-4-1">
                                <label for="radio-answer-4-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-4" value="0" id="radio-answer-4-0">
                                <label for="radio-answer-4-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-4-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                头部
                            </td>
                            <td>
                                <input type="radio" name="answer-5" value="1" checked id="radio-answer-5-1">
                                <label for="radio-answer-5-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-5" value="0" id="radio-answer-5-0">
                                <label for="radio-answer-5-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-5-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                眼
                            </td>
                            <td>
                                <input type="radio" name="answer-6" value="1" checked id="radio-answer-6-1">
                                <label for="radio-answer-6-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-6" value="0"  id="radio-answer-6-0">
                                <label for="radio-answer-6-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-6-detail" class="detail"  />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                耳
                            </td>
                            <td>
                                <input type="radio" name="answer-7" value="1" checked id="radio-answer-7-1">
                                <label for="radio-answer-7-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-7" value="0" id="radio-answer-7-0">
                                <label for="radio-answer-7-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-7-detail" class="detail"  />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                口腔
                            </td>
                            <td>
                                <input type="radio" name="answer-8" value="1" checked id="radio-answer-8-1" >
                                <label for="radio-answer-8-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-8" value="0" id="radio-answer-8-0" >
                                <label for="radio-answer-8-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-8-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                颈部
                            </td>
                            <td>
                                <input type="radio" name="answer-9" value="1" checked id="radio-answer-9-1" >
                                <label for="radio-answer-9-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-9" value="0" id="radio-answer-9-0" >
                                <label for="radio-answer-9-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-9-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                淋巴结
                            </td>
                            <td>
                                <input type="radio" name="answer-10" value="1" checked id="radio-answer-10-1" >
                                <label for="radio-answer-10-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-10" value="0"  id="radio-answer-10-0" >
                                <label for="radio-answer-10-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-10-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                胸廓
                            </td>
                            <td>
                                <input type="radio" name="answer-11" value="1" checked  id="radio-answer-11-1" >
                                <label for="radio-answer-11-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-11" value="0"  id="radio-answer-11-0" >
                                <label for="radio-answer-11-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-11-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                心脏
                            </td>
                            <td>
                                <input type="radio" name="answer-12" value="1" checked id="radio-answer-12-1">
                                <label for="radio-answer-12-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-12" value="0" id="radio-answer-12-0">
                                <label for="radio-answer-12-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-12-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                肺
                            </td>
                            <td>
                                <input type="radio" name="answer-13" value="1" checked  id="radio-answer-13-1">
                                <label for="radio-answer-13-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-13" value="0" id="radio-answer-13-0">
                                <label for="radio-answer-13-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-13-detail" class="detail"/>
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                腹
                            </td>
                            <td>
                                <input type="radio" name="answer-14" value="1" checked id="radio-answer-14-1">
                                <label for="radio-answer-14-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-14" value="0" id="radio-answer-14-0">
                                <label for="radio-answer-14-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-14-detail" class="detail" />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item">
                                四肢
                            </td>
                            <td>
                                <input type="radio" name="answer-15" value="1" checked id="radio-answer-15-1" >
                                <label for="radio-answer-15-1">正常</label>        
                            </td>
                            <td>
                                <input type="radio" name="answer-15" value="0" id="radio-answer-15-0"  >
                                <label for="radio-answer-15-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-15-detail" class="detail"  />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item" style="letter-spacing: 1px">
                                肛门/外生殖器
                            </td>
                            <td>
                                <input type="radio" name="answer-16" value="1" checked id="radio-answer-16-1"  >
                                <label for="radio-answer-16-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-16" value="0" id="radio-answer-16-0"  >
                                <label for="radio-answer-16-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-16-detail" class="detail"  />
                            </td>
                        </tr>
                        <tr class="item-line">
                            <td class="item" style="letter-spacing: 1px">
                                可疑VD缺乏症状
                            </td>
                            <td>
                                <input type="radio" name="answer-17" value="1" id="radio-answer-17-1"  >
                                <label for="radio-answer-17-1">正常</label>
                            </td>
                            <td>
                                <input type="radio" name="answer-17" value="0" id="radio-answer-17-0" >
                                <label for="radio-answer-17-0">其他</label>
                            </td>
                            <td>
                                <p id="answer-17-detail" class="detail"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <!-- <p id="remarkText" style="font-weight: normal;"></p> -->
                                <textarea id="remarkText" rows="3" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div style="width:270px;float: right">
                <!-- <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div> -->
                <div ><a type="button" class="btn btn-primary noprint pull-right print" style="">打印结果</a></div>
            </div>　
        </div>
    <footer class="footer-default noprint">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">
</script>
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var resultid = $('#resultid').val();
    var days = $('#days').val();
    var gender = $('#gender').val();
    var remark = $('#remark').val();

    var hairIsNormal = $('#hairIsNormal').val();
    var hairReason = $('#hairReason').val();
    $("#answer-1-detail").text(hairReason);

    var fingernailIsNormal = $('#fingernailIsNormal').val();
    var fingernailReason = $('#fingernailReason').val();
    $("#answer-2-detail").text(fingernailReason);

    var skinIsNormal = $('#skinIsNormal').val();
    var skinReason = $('#skinReason').val();
    $("#answer-3-detail").text(skinReason);

    var faceIsNormal = $('#faceIsNormal').val();
    var faceReason = $('#faceReason').val();
    $("#answer-4-detail").text(faceReason);

    var headIsNormal = $('#headIsNormal').val();
    var headReason = $('#headReason').val();
    $("#answer-5-detail").text(headReason);

    var eyeIsNormal = $('#eyeIsNormal').val();
    var eyeReason = $('#eyeReason').val();
    $("#answer-6-detail").text(eyeReason);

    var earIsNormal = $('#earIsNormal').val();
    var earReason = $('#earReason').val();
    $("#answer-7-detail").text(earReason);

    var mouthIsNormal = $('#mouthIsNormal').val();
    var mouthReason = $('#mouthReason').val();
    $("#answer-8-detail").text(mouthReason);

    var neckIsNormal = $('#neckIsNormal').val();
    var neckReason = $('#neckReason').val();
    $("#answer-9-detail").text(neckReason);

    var lymphIsNormal = $('#lymphIsNormal').val();
    var lymphReason = $('#lymphReason').val();
    $("#answer-10-detail").text(lymphReason);

    var thoracicCavityIsNormal = $('#thoracicCavityIsNormal').val();
    var thoracicCavityReason = $('#thoracicCavityReason').val();
    $("#answer-11-detail").text(thoracicCavityReason);

    var heartIsNormal = $('#heartIsNormal').val();
    var heartReason = $('#heartReason').val();
    $("#answer-12-detail").text(heartReason);

    var lungIsNormal = $('#lungIsNormal').val();
    var lungReason = $('#lungReason').val();
    $("#answer-13-detail").text(lungReason);

    var stomachIsNormal = $('#stomachIsNormal').val();
    var stomachReason = $('#stomachReason').val();
    $("#answer-14-detail").text(stomachReason);

    var limbIsNormal = $('#limbIsNormal').val();
    var limbReason = $('#limbReason').val();
    $("#answer-15-detail").text(limbReason);

    var sexFeaturesIsNormal = $('#sexFeaturesIsNormal').val();
    var sexFeaturesReason = $('#sexFeaturesReason').val();
    $("#answer-16-detail").text(sexFeaturesReason);

    var vdIsNormal = $('#vdIsNormal').val();
    var vdReason = $('#vdReason').val();
    $("#answer-17-detail").text(vdReason);

    $("input:radio[name='answer-1'][value='"+ hairIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-2'][value='"+ fingernailIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-3'][value='"+ skinIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-4'][value='"+ faceIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-5'][value='"+ headIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-6'][value='"+ eyeIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-7'][value='"+ earIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-8'][value='"+ mouthIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-9'][value='"+ neckIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-10'][value='"+ lymphIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-11'][value='"+ thoracicCavityIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-12'][value='"+ heartIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-13'][value='"+ lungIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-14'][value='"+ stomachIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-15'][value='"+ limbIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-16'][value='"+ sexFeaturesIsNormal +"']").attr('checked','true');
    $("input:radio[name='answer-17'][value='"+ vdIsNormal +"']").attr('checked','true');



    var reg = new RegExp("<br>","g");//g,表示全部替换。
    remark = remark.replace(reg,"\n");
    $('#remarkText').html(remark);


    function draw () {

    }
    
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

