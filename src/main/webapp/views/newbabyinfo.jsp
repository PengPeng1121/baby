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
                        <option value="其他">其他</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label required">出生年月</label>
                <div class="col-md-2">
                    <input id="birthday" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                </div>
            </div>
            <div class="form-group" style="margin-bottom: 0px;">
                <label class="col-lg-1 col-md-2 control-label required">父-姓名</label>
                <div class="col-md-2">
                    <input id="father_name" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
                <label class="col-lg-1 col-md-2 control-label required">手机号</label>
                <div class="col-md-2">
                    <input id="f_tel" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
                <label class="col-lg-1 col-md-2 control-label required">母-姓名</label>
                <div class="col-md-2">
                    <input id="mother_name" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
                <label class="col-lg-1 col-md-2 control-label required">手机号</label>
                <div class="col-md-2">
                    <input id="m_tel" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div>
            <div class="col-md-12" style="margin-top: 10px;margin-bottom: 10px;height: 1px;background-color: #ddd;"></div>
            <div class="form-group">
                <s:if test="bs.relation == 1">
                <label class="col-lg-1 col-md-2 control-label">填表人称呼</label>
                <div class="col-md-2">
                     <span class="control-label front-label">
					<select id="relation" class="form-control front-no-radius front-no-box-shadow">
						<option value="父亲">父亲</option>
						<option value="母亲">母亲</option>
                        <option value="爷爷">爷爷</option>
                        <option value="奶奶">奶奶</option>
                        <option value="其他">其他</option>
                    </select></span>
                </div></s:if>
                <s:if test="bs.bloodtype == 1">
                <label class="col-lg-1 col-md-2 control-label">小儿血型</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="blood" class="form-control front-no-radius front-no-box-shadow">
						<option value="A">A</option>
						<option value="B">B</option>
                        <option value="AB">AB</option>
                        <option value="O">O</option>
                    </select></span>
                </div></s:if>
                <s:if test="bs.postcode == 1">
                <label class="col-lg-1 col-md-2 control-label">邮编</label>
                <div class="col-md-2">
                    <input id="postcode" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.account == 1">
                <label class="col-lg-1 col-md-2 control-label">户口属性</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="account" class="form-control front-no-radius front-no-box-shadow">
						<option value="农业户口">农业户口</option>
						<option value="非农业户口">非农业户口</option>
                    </select></span>
                </div></s:if>
            </div>
            <s:if test="bs.address == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">地址-省市</label>
                <div id="cityselect">
                    <div class="col-md-2">
                        <select id="province" class="prov form-control front-no-radius front-no-box-shadow"></select>
                    </div>
                    <div class="col-md-2">
                        <select id="city" class="city form-control front-no-radius front-no-box-shadow" disabled="disabled"></select>
                    </div>

                </div>
                <label class="col-lg-1 col-md-2 control-label">详细地址</label>
                <div class="col-md-5">
                    <input id="address" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <div class="form-group">

                <label class="col-lg-1 col-md-2 control-label">父亲职业</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="father_career" class="form-control front-no-radius front-no-box-shadow">
						<option value="金融业">金融业</option>
						<option value="服务业">服务业</option>
                        <option value="信息产业">信息产业</option>
                        <option value="制造业">制造业</option>
                        <option value="传播业">传播业</option>
                        <option value="教育">教育</option>
						<option value="政府机构">政府机构</option>
                        <option value="医疗保健">医疗保健</option>
                        <option value="其他">其他</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label">文化程度</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="education-f" class="form-control front-no-radius front-no-box-shadow">
						<option value="博士">博士</option>
						<option value="硕士">硕士</option>
                        <option value="本科">本科</option>
                        <option value="专科">专科</option>
                        <option value="高中">高中</option>
                        <option value="初中">初中</option>
                        <option value="小学">小学</option>
                        <option value="其它">其它</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label">工作时长（每天）</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="f_worktime" class="form-control front-no-radius front-no-box-shadow">
                        <option value="0">0 小时</option>
						<option value="1">1 小时</option>
						<option value="2">2 小时</option>
                        <option value="3">3 小时</option>
                        <option value="4">4 小时</option>
                        <option value="5">5 小时</option>
                        <option value="6">6 小时</option>
                        <option value="7">7 小时</option>
                        <option value="8">8 小时</option>
                        <option value="9">9 小时</option>
                        <option value="10">10 小时</option>
                        <option value="11">11 小时</option>
                        <option value="12">12 小时</option>
                        <option value="13">13 小时</option>
                        <option value="14">14 小时</option>
                        <option value="15">15 小时</option>
                        <option value="16">16 小时</option>
                        <option value="17">17 小时</option>
                        <option value="18">18 小时</option>
                        <option value="19">19 小时</option>
                        <option value="20">20 小时</option>
                        <option value="21">21 小时</option>
                        <option value="22">22 小时</option>
                        <option value="23">23 小时</option>
                        <option value="24">24 小时</option>
                    </select></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">父亲出生年月</label>
                <div class="col-md-2">
                    <input id="f_birthday" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                </div>

                <label class="col-lg-1 col-md-2 control-label">邮箱</label>
                <div class="col-md-4">
                    <input id="f_email" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">母亲职业</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="mother_career" class="form-control front-no-radius front-no-box-shadow">
						<option value="金融业">金融业</option>
						<option value="服务业">服务业</option>
                        <option value="信息产业">信息产业</option>
                        <option value="制造业">制造业</option>
                        <option value="传播业">传播业</option>
                        <option value="教育">教育</option>
						<option value="政府机构">政府机构</option>
                        <option value="医疗保健">医疗保健</option>
                        <option value="其他">其他</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label">文化程度</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="education-m" class="form-control front-no-radius front-no-box-shadow">
						<option value="博士">博士</option>
						<option value="硕士">硕士</option>
                        <option value="本科">本科</option>
                        <option value="专科">专科</option>
                        <option value="高中">高中</option>
                        <option value="初中">初中</option>
                        <option value="小学">小学</option>
                        <option value="其它">其它</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label">工作时长（每天）</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="m_worktime" class="form-control front-no-radius front-no-box-shadow">
                        <option value="0">0 小时</option>
						<option value="1">1 小时</option>
						<option value="2">2 小时</option>
                        <option value="3">3 小时</option>
                        <option value="4">4 小时</option>
                        <option value="5">5 小时</option>
                        <option value="6">6 小时</option>
                        <option value="7">7 小时</option>
                        <option value="8">8 小时</option>
                        <option value="9">9 小时</option>
                        <option value="10">10 小时</option>
                        <option value="11">11 小时</option>
                        <option value="12">12 小时</option>
                        <option value="13">13 小时</option>
                        <option value="14">14 小时</option>
                        <option value="15">15 小时</option>
                        <option value="16">16 小时</option>
                        <option value="17">17 小时</option>
                        <option value="18">18 小时</option>
                        <option value="19">19 小时</option>
                        <option value="20">20 小时</option>
                        <option value="21">21 小时</option>
                        <option value="22">22 小时</option>
                        <option value="23">23 小时</option>
                        <option value="24">24 小时</option>
                    </select></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">母亲出生年月</label>
                <div class="col-md-2">
                    <input id="m_birthday" class="form-control front-no-radius front-no-box-shadow"  type="text" readonly>
                </div>
                <label class="col-lg-1 col-md-2 control-label">邮箱</label>
                <div class="col-md-4">
                    <input id="m_email" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div>
            <s:if test="bs.motherIllness == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">母亲孕期疾病</label>
                <div class="col-md-11">
                    <input id="mother_illness" class="form-control front-no-radius front-no-box-shadow"  type="text" >
                </div>
            </div></s:if>
            <div class="form-group">
                <s:if test="bs.parity == 1">
                <label class="col-lg-1 col-md-2 control-label">胎次</label>
                <div class="col-md-3">
                    <span class="control-label front-label">
					<select id="pregnant" class="form-control front-no-radius front-no-box-shadow">
						<option value="1">1</option>
						<option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select></span>
                </div></s:if>
                <s:if test="bs.pregnancy == 1">
                <label class="col-lg-1 col-md-2 control-label">孕期(周)</label>
                <div class="col-md-3">
                    <input id="duration" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.delivery == 1">
                <label class="col-lg-1 col-md-2 control-label">分娩方式</label>
                <div class="col-md-3">
                    <span class="control-label front-label">
					<select id="birth-way" class="form-control front-no-radius front-no-box-shadow">
						<option value="自然分娩">自然分娩</option>
						<option value="剖腹产">剖腹产</option>
                        <option value="水中分娩">水中分娩</option>
                    </select></span>
                </div></s:if>
            </div>
            <div class="form-group">
                <s:if test="bs.education == 1">
                <label class="col-lg-1 col-md-2 control-label">受教育程度</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="education" class="form-control front-no-radius front-no-box-shadow">
						<option value="未开始">未开始</option>
						<option value="小班">小班</option>
                        <option value="中班">中班</option>
                        <option value="大班">大班</option>
                        <option value="学前班">学前班</option>
                        <option value="一年级">一年级</option>
                        <option value="二年级">二年级</option>
                        <option value="其他">其他</option>
                    </select></span>
                </div></s:if>
                <s:if test="bs.preDelivery == 1">
                <label class="col-lg-1 col-md-2 control-label">早产天数（天）</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="pre_delivery" class="form-control front-no-radius front-no-box-shadow">
                        <option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                    </select></span>
                </div></s:if>
                <s:if test="bs.deformity == 1">
                <label class="col-lg-1 col-md-2 control-label">畸形</label>
                <div class="col-md-2">
                    <input id="deformity" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.onlyChild == 1">
                <label class="col-lg-1 col-md-2 control-label">独生子女</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="only_child" class="form-control front-no-radius front-no-box-shadow">
						<option value="1">是</option>
						<option value="0">否</option>
                    </select></span>
                </div></s:if>
            </div>
            <div class="form-group">
                <s:if test="bs.frontalSuture == 1">
                <label class="col-lg-1 col-md-2 control-label">前囟</label>
                <div class="col-md-2">
                    <input id="frontal_suture1" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
                <div class="col-md-2">
                    <input id="frontal_suture2" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.motherBirthage == 1">
                <label class="col-lg-1 col-md-2 control-label">母亲生产年龄</label>
                <div class="col-md-2">
                    <input id="mother_birthage" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.marriage == 1">
                <label class="col-lg-1 col-md-2 control-label">家庭婚姻状况</label>
                <div class="col-md-2">
                    <span class="control-label front-label">
					<select id="marriage" class="form-control front-no-radius front-no-box-shadow">
						<option value="双亲">双亲</option>
						<option value="单亲">单亲</option>
                        <option value="孤儿">孤儿</option>
                    </select></span>
                </div></s:if>
            </div>
            <div class="form-group">
                <s:if test="bs.birthWeight == 1">
                <label class="col-lg-1 col-md-2 control-label">出生体重(克)</label>
                <div class="col-md-3">
                    <input id="birth_weight" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.asphyxia == 1">
                <label class="col-lg-1 col-md-2 control-label">窒息时长(分钟)</label>
                <div class="col-md-3">
                    <span class="control-label front-label">
					<select id="choke" class="form-control front-no-radius front-no-box-shadow">
                        <option value="0">0</option>
						<option value="1">1</option>
						<option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                    </select></span>
                </div></s:if>
                <s:if test="bs.jaundice == 1">
                <label class="col-lg-1 col-md-2 control-label">新生儿黄疸</label>
                <div class="col-md-3">
                    <span class="control-label front-label">
					<select id="jaundice" class="form-control front-no-radius front-no-box-shadow">
						<option value="无">无</option>
						<option value="生理性黄疸">生理性黄疸</option>
                        <option value="病理性黄疸">病理性黄疸</option>
                    </select></span>
                </div></s:if>
            </div>
            <s:if test="bs.havePumping == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">有无抽风史</label>
                <div class="col-md-3">
                    <select id="pumping" class="form-control front-no-radius front-no-box-shadow" onchange="changeState(this.value)">
                        <option value="0" >无</option>
                        <option value="1" >有</option>
                    </select></span>
                </div>
                <label class="col-lg-1 col-md-2 control-label">发作次数</label>
                <div class="col-md-3">
                    <input  id="pumping-times" class="form-control front-no-radius front-no-box-shadow" disabled="disabled" type="text" >
                </div>
                <label class="col-lg-1 col-md-2 control-label">初次发作月龄</label>
                <div class="col-md-3">
                    <input  id="pumping-begin" class="form-control front-no-radius front-no-box-shadow" disabled="disabled" type="text">
                </div>
            </div></s:if>
            <s:if test="bs.familyHistory == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">家庭史</label>
                <div class="col-md-11">
                    <input id="family_history" class="form-control front-no-radius front-no-box-shadow"  type="text" >
                </div>
            </div></s:if>
            <s:if test="bs.illnessHistory == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">重要病历史</label>
                <div class="col-md-11">
                    <input id="illness_history" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <div class="form-group">
                <s:if test="bs.bmi == 1">
                    <label class="col-lg-1 col-md-2 control-label">身长(厘米)</label>
                    <div class="col-md-3">
                        <input id="height" class="form-control front-no-radius front-no-box-shadow"  type="text">
                    </div>
                    <label class="col-lg-1 col-md-2 control-label">体重(千克)</label>
                    <div class="col-md-3">
                        <input id="weight" class="form-control front-no-radius front-no-box-shadow"  type="text">
                    </div>
                    <label class="col-lg-1 col-md-2 control-label" >BMI</label>
                    <div class="col-md-3">
                        <button type="button" id="bmi" class="form-control front-no-radius front-no-box-shadow pull-right"  onclick="calculateBMI()" >点击计算BMI</button>
                    </div></s:if>
                <s:if test="bs.head == 1">
                <label class="col-lg-1 col-md-2 control-label">头围(厘米)</label>
                <div class="col-md-3">
                    <input id="head" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.sit == 1">
                <label class="col-lg-1 col-md-2 control-label">坐高(厘米)</label>
                <div class="col-md-3">
                    <input id="sit" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
                <s:if test="bs.bust == 1">
                <label class="col-lg-1 col-md-2 control-label">胸围(厘米)</label>
                <div class="col-md-3">
                    <input id="bust" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div></s:if>
            </div>
            <s:if test="bs.reason == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">来诊原因</label>
                <div class="col-md-11">
                    <input id="reason" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <s:if test="bs.evaluation == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">家长对小儿评价</label>
                <div class="col-md-11">
                    <input id="evaluation" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <s:if test="bs.overview == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">测查小儿概述</label>
                <div class="col-md-11">
                    <input id="overview" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <s:if test="bs.diagnosis == 1">
            <div class="form-group">
                <label class="col-lg-1 col-md-2 control-label">初步诊断</label>
                <div class="col-md-11">
                    <input id="diagnosis" class="form-control front-no-radius front-no-box-shadow"  type="text">
                </div>
            </div></s:if>
            <div class="form-group">
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
        <div class="text-center">Copyright © All Right Reserved by 协顺祥(2017)</div>
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
        var f_birthday=parseInt($("#f_birthday").val().replace("-","").replace("-",""));
        var m_birthday=parseInt($("#m_birthday").val().replace("-","").replace("-",""));

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
        } else if ($("#father_name").val().trim().length == 0 && $("#mother_name").val().trim().length == 0) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'请填写父亲或母亲姓名！'});
        } else if(($("#father_name").val().trim().length != 0) && ($("#father_name").val().trim().length <2 )){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度至少为两位！'});
        }else if(($("#father_name").val().trim().length != 0) && ($("#father_name").val().trim().length >20 )){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度不能超过二十位！'});
        } else if(($("#mother_name").val().trim().length != 0) && ($("#mother_name").val().trim().length <2 )){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度至少为两位！'});
        }else if(($("#mother_name").val().trim().length != 0) && ($("#mother_name").val().trim().length >20 )){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名长度不能超过二十位！'});
        }else if(($("#father_name").val().trim().length != 0)&&(NumofName($("#father_name").val().trim())) == true){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名中不能有数字！'});
        }else if(($("#mother_name").val().trim().length != 0)&&(NumofName($("#mother_name").val().trim())) == true){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名中不能有数字！'});
        } else if(($("#father_name").val().trim().length != 0)&&(ischina($("#father_name").val().trim())) == false){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名格式不正确！'});
        }else if(($("#mother_name").val().trim().length != 0)&&(ischina($("#mother_name").val().trim())) == false){
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '姓名格式不正确！'});
        } else if (f_birthday != 0 && f_birthday > birthday) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'父亲年龄小于儿童！'});
        } else if (m_birthday != 0 && m_birthday > birthday) {
            $.fillTipBox({type:'danger', icon:'glyphicon-alert', content:'母亲年龄小于儿童！'});
        } else if (($("#f_tel").val().trim().length == 0)&&($("#m_tel").val().trim().length == 0)) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写手机号！'});
        }else if(($("#f_tel").val().trim().length != 0)&&(($("#f_tel").val().trim().length != 11)||(isTelCode($("#f_tel").val().trim())) == false)) {
            $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写父亲格式正确的手机号！'});
        }else if(($("#m_tel").val().trim().length != 0)&&(($("#m_tel").val().trim().length != 11)||(isTelCode($("#f_tel").val().trim())) == false)) {
                $.fillTipBox({type: 'danger', icon: 'glyphicon-alert', content: '请填写母亲格式正确的手机号！'});
        }else {
            $.ajax({
                url : 'record/saveBaby',
                type : 'post',
                data : {
                    "baby.gender": $("#gender").val(),
                    "baby.name": $("#baby_name").val().trim(),
                    "baby.userid": $("#doctor").val(),
                    birthday: $("#birthday").val(),
                    "baby.nation": $("#nation").val(),
                    "baby.relation":$("#relation").val(),
                    "baby.bloodtype":$("#blood").val(),
                    "baby.postcode":$("#postcode").val(),
                    "baby.account":$("#account").val(),
                    "baby.province":$("#province").val(),
                    "baby.city":$("#city").val(),
                    "baby.address":$("#address").val(),
                    "father.name":$("#father_name").val().trim(),
                    "father.career":$("#father_career").val().trim(),
                    "father.tel":$("#f_tel").val().trim(),
                    "father.education":$("#education-f").val(),
                    "father.worktime":$("#f_worktime").val(),
                    father_birth:$("#f_birthday").val(),
                    "father.email":$("#f_email").val(),
                    "mother.name":$("#mother_name").val().trim(),
                    "mother.carrer":$("#mother_career").val().trim(),
                    "mother.education":$("#education-m").val(),
                    "mother.tel":$("#f_tel").val().trim(),
                    "mother.worktime":$("#m_worktime").val(),
                    mother_birth:$("#m_birthday").val(),
                    "mother.email":$("#m_email").val(),
                    "baby.motherIllness": $("#mother_illness").val(),
                    "baby.parity": $("#pregnant").val(),
                    "baby.pregnancy": $("#duration").val(),
                    "baby.delivery": $("#birth-way").val(),
                    "baby.education": $("#education").val(),
                    "baby.preDelivery": $("#pre_delivery").val(),
                    "baby.deformity": $("#deformity").val(),
                    "baby.onlyChild": $("#only_child").val(),
                    frontalSuture1:$("#frontal_suture1").val(),
                    frontalSuture2:$("#frontal_suture2").val(),
                    "baby.motherBirthage": $("#mother_birthage").val(),
                    "baby.marriage": $("#marriage").val(),
                    "baby.asphyxia": $("#choke").val(),
                    "baby.birthWeight": $("#birth_weight").val(),
                    "baby.jaundice": $("#jaundice").val(),
                    "baby.havePumping": $("#pumping").val(),
                    "baby.pumpingTimes": $("#pumping-times").val(),
                    "baby.pumpingBegin": $("#pumping-begin").val(),
                    "baby.familyHistory": $("#family_history").val(),
                    "baby.illnessHistory": $("#illness_history").val(),
                    "baby.height": $("#height").val(),
                    "baby.weight": $("#weight").val(),
                    "baby.head": $("#head").val(),
                    "baby.reason": $("#reason").val(),
                    "baby.overview": $("#overview").val(),
                    "baby.evaluation": $("#evaluation").val(),
                    "baby.diagnosis": $("#diagnosis").val(),
                    "baby.remarks": $("#remark").val()
                },
                success : function(data) {
                    if(data.babyid != 0 &&data.babyid != null) {
                        $.fillTipBox({type:'success', icon:'glyphicon-ok-sign', content:'新建资料成功！'});
                        $.frontModal({size: 'modal-md', href: 'modals/modal_savebaby.jsp'}).on('shown.bs.modal', function () {
                            $("#babyid").val(data.babyid);
                        }).on('hide.bs.modal', function (){window.location.href = 'home';});
                    } else {
                        $.fillTipBox({type:'danger', icon:'glyphicon-remove-sign', content:'保存失败！'});
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

</script>
</body>
</html>