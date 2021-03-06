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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">育儿技能评估（0-3岁)</h1>

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
                        <td class="col-md-2">被访者与儿童的关系</td>
                        <td class="col-md-2"><s:property value="result0_3.answerRelation"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result0_3.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <td class="col-md-2">项目</td>
                        <th class="col-md-1">育儿观念</th>
                        <th class="col-md-1">关注和接纳</th>
                        <th class="col-md-1">亲子关系</th>
                        <th class="col-md-1">学习环境</th>
                        <th class="col-md-1">语言刺激</th>
                        <th class="col-md-1">玩耍娱乐</th>
                        <th class="col-md-1">喂养方式</th>
                        <th class="col-md-1">安全环境</th>
                        <th class="col-md-2">总分</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>个人得分</td>
                        <td id="a1"><s:property value="result0_3.a1"/></td>
                        <td id="a2"><s:property value="result0_3.a2"/></td>
                        <td id="a3"><s:property value="result0_3.a3"/></td>
                        <td id="a4"><s:property value="result0_3.a4"/></td>
                        <td id="a5"><s:property value="result0_3.a5"/></td>
                        <td id="a6"><s:property value="result0_3.a6"/></td>
                        <td id="a7"><s:property value="result0_3.a7"/></td>
                        <td id="a8"><s:property value="result0_3.a8"/></td>
                        <td id="a0"><s:property value="a0"/></td>
                    </tr>
                    <tr>
                        <td>应得分</td>
                        <td>5</td>
                        <td>5</td>
                        <td>5</td>
                        <td>5</td>
                        <td>5</td>
                        <td>5</td>
                        <td>5</td>
                        <td>5</td>
                        <td>40</td>
                    </tr>
                    <tr>
                        <td>百分位<br/>数范围</td>
                        <td id="p1"><s:property value="result0_3.p1"/></td>
                        <td id="p2"><s:property value="result0_3.p2"/></td>
                        <td id="p3"><s:property value="result0_3.p3"/></td>
                        <td id="p4"><s:property value="result0_3.p4"/></td>
                        <td id="p5"><s:property value="result0_3.p5"/></td>
                        <td id="p6"><s:property value="result0_3.p6"/></td>
                        <td id="p7"><s:property value="result0_3.p7"/></td>
                        <td id="p8"><s:property value="result0_3.p8"/></td>
                        <td id="p0"><s:property value="p0"/></td>
                    </tr>
                    <tr>
                        <td>评估意见</td>
                        <td id="r1"><s:property value="result0_3.r1"/></td>
                        <td id="r2"><s:property value="result0_3.r2"/></td>
                        <td id="r3"><s:property value="result0_3.r3"/></td>
                        <td id="r4"><s:property value="result0_3.r4"/></td>
                        <td id="r5"><s:property value="result0_3.r5"/></td>
                        <td id="r6"><s:property value="result0_3.r6"/></td>
                        <td id="r7"><s:property value="result0_3.r7"/></td>
                        <td id="r8"><s:property value="result0_3.r8"/></td>
                        <td id="r0"><s:property value="r0"/></td>
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
<script type="text/javascript">

    var a1 = +(parseInt($('#a1').text()) / 5).toFixed(2);
    var a2 = +(parseInt($('#a2').text()) / 5).toFixed(2);
    var a3 = +(parseInt($('#a3').text()) / 5).toFixed(2);
    var a4 = +(parseInt($('#a4').text()) / 5).toFixed(2);
    var a5 = +(parseInt($('#a5').text()) / 5).toFixed(2);
    var a6 = +(parseInt($('#a6').text()) / 5).toFixed(2);
    var a7 = +(parseInt($('#a7').text()) / 5).toFixed(2);
    var a8 = +(parseInt($('#a8').text()) / 5).toFixed(2);
    

    // 柱状图数据

    var series = [{
        name: '',
        data:[],
        color:'white',
        borderWidth: 1,
        borderColor: 'black'
    },{
        name: '',
        data:[],
        color:'green',
        borderWidth: 1,
        borderColor: 'black'
    },{
        name: '',
        data:[],
        color:'blue',
        borderWidth: 1,
        borderColor: 'black'
    },{
        name: '',
        data:[],
        color:'orange',
        borderWidth: 1,
        borderColor: 'black'
    },{
        name: '',
        data:[],
        color:'red',
        borderWidth: 1,
        borderColor: 'black'
    },{
        name: '',
        data:[],
        color:'white',
        borderWidth: 1,
        borderColor: 'black'
    }]
    var pArr = [];
    var p1 = $('#p1').text();
    p1_1 = parseInt(p1.split('~')[0]);
    p1_2 = p1.split('~')[1];

    var p2 = $('#p2').text();
    p2_1 = parseInt(p2.split('~')[0]);
    p2_2 = p2.split('~')[1];



    var p3 = $('#p3').text();
    p3_1 = parseInt(p3.split('~')[0]);
    p3_2 = p3.split('~')[1];


    var p4 = $('#p4').text();
    p4_1 = parseInt(p4.split('~')[0]);
    p4_2 = p4.split('~')[1];



    var p5 = $('#p5').text();
    p5_1 = parseInt(p5.split('~')[0]);
    p5_2 = p5.split('~')[1];


    var p6 = $('#p6').text();
    p6_1 = parseInt(p6.split('~')[0]);
    p6_2 = p6.split('~')[1];

    var p7 = $('#p7').text();
    p7_1 = parseInt(p7.split('~')[0]);
    p7_2 = p7.split('~')[1];

    var p8 = $('#p8').text();
    p8_1 = parseInt(p8.split('~')[0]);
    p8_2 = p8.split('~')[1];



    var p0 = $('#p0').text();
    p0_1 = parseInt(p0.split('~')[0]);
    p0_2 = p0.split('~')[1];


    pArr.push(p1_1);
    pArr.push(p2_1);
    pArr.push(p3_1);
    pArr.push(p4_1);
    pArr.push(p5_1);
    pArr.push(p6_1);
    pArr.push(p7_1);
    pArr.push(p8_1);
    pArr.push(p0_1);


    // 填充series
    for (var i = 0, len = pArr.length; i < len; i++) {
        switch(pArr[i])
        {
            case 0:
                series[0].data.push(50);
                series[1].data.push(0);
                series[2].data.push(0);
                series[3].data.push(0);
                series[4].data.push(50);
                series[5].data.push(0);
                break;
            case 50:
                series[0].data.push(25);
                series[1].data.push(0);
                series[2].data.push(0);
                series[3].data.push(25);
                series[4].data.push(0);
                series[5].data.push(50);
                break;
            case 75:
                series[0].data.push(10);
                series[1].data.push(0);
                series[2].data.push(15);
                series[3].data.push(0);
                series[4].data.push(0);
                series[5].data.push(75);
                break;
            case 90:
                series[0].data.push(0);
                series[1].data.push(10);
                series[2].data.push(0);
                series[3].data.push(0);
                series[4].data.push(0);
                series[5].data.push(90);
                break;
            default:
                console.log('');
        }
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
                categories: ['育儿观念', '关注和接纳', '亲子关系', '学习环境', '语言刺激', '玩耍娱乐', '喂养方式', '安全环境', '总分']
            },

            yAxis: {
                min: 0,
                title: {
                    text: '评分结果'
                }
            },
            tooltip: {
                pointFormat: '',
                shared: true
            },
            plotOptions: {
                column: {
                    stacking: 'percent'
                }
            },
            legend: {
                enabled:false
            },
            series: series
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
                categories: ['育儿观念', '关注和接纳', '亲子关系', '学习环境', '语言刺激', '玩耍娱乐', '喂养方式', '安全环境'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                max: 1,
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
                data: [a1, a2, a3, a4, a5, a6, a7, a8],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
    });

</script>
</body>
</html>

