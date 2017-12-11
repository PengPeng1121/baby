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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">学前50项智力筛查</h1>

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
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result50.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <th class="col-md-1">领域</th>
                        <th class="col-md-1">SC</th>
                        <th class="col-md-1">L</th>
                        <th class="col-md-1">M</th>
                        <th class="col-md-1">E</th>
                        <th class="col-md-1">T</th>
                        <th class="col-md-1">GK</th>
                        <th class="col-md-1">粗分</th>
                        <th class="col-md-1">能力商</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>得分</td>
                        <td id="a1"><s:property value="result50.a1"/></td>
                        <td id="a2"><s:property value="result50.a2"/></td>
                        <td id="a3"><s:property value="result50.a3"/></td>
                        <td id="a4"><s:property value="result50.a4"/></td>
                        <td id="a5"><s:property value="result50.a5"/></td>
                        <td id="a6"><s:property value="result50.a6"/></td>
                        <td id="a0"><s:property value="a0"/></td>
                        <td id="a8"><s:property value="talent"/></td>
                    </tr>
                    </tbody>
                </table>
                <table class="table table-striped front-table">
                    <thead>
                    </thead>
                    <tbody>
                    <tr>
                        <td>*</td>
                        <td>SC(Self-Cognition)</td>
                        <td>自我认识</td>
                        <td>*</td>
                        <td>E(Espial)</td>
                        <td>观察</td>
                    </tr>
                    <tr>
                        <td>*</td>
                        <td>L(Locomotion)</td>
                        <td>运动</td>
                        <td>*</td>
                        <td>T(Thought)</td>
                        <td>思维</td>
                    </tr>
                    <tr>
                        <td>*</td>
                        <td>M(memory)</td>
                        <td>记忆</td>
                        <td>*</td>
                        <td>GK(General-Knowledge)</td>
                        <td>常识</td>
                    </tr>
                    </tbody>
                </table>

            </div>
        </div>
        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果柱状图</td>
                <td style="text-align:center;">评定结果纬度图</td>
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
            <div class="panel-heading">评定结果: <s:property value="result50.level"/></div>
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
<script type="text/javascript">

    var a1 = +(parseInt($('#a1').text()) / 13).toFixed(2);
    var a2 = +(parseInt($('#a2').text()) / 13).toFixed(2);
    var a3 = +(parseInt($('#a3').text()) / 4).toFixed(2);
    var a4 = +(parseInt($('#a4').text()) / 6).toFixed(2);
    var a5 = +(parseInt($('#a5').text()) / 9).toFixed(2);
    var a6 = +(parseInt($('#a6').text()) / 5).toFixed(2);
    var a8 = parseInt($('#a8').text());

    // 柱状图数据

    


    $(function () {
        $('#column').highcharts({
            chart: {
                type: 'bar'
            },
            credits: {
                enabled: false
            },
            title: {
                text: ''
            },
            subtitle: {
                text: ''
            },
            xAxis: {
                categories: ['能力商'],
                title: {
                    text: null
                }
            },
            yAxis: {
                min: 0,
                max: 150,
                title: {
                    text: null,
                    align: 'high'
                },
                tickPositions: [0, 70, 85, 115, 130],
                labels: {
                },
                plotLines: [{
                    color: '#FF0000',
                    width: 2,
                    value: 70
                },{
                    color: 'orange',
                    width: 2,
                    value: 85
                },{
                    color: 'blue',
                    width: 2,
                    value: 115
                },{
                    color: 'green',
                    width: 2,
                    value: 130
                }]
            },
            tooltip: {
            },
            plotOptions: {
                bar: {
                    dataLabels: {
                        enabled: true,
                        allowOverlap: true
                    }
                },
                series: {
                    pointPadding:0.4
                }
            },
            legend: {
                enabled: false
            },
            credits: {
                enabled: false
            },
            series: [{
                data: [a8]
            }]
        });


        $('#spider').highcharts({
            chart: {
                polar: true,
                type: 'area'
            },
            credits: {
                enabled: false
            },
            title: {
                text: '学前50项智力测试结果网状图',
                x: -80
            },
            pane: {
                size: '80%'
            },
            xAxis: {
                categories: ['SC', 'L', 'M', 'E', 'T', 'GK'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                max:  1,
                min: 0,
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'red',
                    value: 0.5,
                    width: 2,
                    label: {
                        text: '50%',
                        y: 30
                    }
                }, {
                    color: 'orange',
                    value: 0.75,
                    width: 2,
                    label: {
                        text: '75%',
                        y: 10
                    }
                }, {
                    color: 'blue',
                    value: 0.9,
                    width: 2,
                    label: {
                        text: '90%',
                        y: 10
                    }
                },{
                    color: 'green',
                    value: 1,
                    width: 2,
                    label: {
                        text: '100%',
                        y: 10
                    }
                }]
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '得分',
                data: [a1, a2, a3, a4, a5, a6],
                pointPlacement: 'on'
            }]
        });
    });

</script>
</body>
</html>

