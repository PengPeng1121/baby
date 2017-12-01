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
                        <td class="col-md-2"><s:property value="result50.exactAge"/></td>
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
        <div class="text-center">Copyright © All Right Reserved by <a href="http://freeabout.free4inno.com/" target="blank">自邮之翼</a>(2017)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script type="text/javascript">

    var a1 = $('#a1').text();
    var a2 = $('#a2').text();
    var a3 = $('#a3').text();
    var a4 = $('#a4').text();
    var a5 = $('#a5').text();
    var a6 = $('#a6').text();

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
        $('#column').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: ['育儿观念', '关注和接纳', '规矩或自我调控能力', '养育关系和沟通', '学习环境', '语言环境', '玩耍和娱乐', '安全和居住环境', '总和']
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
        });


        $('#spider').highcharts({
            chart: {
                polar: true,
                type: 'area'
            },
            title: {
                text: '小儿测评结果网状图(3-6)',
                x: -80
            },
            pane: {
                size: '80%'
            },
            xAxis: {
                categories: ['育儿观念', '关注和接纳', '规矩或自我调控能力', '养育关系和沟通', '学习环境', '语言环境', '玩耍和娱乐', '安全和居住环境']
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                max: 20,
                min: 0,
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'rgb(144, 238, 126)',
                    value: 0,
                    width: 2,
                    label: {
                        text: '0',
                        y: 30
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 10,
                    width: 2,
                    label: {
                        text: '10',
                        y: 10
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 20,
                    width: 2,
                    label: {
                        text: '20',
                        y: 10
                    }
                }],
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '发育商',
                data: [a1, a2, a3, a4, a5, a6],
                pointPlacement: 'on'
            }]
        });
    });

</script>
</body>
</html>

