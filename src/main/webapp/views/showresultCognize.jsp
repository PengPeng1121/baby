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
            size:  auto;   /* auto is the initial value */
            margin: 5mm;  /* this affects the margin in the printer settings */
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <img class="pull-right" style="height: 100px;width: 100px;" src="statics/img/QRcode.jpg" alt="Logo">
        <h2 style="padding-left:100px;text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">婴幼儿认知测定</h1>

        <div class="panel panel-default front-panel" id="info">
            <div class="panel-heading" style="text-align: center;">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding: 15px;">
                <table>
                    <tbody>
                    <tr>
                        <td class="col-md-2">姓名</td>
                        <td class="col-md-2"><s:property value="baby.name"/></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2">性别</td>
                        <td class="col-md-2"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                    </tr>
                    <tr>
                        <td class="col-md-2">出生日期</td>
                        <td class="col-md-2"><s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2">实足年龄</td>
                        <td class="col-md-2"><s:property value="day"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result_cognize.id"/>">
        <input type="hidden" id="scale" value="<s:property value="scale"/>">
        <input type="hidden" id="percent" value="<s:property value="percent"/>">
        <input type="hidden" id="talent" value="<s:property value="talent"/>">

        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果扇形图</td>
                <td style="text-align:center;">评定结果柱状图</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="column"></div>
                    </div>
                </td>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="spider"></div>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading">评定结果: <s:property value="result_cognize.level"/></div>
        </div>



        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading" style="text-align: center;">医师评价及建议</div>
            <div class="panel-body front-no-padding">
                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div>
        </div>
        <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div>
            <div ><a type="button" class="btn btn-primary noprint pull-right" style="margin:50px 10px 20px 0px;" onclick='javascript:window.print()'>打印结果</a></div>
        </div>　
    </div>
    <footer class="footer-default noprint">
        <div class="text-center">Copyright © All Right Reserved by 协顺祥(2017)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script src="statics/highcharts/solid-gauge.js"></script>
<script type="text/javascript">

    var scale = parseInt($('#scale').text());
    var percent = parseInt($('#percent').text());
    var talent = parseInt($('#talent').text());
    // 柱状图数据

    


    $(function () {
        $('#column').highcharts({
            chart: {
                type: 'solidgauge'
            },
            title: null,
            pane: {
                center: ['50%', '80%'],
                size: '100%',
                startAngle: -90,
                endAngle: 90,
                background: {
                    backgroundColor:'#EEE',
                    innerRadius: '60%',
                    outerRadius: '100%',
                    shape: 'arc'
                }
            },
            tooltip: {
                enabled: false
            },
            yAxis: {
                min: 0,
                max: 150,
                stops: [
                    [0.37, 'red'], // red
                    [0.5, 'orange'], // orange
                    [0.6, 'blue'], // blue
                    [0.73, 'green'] // green
                ],
                lineWidth: 0,
                minorTickInterval: null,
                tickPixelInterval: 150,
                tickWidth: 1,
                tickLength:50,
                tickColor: '#ddd',
                tickPositions: [0,55,75,90,100,110,125,145],
                title: {
                    y: -70
                },
                labels: {
                    y: 10,
                    useHTML: true,
                    formatter: function () {
                        if(this.value == 55){
                            return '<span style="color:red;position: absolute;top: -40px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 75){
                            return '<span style="color:orange;position: absolute;top: -40px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 90){
                            return '<span style="color:blue;position: absolute;top: -45px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 100){
                            return '<span style="color:green;position: absolute;top: -55px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 110){
                            return '<span style="color:green;position: absolute;top: -55px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 125){
                            return '<span style="color:green;position: absolute;top: -55px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 145){
                            return '<span style="color:green;position: absolute;top: -55px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 0){
                            return '<span style="color:#ddd">' +
                                this.value + '</span>';
                        }
                        if(this.value == 150){
                            return '<span style="color:#ddd">' +
                                this.value + '</span>';
                        }
                    }
                }
            },
            plotOptions: {
                solidgauge: {
                    dataLabels: {
                        y: 5,
                        borderWidth: 0,
                        useHTML: true
                    }
                }
            },
            credits: {
                enabled: false
            },
            series: [{
                name: '能力商',
                data: [talent],
                dataLabels: {
                    format: '<div style="text-align:center;z-index:100;background-color:#fff"><span style="font-size:25px;color:' +
                    ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y}</span><br/>' +
                    '<span style="font-size:12px;color:silver">能力商</span></div>'
                }
            }]
        });


        var chart1 = $('#spider').highcharts({
            chart: {
                type: 'column'
            },
            tooltip: {
                enabled: false
            },
            credits: {
                enabled: false
            },
            title: {
                text: '百分位'
            },
            xAxis: {
                categories: ['', '孩子得分']
            },
            yAxis: {
                min: 0,
                title: {
                    text: ''
                },
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                }
            },
            legend: {
                align: 'right',
                x: -30,
                verticalAlign: 'top',
                y: 25,
                floating: true,
                backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || 'white',
                borderColor: '#CCC',
                borderWidth: 1,
                shadow: false
            },
            plotOptions: {
                column: {
                    stacking: 'normal',
                    dataLabels: {
                        enabled: true,
                        color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                        style: {
                            textShadow: '0 0 3px black'
                        }
                    }
                }
            },
            series: []
        });

        var data = [{
            name: 'a',
            data: [5, 0]
        }, {
            name: 'b',
            data: [20, 0]
        }, {
            name: 'c',
            data: [25, 0]
        }, {
            name: 'd',
            data: [25, 0]
        }, {
            name: 'e',
            data: [20, 0]
        }, {
            name: 'f',
            data: [5, 0]
        }];

        if (percent < 5) {
            data[5]['data'][1] = percent;
        } else if(percent < 25) {
            data[4]['data'][1] = percent;
        } else if(percent < 50) {
            data[3]['data'][1] = percent;
        } else if(percent < 75) {
            data[2]['data'][1] = percent;
        } else if(percent < 95) {
            data[1]['data'][1] = percent;
        } else {
            data[0]['data'][1] = percent;
        }

        chart1.series[0].setData(data);

    });

</script>
</body>
</html>

