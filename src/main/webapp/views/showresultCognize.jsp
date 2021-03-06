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
    <div class="container">
        <!-- <img class="pull-right" style="height: 100px;width: 100px;" src="statics/img/QRcode.jpg" alt="Logo"> -->
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
                        <td class="col-md-2"><s:property value="exactAge"/></td>
                    </tr>

                    <tr>
                        <td class="col-md-2">月龄</td>
                        <td class="col-md-2"><s:property value="days"/></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2">早产天数</td>
                        <td class="col-md-2"><s:property value="preDelivery"/></td>
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

        <div class="panel panel-default front-panel col-md-12" style="padding: 0px;">
            <div class="panel-heading">评定结果: <s:property value="evaluation"/></div>
        </div>



        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading" style="text-align: center;">医师评价及建议</div>
            <div class="panel-body front-no-padding">
                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div>
        </div>
        <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div>
            <div ><a type="button" class="btn btn-primary noprint pull-right print" style="margin:50px 10px 20px 0px;">打印结果</a></div>
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
<script type="text/javascript">

    var scale = parseInt($('#scale').val());
    var percent = parseFloat($('#percent').val());
    var talent = parseInt($('#talent').val());
    // 柱状图数据

    


    $(function () {
        var chart1,
            chart2;
        $('.print').click(function(){
            $('.front-inner').css({
                padding: '0px'
            });
            $('.panel').css({
                margin: '0px'
            });
            $('h1').css({
                'font-size': '20px'
            });
            $('h2').css({
                'font-size': '15px'
            });
            $('#column').css({
                width: '300px',
                height: '300px'
            });
            $('#spider').css({
                width: '300px',
                height: '300px'
            });
            chart1.reflow();
            chart2.reflow();
            window.print();
        })
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
                tickPositions: [0,55,75,90,100,110,125,145,150],
                title: {
                    y: -70
                },
                labels: {
                    y: 10,
                    useHTML: true,
                    formatter: function () {
                        if(this.value == 55){
                            return '<span style="color:red;position: absolute;top: -50px; right:10px">' +
                                this.value + '</span>';
                        }
                        if(this.value == 75){
                            return '<span style="color:orange;position: absolute;top: -48px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 90){
                            return '<span style="color:blue;position: absolute;top: -50px;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 100){
                            return '<span style="color:green;position: absolute;top: -50px;right:-30px">' +
                                this.value + '</span>';
                        }
                        if(this.value == 110){
                            return '<span style="color:green;position: absolute;top: -30px;right:-50px">' +
                                this.value + '</span>';
                        }
                        if(this.value == 125){
                            return '<span style="color:green;position: absolute;top: -20px;right:-55px">' +
                                this.value + '</span>';
                        }
                        if(this.value == 145){
                            return '<span style="color:green;position: absolute;right: -55px;top:-10px">' +
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
        }, function(c){
            chart2 = c;
        });
        
        var data = [{
            name: 'a',
            data: [5, 0],
            color: '#8BC34A'
        }, {
            name: 'b',
            data: [20, 0],
            color: 'green'
        }, {
            name: 'c',
            data: [25, 0],
            color: 'blue'
        }, {
            name: 'd',
            data: [25, 0],
            color: 'yellow'
        }, {
            name: 'e',
            data: [20, 0],
            color: 'orange'
        }, {
            name: 'f',
            data: [5, 0],
            color: 'red'
        }];

        $('#spider').highcharts({
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
                text: '百分位:' + percent
            },
            xAxis: {
                categories: ['', '孩子得分']
            },
            yAxis: {
                min: 0,
                max: 100,
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
                enabled: false
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
            series: data
        }, function(c) {
            chart1 = c;
        });


        if (percent < 5) {
            chart1.series[5].setData([5, percent]);
        } else if(percent < 25) {
            chart1.series[4].setData([20, percent]);
        } else if(percent < 50) {
            chart1.series[3].setData([25, percent]);
        } else if(percent < 75) {
            chart1.series[2].setData([25, percent]);
        } else if(percent < 95) {
            chart1.series[1].setData([20, percent]);
        } else {
            chart1.series[0].setData([5, percent]);
        }


        var tspan = $('tspan');
        var tlen = tspan.length;
        for (i = 0; i < tlen; i++) {
            if ($($('tspan')[i]).text() == 0) {
                $($('tspan')[i]).hide();
            }
        }

    });

</script>
</body>
</html>

