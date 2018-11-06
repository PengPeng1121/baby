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
        <img class="pull-right" style="height: 100px;width: 100px;" src="statics/img/QRcode.jpg" alt="Logo">
        <h2 style="padding-left:100px;text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">0-6岁小儿神经心理检查报告单</h1>

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
                        <td class="col-md-2">检查日期</td>
                        <td class="col-md-2"><s:property value="stime"/></td>
                    </tr>
                    <tr>
                        <td class="col-md-2">智龄</td>
                        <td class="col-md-2" id="DQ"></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2">发育商DQ</td>
                        <td class="col-md-2" id="growth"></td>
                    </tr>
                    <tr>
                        <td class="col-md-2">检查月龄</td>
                        <td class="col-md-2"><s:property value="monthage"/></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2"></td>
                        <td class="col-md-2">下次检查日期</td>
                        <td class="col-md-2"></td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <th class="col-md-2">测试项目</th>
                        <th class="col-md-2">大运动</th>
                        <th class="col-md-2">精细运动</th>
                        <th class="col-md-2">适应能力</th>
                        <th class="col-md-2">语言</th>
                        <th class="col-md-2">社交行为</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>智龄（月）</td>
                        <td id="scoreSport"><s:property value="result.scoreSport"/></td>
                        <td id="scoreAct"><s:property value="result.scoreAct"/></td>
                        <td id="scoreAdapt"><s:property value="result.scoreAdapt"/></td>
                        <td id="scoreLanguage"><s:property value="result.scoreLanguage"/></td>
                        <td id="scoreSocial"><s:property value="result.scoreSocial"/></td>
                    </tr>
                    <tr>
                        <td>单项发育商（DQ）</td>
                        <td><s:property value="scoreSport"/></td>
                        <td><s:property value="scoreAct"/></td>
                        <td><s:property value="scoreAdapt"/></td>
                        <td><s:property value="scoreLanguage"/></td>
                        <td><s:property value="scoreSocial"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果柱状图</td>
                <td style="text-align:center;">评定结果网状图</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <div id="column"></div>
                </td>
                <td style="padding: 0px;width: 50%;">
                    <div id="spider"></div>
                </td>
            </tr>
            </tbody>
        </table>

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
        <div class="text-center">Copyright © All Right Reserved by 睿为悦科技有限公司(2017)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script type="text/javascript">
    var dq_fix = <s:property value="result.dq"/>;
    var growth_fix = <s:property value="result.growth"/>;
    $("#DQ").html(dq_fix.toFixed(1));
    $("#growth").html(growth_fix.toFixed(1));
    var a1 = 0;
    a1 = <s:property value="result.scoreSport"/>;//智龄
    var a2 = 0;
    a2 = <s:property value="result.scoreAct"/>;
    var a3 = 0;
    a3 = <s:property value="result.scoreAdapt"/>;
    var a4 = 0;
    a4 = <s:property value="result.scoreLanguage"/>;
    var a5 = 0;
    a5 = <s:property value="result.scoreSocial"/>;
    var b1 = 0;
    b1 = <s:property value="scoreSport"/>;//发育商
    var b2 = 0;
    b2 = <s:property value="scoreAct"/>;
    var b3 = 0;
    b3 = <s:property value="scoreAdapt"/>;
    var b4 = 0;
    b4 = <s:property value="scoreLanguage"/>;
    var b5 = 0;
    b5 = <s:property value="scoreSocial"/>;
    var monthage = <s:property value="monthage"/>;
    var a = [b1, b2, b3, b4, b5];
    a = a.sort();
    var max = a[0];
    if (max < 100) {
        max = 120;
    } else if (max < 150) {
        max = 150;
    } else if (max < 200) {
        max = 200;
    }
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
                type: 'column'
            },
            credits: {
                enabled: false
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: [
                    '大运动',
                    '精细动作',
                    '适应能力',
                    '语言',
                    '社交行为'
                ]
            },
            yAxis: [{
                min: 0,
                plotLines: [{
                    color: 'blue',
                    value: monthage,
                    width: 2,
                    /*label:{
                     text:'实足年龄',
                     align:'left'
                     }*/
                }],
                title: {
                    text: '智龄'
                }
            }, {
                title: {
                    text: '发育商（DQ）'
                },
                labels: {
                    useHTML: true,
                    formatter: function () {
                        if(this.value == 70){
                            return '<span style="color:red">' +
                                this.value + '</span>';
                        }
                        if(this.value == 85){
                            return '<span style="color:orange;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 115){
                            return '<span style="color:blue">' +
                                this.value + '</span>';
                        }
                        if(this.value == 130){
                            return '<span style="color:green">' +
                                this.value + '</span>';
                        }
                        if(this.value == 0){
                            return '<span style="color:#ddd">' +
                                this.value + '</span>';
                        }
                    }
                },
                tickPositions: [0, 70, 85, 115, 130],
                opposite: true
            }],
            legend: {
                shadow: false
            },
            tooltip: {
                shared: true
            },
            plotOptions: {
                column: {
                    grouping: false,
                    shadow: false,
                    borderWidth: 0
                }
            },
            series: [{
                name: '智龄',
                color: '#004e90',
                data: [a1, a2, a3, a4, a5],
                pointPadding: 0.3,
                pointPlacement: -0.2
            }, {
                name: '发育商',
                color: '#ff9800',
                data: [b1, b2, b3, b4, b5],
                pointPadding: 0.3,
                pointPlacement: 0.2,
                yAxis: 1
            }]
        }, function(c){
            chart1 = c;
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
                text: '',
                x: -80
            },
            pane: {
                size: '80%'
            },
            xAxis: {
                categories: ['大运动',
                    '精细动作',
                    '适应能力',
                    '语言',
                    '社交行为'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                max: max,
                min: 30,
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'rgb(144, 238, 126)',
                    value: 70,
                    width: 2,
                    label: {
                        text: '70',
                        y: 30
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 85,
                    width: 2,
                    label: {
                        text: '85',
                        y: 10
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 115,
                    width: 2,
                    label: {
                        text: '115',
                        y: 10
                    }
                }],
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '发育商',
                data: [b1, b2, b3, b4, b5],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
    });
</script>
</body>
</html>