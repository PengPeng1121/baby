<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()%>/"/>
    <title>评测结果-儿童发育评测平台</title>
    <s:include value="/statics/head.html"/>
    <style>
        @media print {
            input, .noprint {
                display: none
            }
        }
    </style>
    <style type="text/css" media="print">
        @page
        {
            size:  auto portrait;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container" style="white-space: nowrap;">
        <input id="babyid" type="hidden" value="<s:property value="resultGroup.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultGroup.id"/>">
        <input id="height" type="hidden" value="<s:property value="resultGroup.height"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="showBMI" type="hidden" value="<s:property value="showBMI"/>">
        <input id="showHead" type="hidden" value="<s:property value="showHead"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        <input id="arm" type="hidden" value="<s:property value="resultGroup.arm"/>">
        <input id="forearm" type="hidden" value="<s:property value="resultGroup.forearm"/>">
        <input id="abdomen" type="hidden" value="<s:property value="resultGroup.abdomen"/>">
        <input id="thigh" type="hidden" value="<s:property value="resultGroup.thigh"/>">
        <input id="calf" type="hidden" value="<s:property value="resultGroup.calf"/>">
        <!-- <img class="pull-right" style="height: 100px;width: 100px;" src="statics/img/QRcode.jpg" alt="Logo"> -->
        <h4 style="text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h4>
        <h3 style="margin-top: 20px;margin-bottom: 20px;text-align: center;">生长发育测验</h3>

        <div class="panel panel-default front-panel" id="info" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">
            <!-- <div class="panel-heading" >小儿基本资料</div> -->
            <div class="panel-body front-no-padding info" style="padding: 5px;border:0 ">
                <table style="width: 100%;border:0 ">
                    <tr>
                        <td class="col-md-1">姓名:</td>
                        <td class="col-md-2"><s:property value="baby.name"/></td>
                        <td class="col-md-1">性别:</td>
                        <td class="col-md-2"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-1">出生日期:</td>
                        <td class="col-md-2"><s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        <td class="col-md-1">实足年龄:</td>
                        <td class="col-md-2"><s:property value="exactAge"/></td>
                    </tr>
                    <tr>
                        <td class="col-md-1">身高(CM):</td>
                        <td class="col-md-2"><s:property value="resultGroup.height"/></td>
                        <td class="col-md-1">体重(KG):</td>
                        <td class="col-md-2"><s:property value="resultGroup.weight"/></td>
                        <td class="col-md-1 head-table">头围(CM):</td>
                        <td class="col-md-2 head-table"><s:property value="resultGroup.head"/></td>
                        <td class="col-md-1">测查日期:</td>
                        <td class="col-md-2"><s:property value="stime"/></td>
                    </tr>
                </table>
            </div>
        </div>
        


        <table class="table table-striped  front-table" style="margin-bottom: 0px; border: 0px">
            <tbody>
                <tr>
                    <td   colspan="3" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">评定结果</td>
                </tr>
                <tr class="tr-1">
                    <!-- 身高/月龄 -->
                    <td style="padding: 0px;width: 33%; border: 0px" id="HA">
                        <div >
                            <div id="column1" class="column-body"></div>
                        </div>
                    </td>
                    <!-- 体重/月龄 -->
                    <td style="padding: 0px;width: 33%; border: 0px" id="WA">   
                        <div >
                            <div id="column2" class="column-body"></div>
                        </div>
                    </td>
                    <!-- 体重/身高 -->
                    <td style="padding: 0px;width: 33%; border: 0px" id="WH">
                        <div >
                            <div id="column3" class="column-body"></div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <!-- who -->
                    <td style="padding: 0px; border: 0px;border-top: 1px solid;" id="tr-2-td-1">
                        <div id="who">
                            <div id="column5" class="column-body"></div>
                        </div>
                        <div id="BMI">
                            <div id="column4" class="column-body"></div>
                        </div>
                    </td>
                    <!-- 头围 -->
                    <td style="padding: 0px; border: 0px;border-top: 1px solid;"  id="head">
                        
                        <div >
                            <div id="column6" class="column-body"></div>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        
        <div class="panel panel-default front-panel td-body" style="border:0; display:inline-block;width: 35%;margin-bottom: 0px">
            <div class="panel-heading" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">体脂率</div>
            <div class="panel-body front-no-padding" style="border:0">
                <table class="table  front-table" style="text-align: center; border: 0; width: 100%" id="">
                    <tbody>
                        <tr style="">
                            <td style="border:0; width:40%; background-color: white" class="">
                                <img class="body-image" style="height: 160px" src="statics/img/body.png">
                            </td>
                            <td style="border:0; width:60%" class="">
                                <table class="table  front-table" style="text-align: center; border: 0; width: 100%; height: 165px" id="">
                                    <tbody>
                                        <tr style="font-size: 12px"class="tr-arm tr-part">
                                            
                                            <td style="text-align:left; border: 0;width:40%">大臂:</td>
                                            <td style="border:0; width:60%; text-align: left">
                                                <span id="">
                                                    <s:property value="resultGroup.arm"/>%
                                                </span>
                                            </td>    
                                        </tr>
                                        <tr style="font-size: 12px;"
                                        class="tr-forearm tr-part">
                                            
                                            <td style="text-align:left; border: 0;width:40%">小臂:</td>
                                            <td style="border:0; width:60%; text-align: left">
                                                <span id="">
                                                    <s:property value="resultGroup.forearm"/>%
                                                </span>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12px;"
                                        class="tr-abdomen tr-part">
                                            
                                            <td style="text-align:left; border: 0;width:40%">腹部:</td>
                                            <td style="border:0; width:60%; text-align: left">
                                                <span id="">
                                                    <s:property value="resultGroup.abdomen"/>%
                                                </span>
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12px;"class="tr-thigh tr-part">
                                            
                                            <td style="text-align:left; border: 0;width:40%">大腿:</td>
                                            <td style="border:0; width:60%; text-align: left">
                                                <span id="">
                                                    <s:property value="resultGroup.thigh"/>%
                                                </span>
                                            </td>
                                        </tr>

                                        <tr style="font-size: 12px;" class="tr-calf tr-part">
                                            
                                            <td style="text-align:left; border: 0;width:40%">小腿:</td>
                                            <td style="border:0; width:60%; text-align: left">
                                                <span id="">
                                                    <s:property value="resultGroup.calf"/>%
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="panel panel-default front-panel td-result" style="border:0; display:inline-block;width: 64%; margin-left: 0px;margin-bottom: 0px" >
            <div class="panel-heading" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">测验结果</div>
            <div class="panel-body front-no-padding" style="border:0">
                <table class="table table-striped front-table" style="text-align: center; border: 0; width: 100%" id="">
                    <tbody>
                        <tr style="">
                            <td style="border:0; width:100%">
                                <table class="table table-striped front-table" style="text-align: center; border: 0; width: 100%; height: 165px" id="result">
                                    <tbody>
                                        <tr>
                                            <td style="border:0; width:25%; background-color: white; text-align: left" id="BMIText">
                                                <span>
                                                    <s:property value="resultTextBMI"/>%
                                                </span>
                                            </td>
                                            <td style="border:0; width:25%; background-color: white; text-align: left" id="zText">
                                                <span id="">
                                                    z评分:<s:property value="resultTextZHA"/>
                                                </span>
                                            </td>
                                            <td style="border:0; width:25%; background-color: white; text-align: left" id="headText">
                                                <span id="">
                                                    头围评分:<s:property value="resultTextHEAD"/>
                                                </span>
                                            </td> 
                                        </tr>
                                        <tr >
                                            <td style="border:0; width:23%; background-color: white; text-align: left">
                                                <span id="">
                                                    <s:property value="resultTextHA"/>%
                                                </span>
                                            </td>
                                            <td style="border:0; width:25%; background-color: white; text-align: left" id="">
                                                <span id="">
                                                    <s:property value="resultTextWA"/>%
                                                </span>
                                            </td>
                                            <td style="border:0; width:25%; background-color: white; text-align: left" id="WHText">
                                                <span id="">
                                                    <s:property value="resultTextWH"/>%
                                                </span>
                                            </td>
                                        </tr>
                                        <tr >
                                            <td style="border:0; width:25%; background-color: white; text-align: left" id="whoText">
                                                <span >
                                                    <s:property value="resultTextWHO"/>
                                                </span>
                                            </td>  
                                        </tr>
                                    </tbody>
                                </table>   
                            </td>
                        </tr>
                    </tbody>
                </table>
                

            </div>
        </div>

        

        <!-- <ul>
            <li>
                体脂率：指人体脂肪重量在人体总体重中所占的比例，它反映人体内脂肪含量的多少。 
            </li>
            <li>
                体脂率偏高:过高，表面脂肪摄入过剩而运动不足，长期会导致糖尿病、高血压等心脑血管疾病，提高警惕！
            </li>
            <li>
                BMI：身体质量指数，是衡量是否肥胖和标准体重的重要指标。
            </li>
        </ul> -->

        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px; border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 1px solid;margin-bottom: 5px">
            <div class="panel-heading" style="border: 0px" >医师评价及建议</div>
            <div class="panel-body front-no-padding" style="border-bottom: 0px">
                <textarea rows="1" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div>
        </div>
        <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div>
            <div ><a type="button" class="btn btn-primary noprint pull-right print" style="">打印结果</a></div>
        </div>　
    </div>
    <footer class="footer-default noprint">
        <div class="text-center">Copyright © All Right Reserved by 睿为悦(2018)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script src="statics/highcharts/solid-gauge.js"></script>
<script src="statics/highcharts/variwide.js"></script>
<script type="text/javascript">
</script>
<script type="text/javascript">
    var babyid = $('#babyid').val();
    var resultid = $('#resultid').val();
    var days = $('#days').val();
    var height = $('#height').val();
    var showBMI = $('#showBMI').val();
    var showHead = $('#showHead').val();
    var gender = $('#gender').val();
    
    var arm = $('#arm').val();
    var forearm = $('#forearm').val();
    var abdomen = $('#abdomen').val();
    var thigh = $('#thigh').val();
    var calf = $('#calf').val();
    var chart1;
    var chart2;
    var chart3;
    var chart4;
    var chart5;
    var chart6;
    var showBody = 1;

    if (!arm) {
        $('.tr-arm').hide();
    }
    if (!forearm) {
        $('.tr-forearm').hide();
    }
    if (!abdomen) {
        $('.tr-abdomen').hide();
    }
    if (!thigh) {
        $('.tr-thigh').hide();
    }
    if (!calf) {
        $('.tr-calf').hide();
    }


    if (!arm && !forearm && !abdomen && !thigh && !calf) {
        showBody = 0;
    }


    if (!showBody) {
        $('.td-body').hide();
        $('.td-result').css("width", "100%");
        $('#result').css("height", "70px");
    }



    var babyHA,
        babyWA,
        babyWH,
        babyBMI,
        babyWHO,
        babyHead,
        basicHA3,
        basicHA50,
        basicHA97,
        basicWA3,
        basicWA50,
        basicWA97,
        basicWH3,
        basicWH50,
        basicWH97,
        basicBMI3,
        basicBMI50,
        basicBMI97,
        basicNormal,
        basicOverWeight,
        basicLittle,
        basicMiddle,
        basicSerious,
        basicHead3,
        basicHead50,
        basicHead97,
        flag = 0;
    var data = "{";
        data += "'babyId':" + babyid+ ",";
        data += "'resultId':" + resultid+ ",";
        data += "}";
    $.ajax({
        url: 'groupBabyInfo',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            babyHA = json.babyHA;
            babyWA = json.babyWA;
            babyWH = json.babyWH;
            babyBMI = json.babyBMI;
            babyWHO = json.babyWHO;
            babyHead = json.babyHead;
            flag += 1;
        }
    })

    $.ajax({
        url: 'groupBasicInfo',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            basicHA3 = json.basicHA3;
            basicHA50 = json.basicHA50;
            basicHA97 = json.basicHA97;
            basicWA3 = json.basicWA3;
            basicWA50 = json.basicWA50;
            basicWA97 = json.basicWA97;
            basicWH3 = json.basicWH3;
            basicWH50 = json.basicWH50;
            basicWH97 = json.basicWH97;
            basicBMI3 = json.basicBMI3;
            basicBMI50 = json.basicBMI50;
            basicBMI97 = json.basicBMI97;
            basicWHO3 = json.basicWHO3;
            basicWHO50 = json.basicWHO50;
            basicWHO97 = json.basicWHO97;
            basicNormal = json.basicNormal;
            basicOverWeight = json.basicOverWeight;
            basicLittle = json.basicLittle;
            basicMiddle = json.basicMiddle;
            basicSerious = json.basicSerious;
            basicHead3 = json.basicHead3;
            basicHead50 = json.basicHead50;
            basicHead97 = json.basicHead97;
            flag += 1;
        }
    })


    setInterval(function() {
        if (flag === 2) {
            draw();
            flag = 0;
        }
    }, 1000)
 
    function draw() {
        
        var chartData1 =  [{
            name: '3%',
            data: basicHA3,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '50%',
            data: basicHA50,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '97%',
            data: basicHA97,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: ' ',
            data: babyHA,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'black'
        }];

        var chartData2 =  [{
            name: '3%',
            data: basicWA3,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '50%',
            data: basicWA50,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '97%',
            data: basicWA97,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: ' ',
            data: babyWA,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'black'
        }];

        var chartData3 =  [{
            name: '3%',
            data: basicWH3,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '50%',
            data: basicWH50,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '97%',
            data: basicWH97,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: ' ',
            data: babyWH,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'black'
        }];

        var chartData4 =  [{
            name: '3%',
            data: basicBMI3,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '50%',
            data: basicBMI50,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '97%',
            data: basicBMI97,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: ' ',
            data: babyBMI,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'black'
        }];


        var chartData5 =  [{
            name: '正常',
            data: basicNormal,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '超重',
            data: basicOverWeight,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '轻度',
            data: basicLittle,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: '中度',
            data: basicMiddle,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: '重度',
            data: basicSerious,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: ' ',
            data: babyWHO,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'black'
        }];

        var chartData6 =  [{
            name: '3%',
            data: basicHead3,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '50%',
            data: basicHead50,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '97%',
            data: basicHead97,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'blue'
        },{
            name: ' ',
            data: babyHead,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:2,
            },
            color: 'black'
        }];
        $('#column1').highcharts({
            title: {
                text: '身高/月龄',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '身高(cm)'
                }
            },
            xAxis: {
                title: {
                    text: '月龄'
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'left',
                // verticalAlign: 'middle'
                enabled: false
            },
            series: chartData1
        }, function(c){
            chart1 = c;
        });

        $('#column2').highcharts({
            title: {
                text: '体重/月龄',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '体重(kg)'
                }
            },
            xAxis: {
                title: {
                    text: '月龄'
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle',
                enabled: false
            },
            series: chartData2
        }, function(c){
            chart2 = c;
        });

        


        $('#column3').highcharts({
            title: {
                text: '体重/身高',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '体重(kg)'
                }
            },
            xAxis: {
                title: {
                    text: '身高(cm)'
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle'
                enabled: false
            },
            series: chartData3
        }, function(c){
            chart3 = c;
        });

        $('#column4').highcharts({
            title: {
                text: 'BMI',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: 'BMI'
                }
            },
            xAxis: {
                title: {
                    text: '月龄'
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle'
                enabled: false
            },
            series: chartData4
        }, function(c){
            chart4 = c;
        });


        $('#column5').highcharts({
            title: {
                text: 'WHO儿童肥胖判断标准',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '体重(KG)'
                },
                min: 20
            },
            xAxis: {
                title: {
                    text: '身高(CM)'
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle'
            },
            series: chartData5
        }, function(c){
            chart5 = c;
        });



        $('#column6').highcharts({
            title: {
                text: '头围',
                style: {
                    fontSize: '12px'
                }
            },
            subtitle: {
                text: ''
            },
            credits: {
                enabled: false
            },
            yAxis: {
                title: {
                    text: '头围(cm)'
                }
            },
            xAxis: {
                title: {
                    text: '月龄'
                }
            },
            legend: {
                // layout: 'vertical',
                // align: 'right',
                // verticalAlign: 'middle'
                enabled: false
            },
            series: chartData6
        }, function(c){
            chart6 = c;
        });


        // chart5.update({
        //     yAxis: {
        //         min: 20
        //     }
        // });




        if (days > 84) {
            $('#BMI').hide();
            $('#BMIText').hide();
            $('#zText').hide();
        } else {
            $('#who').hide();
            $('#whoText').hide();
        }

        if (days > 72) {
            $('#head').hide();
            $('#headText').hide();
            $('.head-table').hide();
        } 

            // chart1.update({
            //     yAxis: {
            //         max: 100
            //     }
            // });
            // chart2.update({
            //     yAxis: {
            //         max: 20
            //     }
            // });




        if (!parseInt(showBMI)) {
            $('#BMI').hide();
            $('#BMIText').hide();
        }

        if (!parseInt(showHead)) {
            $('#head').hide();
            $('#headText').hide();
        }


        var trLen = 0;

        if ( (height > 145 && (gender == 1))  ||  (height > 137.5 && (gender == 0)) ) {
            $('#WH').hide();
            $('#WHText').hide();
            $('#HA').css("width","50%");
            $('#WA').css("width","50%");
        }

        trLen = $('.tr-1').children().length;

        if (parseInt(showHead)) {
            trLen = trLen - 1;
        }

        $("#tr-2-td-1").attr("colSpan",trLen);
        chart1.reflow();
        chart2.reflow();
        chart4.reflow();
        chart5.reflow();




    }




    $('.print').click(function(){
        $('.front-inner').css({
            padding: '1px'
        });
        $('.info').css({
            padding: '1px'
        });
        $('.panel').css({
            margin: '1px'
        });
        $('.panel-heading').css({
            padding: '0px'
        });


        if (!showBody) {
            $('.column-body').css({
                width: '64%',
                height: '290px'
            });
        } else {
            $('.column-body').css({
                width: '64%',
                height: '245px'
            });
        }
        $('#head').css({
            border: '0px'
        });
        $('#tr-2-td-1').css({
            border: '0px'
        });
        

        chart1.reflow();
        chart2.reflow();
        chart3.reflow();
        chart4.reflow();
        chart5.reflow();
        // chart5.update({
        //     yAxis: {
        //         min: 20
        //     }
        // });
        // chart1.update({
        //     yAxis: {
        //         min: 20
        //     }
        // });
        chart6.reflow();




        window.print();
    });
</script>
</body>
</html>

