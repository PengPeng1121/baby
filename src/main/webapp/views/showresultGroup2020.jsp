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
            margin-top: 5px !important;
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
            top: 220px !important;
        }
        body, div, table, tbody, tr, td {
            background-color: transparent;
            color: transparent;
        }
        #info {
            left: -40px !important;
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
                <div class="panel-body front-no-padding" style="height:1060px;border:0;background-color: transparent">
                    <s:if test="baby.gender == 1">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122;" src="statics/img/hemaBg1Boy.jpg">
                    </s:if>
                    <s:if test="baby.gender == 0">
                    <img style="width: 822px;position: absolute;z-index: -1;height: 1122px;" src="statics/img/hemaBg1Girl.jpg">
                    </s:if>
                    <table style="width: 800px; height:1060px;border:0;font-size: 16px;font-weight: bold; position: absolute;top: 150px;" id="content-table">
                        <tr>
                            <td class="col-md-8 content-1">
                                <div id="column1" class="column-body"></div>
                                <div id="column2" class="column-body"></div>
                                <div id="column3" class="column-body"></div>
                            </td>
                            <td class="col-md-4 content-2">
                                <div class="panel panel-default front-panel" id="info" style="border: 0px; background-color: transparent;position: relative;top: -280px;left: -15px">
                                    <div class="panel-body front-no-padding" style="padding: 5px;border:0;background-color: transparent">
                                        <table style="width: 100%;border:0;font-size: 14px; font-weight: normal;">
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">姓名:</td>
                                                <td class="col-md-6" style="padding-left: 0px"><span style="text-decoration: underline;"><s:property value="baby.name"/></span></td>
                                            </tr>
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">体重:</td>
                                                <td class="col-md-6" style="padding-left: 0px"><span style="text-decoration: underline;"><s:property value="resultGroup2020.weight"/></span> kg</td>
                                            </tr>
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">身高:</td>
                                                <td class="col-md-6" style="padding-left: 0px"> <span style="text-decoration: underline;"><s:property value="resultGroup2020.height"/></span> cm</td>
                                            </tr>
                                            <tr style="height: 40px">
                                                <td class="col-md-6 item" style="letter-spacing: 15px; padding: 0px">头围:</td>
                                                <td class="col-md-6" style="padding-left: 0px">
                                                    <span style="text-decoration: underline;"><s:property value="resultGroup2020.head"/></span> cm</td>
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
            name: '97th',
            data: basicHA2,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '85th',
            data: basicHA3,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '50th',
            data: basicHA4,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'green'
        },{
            name: '15th',
            data: basicHA5,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '3rd',
            data: basicHA6,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '实际',
            data: babyHA,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:1,
            },
            color: 'black'
        }];

        var chartData2 =  [{
            name: '1',
            data: basicWA2,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '3',
            data: basicWA3,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '4',
            data: basicWA4,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'green'
        },{
            name: '5',
            data: basicWA5,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '7',
            data: basicWA6,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '实际',
            data: babyWA,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:1,
            },
            color: 'black'
        }];


        var chartData3 =  [{
            name: '97th',
            data: basicHead2,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '85th',
            data: basicHead3,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '50th',
            data: basicHead4,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'green'
        },{
            name: '15th',
            data: basicHead5,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'orange'
        },{
            name: '3rd',
            data: basicHead6,
            // marker:{//线上数据点
            //     symbol:'circle',//圆点显示
            //     radius:2,
            //     lineWidth:2,
            // },
            lineWidth: 1,
            color: 'red'
        },{
            name: '实际',
            data: babyHead,
            marker:{//线上数据点
                symbol:'circle',//圆点显示
                radius:4,
                lineWidth:1,
            },
            color: 'black'
        }];
        // var age = {
        //     0: 'Birth 出生',
        //     12: '1year 1岁',
        //     24: '2years 2岁',
        //     36: '3years 3岁',
        //     48: '4years 4岁',
        //     60: '5years 5岁',
        // }
        var age = {
            0: '出生',
            12: '1岁',
            24: '2岁',
            36: '3岁',
            48: '4岁',
            60: '5岁',
        }
        $('#column1').highcharts({
            chart: {
                backgroundColor:"#29b2f7",
                plotBackgroundColor: '#FFF',
                spacing: [10, 10, 0, 0]
            },
            title: {
                text: '',
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
                    text: 'Length/Height(cm) 身高',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                labels:{
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                tickPositions: [45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105, 110, 115, 120, 125]
            },
            xAxis: {
                title: {
                    text: 'Age(completed months and years) 年龄 (整月和整年)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                // tickAmount: 20,
                tickInterval: 2,
                labels: {
                    formatter: function () {
                        if (age[this.value]) {
                            return age[this.value];
                        } else {
                            return this.value % 12;
                        }
                    },
                    style: {
                        color: 'white',
                        fontSize: '8px'
                    }
                },
            },
            legend: {
                align: 'right',
                // layout: 'vertical',
                verticalAlign: 'top',
                x: -80,
                y: -5,
                floating: true,
                itemStyle:{
                    fontSize:'8px'
                }
            },
            series: chartData1
        }, function(c){
            chart1 = c;
        });

        $('#column2').highcharts({
            chart: {
                backgroundColor:"#29b2f7",
                plotBackgroundColor: '#FFF',
                spacing: [10, 10, 0, 0]
            },
            title: {
                text: '',
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
                    text: '体重 Weight(kg)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                labels:{
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                tickPositions: [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32]
            },
            xAxis: {
                title: {
                    text: 'Age(completed months and years) 年龄 (整月和整年)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                // tickAmount: 20,
                tickInterval: 2,
                labels: {
                    formatter: function () {
                        if (age[this.value]) {
                            return age[this.value];
                        } else {
                            return this.value % 12;
                        }
                    },
                    style: {
                        color: 'white',
                        fontSize: '8px'
                    }
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
                backgroundColor:"#29b2f7",
                plotBackgroundColor: '#FFF',
                spacing: [10, 10, 0, 0]
            },
            title: {
                text: '',
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
                    text: '头围 Head circumference(cm)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                labels:{
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                tickPositions: [28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60]
            },
            xAxis: {
                title: {
                    text: 'Age(completed months and years) 年龄 (整月和整年)',
                    style: {
                        color: 'white',
                        fontSize: '10px'
                    }
                },
                // tickAmount: 20,
                tickInterval: 2,
                labels: {
                    formatter: function () {
                        if (age[this.value]) {
                            return age[this.value];
                        } else {
                            return this.value % 12;
                        }
                    },
                    style: {
                        color: 'white',
                        fontSize: '8px'
                    }
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

