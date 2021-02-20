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
        <input type="hidden" id="username" value="<s:property value="#session.username"/>">
        <h3 style="margin-top: 0px;margin-bottom: 20px;">本次体检重点需求</h3>
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
                <div class="panel-heading">本次体检您的重点需求</div>
                <div class="panel-body front-no-padding" style="padding: 15px;" id="content">
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">第一需求:</label>
                        <div class="col-md-9">
                           <select id="care1" class="form-control front-no-radius front-no-box-shadow">
                                <option value="0">我想综合了解宝宝的发育的情况</option>
                                <option value="1">身高、体重等生长发育问题</option>
                                <option value="2">喂养问题：如奶量、厌奶、吐奶及辅食添加顺序、性状、种类</option>
                                <option value="3">营养素补充问题：如钙、铁、锌、维生素D等</option>
                                <option value="4">睡眠不好：如摇头，夜醒频繁、哭闹等</option>
                                <option value="5">大便：1.什么颜色答大便是正常的?2.便秘（多久不排便算便秘），便秘怎么改善；3.腹泻（每天排多少次算腹泻），腹泻可以用哪些药物；</option>
                                <option value="6">皮肤易红、起皮疹</option>
                                <option value="7">宝宝是否存在有过敏相关的不适</option>
                                <option value="8">注意力不集中</option>
                                <option value="9">语言问题：如：发音不准，说话晚</option>
                                <option value="10">不喜欢和小朋友交流、玩耍</option>
                                <option value="11">走路步态问题：如O型腿、X型腿等</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">第二需求:</label>
                        <div class="col-md-9">
                           <select id="care2" class="form-control front-no-radius front-no-box-shadow">
                                <option value="0">我想综合了解宝宝的发育的情况</option>
                                <option value="1">身高、体重等生长发育问题</option>
                                <option value="2">喂养问题：如奶量、厌奶、吐奶及辅食添加顺序、性状、种类</option>
                                <option value="3">营养素补充问题：如钙、铁、锌、维生素D等</option>
                                <option value="4">睡眠不好：如摇头，夜醒频繁、哭闹等</option>
                                <option value="5">大便：1.什么颜色答大便是正常的?2.便秘（多久不排便算便秘），便秘怎么改善；3.腹泻（每天排多少次算腹泻），腹泻可以用哪些药物；</option>
                                <option value="6">皮肤易红、起皮疹</option>
                                <option value="7">宝宝是否存在有过敏相关的不适</option>
                                <option value="8">注意力不集中</option>
                                <option value="9">语言问题：如：发音不准，说话晚</option>
                                <option value="10">不喜欢和小朋友交流、玩耍</option>
                                <option value="11">走路步态问题：如O型腿、X型腿等</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-bottom: 10px">
                        <label class="col-md-3 front-label data-input">第三需求:</label>
                        <div class="col-md-9">
                           <select id="care3" class="form-control front-no-radius front-no-box-shadow">
                                <option value="0">我想综合了解宝宝的发育的情况</option>
                                <option value="1">身高、体重等生长发育问题</option>
                                <option value="2">喂养问题：如奶量、厌奶、吐奶及辅食添加顺序、性状、种类</option>
                                <option value="3">营养素补充问题：如钙、铁、锌、维生素D等</option>
                                <option value="4">睡眠不好：如摇头，夜醒频繁、哭闹等</option>
                                <option value="5">大便：1.什么颜色答大便是正常的?2.便秘（多久不排便算便秘），便秘怎么改善；3.腹泻（每天排多少次算腹泻），腹泻可以用哪些药物；</option>
                                <option value="6">皮肤易红、起皮疹</option>
                                <option value="7">宝宝是否存在有过敏相关的不适</option>
                                <option value="8">注意力不集中</option>
                                <option value="9">语言问题：如：发音不准，说话晚</option>
                                <option value="10">不喜欢和小朋友交流、玩耍</option>
                                <option value="11">走路步态问题：如O型腿、X型腿等</option>
                            </select>
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>

            <div style="margin-bottom: 73px;">
                <!-- <a type="button" class="btn btn-primary pull-left" onclick="preview()">预览</a> -->
                
                <a type="button" class="btn btn-default pull-right" style="margin-left: 20px" onclick="save()" >保存</a>
                <!-- <a type="button" class="btn btn-primary pull-right" onclick="saveAndAllergy()" >保存并继续填写食物过敏或不耐受风险评估</a> -->
            </div>
        </form>
    </div>
    <s:include value="/statics/footer.jsp"/>
</div>
<s:include value="/statics/tail.html"/>
<script type="text/javascript">

    var username = $("#username").val();
    
    if (username.indexOf('家长') != -1) {
        $('.navbar').hide();
        $('.footer-default').hide();
        
    }

    function save() {
        
            $.tipModal('confirm', 'success', '确定保存？', function(result) {
                if(result) {
                    score();
                }
            });
        
    }
    function score() {
        var care1,
            care2,
            care3;

        care1 = $("#care1").val();
        care2 = $("#care2").val();
        care3 = $("#care3").val();

        var data = {};
        data ['resultParentsCare.babyId'] = parseInt($("#babyid").val());
        data ['resultParentsCare.care1'] = care1;
        data ['resultParentsCare.care2'] = care2;
        data ['resultParentsCare.care3'] = care3;
        

        $.ajax({
            url: 'saveresultParentsCare',
            type: 'post',
            data: data,
            success:function (json) {
                var rId = json.resultParentsCare.id;
                var refreshData = {
                    babyid: $("#babyid").val(),
                    testId: 55,
                    resultId: rId
                };
                $.ajax({
                    url: 'refreshExamTime',
                    type: 'post',
                    data: refreshData,
                    success:function (json) {
                        console.log('更新时间成功');
                        // 显示填报完成
                        $.fillTipBox({type: 'info', icon: 'glyphicon-info-sign', content: '信息填写完成'});
                        window.location = "record/moreinfo?babyid=" + $("#babyid").val();
                        // window.location = "showresultBasic1?id=" + rId;
                    }
                })
                
            }
        })
    }
</script>

</body>
</html>