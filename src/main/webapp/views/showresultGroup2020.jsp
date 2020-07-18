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
            margin-top: 10px;
        }
        body, table, tbody, tr, td {
            background-color: transparent;
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
            margin-top: 10px !important;
        }
        .content-1{
            padding-right: 0px !important;
        }
        .content-2{
            padding: 0px !important;
        }
        .item {
           padding: 0px !important; 
        }
        #content-table {
            position: absolute !important;
            top: 240px !important;
        }
        body, div, table, tbody, tr, td {
            background-color: transparent;
            color: transparent;
        }
        #info {
            left: -25px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media" style="background-color: transparent;">

        <input id="babyid" type="hidden" value="<s:property value="resultGroup2020.babyid"/>">
        <input id="resultid" type="hidden" value="<s:property value="resultGroup2020.id"/>">
        <input id="height" type="hidden" value="<s:property value="resultGroup2020.height"/>">
        <input id="days" type="hidden" value="<s:property value="days"/>">
        <input id="gender" type="hidden" value="<s:property value="baby.gender"/>">
        
        <div class="container" id="hemaFront">
            <div class="panel panel-default front-panel"  style="border: 0px; background-color: transparent;">
                <div class="panel-body front-no-padding" style="height:1125px;border:0;background-color: transparent">
                    <img style="width: 800px;position: absolute;z-index: -1;height: 1120px;" src="statics/img/hemaGroupBgBoy.png">
                    <table style="width: 800px; height:1120px;border:0;font-size: 16px;font-weight: bold; position: absolute;top: 140px;" id="content-table">
                        <tr>
                            <td class="col-md-8 content-1">
                                <div id="column1" class="column-body"></div>
                                <div id="column2" class="column-body"></div>
                                <div id="column3" class="column-body"></div>
                            </td>
                            <td class="col-md-4 content-2">
                                <div class="panel panel-default front-panel" id="info" style="border: 0px; background-color: transparent;position: relative;top: -280px;left: -15px">
                                    <div class="panel-body front-no-padding" style="padding: 5px;border:0;background-color: transparent">
                                        <table style="width: 100%;border:0;font-size: 16px;font-weight: bold; ">
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">姓名:</td>
                                                <td class="col-md-6" style="padding-left: 0px"><s:property value="baby.name"/></td>
                                            </tr>
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">体重:</td>
                                                <td class="col-md-6" style="padding-left: 0px"><s:property value="resultGroup2020.weight"/>kg</td>
                                            </tr>
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">身高:</td>
                                                <td class="col-md-6" style="padding-left: 0px"><s:property value="resultGroup2020.height"/>cm</td>
                                            </tr>
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">头围:</td>
                                                <td class="col-md-6" style="padding-left: 0px"><s:property value="resultGroup2020.head"/>cm</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <!-- <img style="width: 275px;position: absolute;top: 60px;" src="statics/img/hemaWho.png"> -->
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
    var gender = $('#gender').val();
    

    var chart1;
    var chart2;
    var chart3;


    var babyHA,
        babyWA,
        babyHead,
        basicHA1,
        basicHA2,
        basicHA3,
        basicHA4,
        basicHA5,
        basicHA6,
        basicHA7,
        basicWA1,
        basicWA2,
        basicWA3,
        basicWA4,
        basicWA5,
        basicWA6,
        basicWA7,
        basicHead1,
        basicHead2,
        basicHead3,
        basicHead4,
        basicHead5,
        basicHead6,
        basicHead7,
        flag = 0;
    var data = "{";
        data += "'babyId':" + babyid+ ",";
        data += "'resultId':" + resultid+ ",";
        data += "}";
    $.ajax({
        url: 'group2020BabyInfo',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            babyHA = json.babyHA;
            babyWA = json.babyWA;
            babyHead = json.babyHead;
            flag += 1;
        }
    })

    $.ajax({
        url: 'group2020BasicInfo',
        type: 'post',
        data: eval('(' + data + ')'),
        success:function (json) {
            basicHA1 = json.basicHA1;
            basicHA2 = json.basicHA2;
            basicHA3 = json.basicHA3;
            basicHA4 = json.basicHA4;
            basicHA5 = json.basicHA5;
            basicHA6 = json.basicHA6;
            basicHA7 = json.basicHA7;

            basicWA1 = json.basicWA1;
            basicWA2 = json.basicWA2;
            basicWA3 = json.basicWA3;
            basicWA4 = json.basicWA4;
            basicWA5 = json.basicWA5;
            basicWA6 = json.basicWA6;
            basicWA7 = json.basicWA7;

            basicHead1 = json.basicHead1;
            basicHead2 = json.basicHead2;
            basicHead3 = json.basicHead3;
            basicHead4 = json.basicHead4;
            basicHead5 = json.basicHead5;
            basicHead6 = json.basicHead6;
            basicHead7 = json.basicHead7;

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
            name: '1',
            data: basicHA1,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '4',
            data: basicHA4,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '7',
            data: basicHA7,
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
            name: '1',
            data: basicWA1,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '4',
            data: basicWA4,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '7',
            data: basicWA7,
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
            name: '1',
            data: basicHead1,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'green'
        },{
            name: '4',
            data: basicHead4,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:2,
                lineWidth:2,
            },
            color: 'red'
        },{
            name: '7',
            data: basicHead7,
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
            chart: {
                backgroundColor:"transparent"
            },
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
            chart: {
                backgroundColor:"transparent"
            },
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
            chart: {
                backgroundColor:"transparent"
            },
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
            series: chartData3
        }, function(c){
            chart3 = c;
        });
        
        chart1.reflow();
        chart2.reflow();
        chart3.reflow();
    }
    $('.print').click(function(){
        window.print();
    });
</script>
</body>
</html>

