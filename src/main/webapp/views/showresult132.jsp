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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">婴儿-初中学生生活能力量表</h1>

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
                        <td class="col-md-2">月龄</td>
                        <td class="col-md-2"><s:property value="days"/></td>
                    </tr>
                </table>
            </div>
        </div>

        <input type="hidden" id="exactAge" value="<s:property value="exactAge"/>">
        <input type="hidden" id="resultID" value="<s:property value="result132.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <th class="col-md-1">领域</th>
                        <th class="col-md-1">SH</th>
                        <th class="col-md-1">L</th>
                        <th class="col-md-1">O</th>
                        <th class="col-md-1">C</th>
                        <th class="col-md-1">S</th>
                        <th class="col-md-1">SD</th>
                        <th class="col-md-1">粗分</th>
                        <th class="col-md-1">标准分</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>得分</td>
                        <td id="a1"><s:property value="result132.a1"/></td>
                        <td id="a2"><s:property value="result132.a2"/></td>
                        <td id="a3"><s:property value="result132.a3"/></td>
                        <td id="a4"><s:property value="result132.a4"/></td>
                        <td id="a5"><s:property value="result132.a5"/></td>
                        <td id="a6"><s:property value="result132.a6"/></td>
                        <td id="a0"><s:property value="a0"/></td>
                        <td id="a8"><s:property value="normal"/></td>
                    </tr>
                    </tbody>
                </table>
                <table class="table table-striped front-table">
                    <thead>
                    </thead>
                    <tbody>
                    <tr>
                        <td>*</td>
                        <td>SH(Self-help)</td>
                        <td>独立生活能力</td>
                        <td>*</td>
                        <td>L(Locomotion)</td>
                        <td>运动能力</td>
                    </tr>
                    <tr>
                        <td>*</td>
                        <td>O(Occupation)</td>
                        <td>作业操作</td>
                        <td>*</td>
                        <td>C(Communication)</td>
                        <td>交往</td>
                    </tr>
                    <tr>
                        <td>*</td>
                        <td>S(Socialization)</td>
                        <td>参加集体活动</td>
                        <td>*</td>
                        <td>SD(Self-Direction)</td>
                        <td>自我管理</td>
                    </tr>
                    </tbody>
                </table>

            </div>
        </div>
        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果扇形图</td>
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
            <div class="panel-heading">评定结果: <s:property value="result132.level"/></div>
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
        <div class="text-center">Copyright © All Right Reserved by 协顺祥(2017)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script src="statics/highcharts/solid-gauge.js"></script>
<script type="text/javascript">

    var a1 = +(parseInt($('#a1').text()) / 30).toFixed(2);
    var a2 = +(parseInt($('#a2').text()) / 18).toFixed(2);
    var a3 = +(parseInt($('#a3').text()) / 19).toFixed(2);
    var a4 = +(parseInt($('#a4').text()) / 22).toFixed(2);
    var a5 = +(parseInt($('#a5').text()) / 24).toFixed(2);
    var a6 = +(parseInt($('#a6').text()) / 19).toFixed(2);
    var a8 = parseInt($('#a8').text());

    var b1 = parseInt($('#a1').text())
    var b2 = parseInt($('#a2').text())
    var b3 = parseInt($('#a3').text())
    var b4 = parseInt($('#a4').text())
    var b5 = parseInt($('#a5').text())
    var b6 = parseInt($('#a6').text())
    var b8 = parseInt($('#a0').text());
    // 柱状图数据
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
        title: {
            text: null
        },
        subtitle: {
            text: null
        },
        credits: {
            enabled: false
        },
        xAxis: {
            categories: [
                'SH',
                'L',
                'O',
                'C',
                'S',
                'SD',
                '总分'
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: '得分'
            }
        },
        tooltip: {
            // enabled: false
        },
        plotOptions: {
            column: {
                borderWidth: 0
            }
        },
        series: [{
            name: '总分',
            color: '#004e90',
            data: [30, 18, 19, 22, 24, 19, 132]
        }, {
            name: '得分',
            color: '#ff9800',
            data: [b1, b2, b3, b4, b5, b6, b8]
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
            categories: ['SH', 'L', 'O', 'C', 'S', 'SD'],
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
                width: 2
            }, {
                color: 'orange',
                value: 0.75,
                width: 2
            }, {
                color: 'blue',
                value: 0.9,
                width: 2
            },{
                color: 'green',
                value: 1,
                width: 2
            }]
        },
        tooltip: {
            // enabled: false
        },
        series: [{
            name: '得分占比',
            data: [a1, a2, a3, a4, a5, a6],
            pointPlacement: 'on'
        }]
    }, function(c){
        chart2 = c;
    });

</script>
</body>
</html>

