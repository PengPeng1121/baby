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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">育儿技能评估（0-2岁)</h1>

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
                        <td class="col-md-2"><s:property value="result0_2.answerRelation"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result0_2.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <td class="col-md-2">项目</td>
                        <th class="col-md-1">关注度</th>
                        <th class="col-md-1">接纳</th>
                        <th class="col-md-1">养育环境</th>
                        <th class="col-md-1">学习材料</th>
                        <th class="col-md-1">参与</th>
                        <th class="col-md-1">生活的丰<br/>富多样性</th>
                        <th class="col-md-2">总分</th>
                        

                        <!-- 育儿观念 a1 p1 r1
                        关注和接纳
                        规矩或自我调控能力
                        养育关系和沟通
                        学习环境
                        语言环境
                        玩耍和娱乐
                        安全和居住环境
                        总和 a0 p0 r0 -->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>个人得分</td>
                        <td id="a1"><s:property value="result0_2.a1"/></td>
                        <td id="a2"><s:property value="result0_2.a2"/></td>
                        <td id="a3"><s:property value="result0_2.a3"/></td>
                        <td id="a4"><s:property value="result0_2.a4"/></td>
                        <td id="a5"><s:property value="result0_2.a5"/></td>
                        <td id="a6"><s:property value="result0_2.a6"/></td>
                        <td id="a0"><s:property value="a0"/></td>
                    </tr>
                    <tr>
                        <td>应得分</td>
                        <td>11</td>
                        <td>8</td>
                        <td>6</td>
                        <td>9</td>
                        <td>6</td>
                        <td>5</td>
                        <td>45</td>
                    </tr>
                    <tr>
                        <td>百分位<br/>数范围</td>
                        <td id="p1"><s:property value="result0_2.p1"/></td>
                        <td id="p2"><s:property value="result0_2.p2"/></td>
                        <td id="p3"><s:property value="result0_2.p3"/></td>
                        <td id="p4"><s:property value="result0_2.p4"/></td>
                        <td id="p5"><s:property value="result0_2.p5"/></td>
                        <td id="p6"><s:property value="result0_2.p6"/></td>
                        <td id="p0"><s:property value="p0"/></td>
                    </tr>
                    <tr>
                        <td>评估意见</td>
                        <td id="r1"><s:property value="result0_2.r1"/></td>
                        <td id="r2"><s:property value="result0_2.r2"/></td>
                        <td id="r3"><s:property value="result0_2.r3"/></td>
                        <td id="r4"><s:property value="result0_2.r4"/></td>
                        <td id="r5"><s:property value="result0_2.r5"/></td>
                        <td id="r6"><s:property value="result0_2.r6"/></td>
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

    var a1 = parseInt($('#a1').text());
    var a2 = parseInt($('#a2').text());
    var a3 = parseInt($('#a3').text());
    var a4 = parseInt($('#a4').text());
    var a5 = parseInt($('#a5').text());
    var a6 = parseInt($('#a6').text());
    

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
    

    var p2 = $('#p2').text();
    



    var p3 = $('#p3').text();
    


    var p4 = $('#p4').text();
    



    var p5 = $('#p5').text();
    


    var p6 = $('#p6').text();
    


    var p0 = $('#p0').text();
    


    pArr.push(p1);
    pArr.push(p2);
    pArr.push(p3);
    pArr.push(p4);
    pArr.push(p5);
    pArr.push(p6);
    pArr.push(p0);


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
                categories: ['关注度', '接纳', '养育环境', '学习材料', '参与', '生活的丰富多样性']
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
                categories: ['关注度', '接纳', '养育环境', '学习材料', '参与', '生活的丰富多样性'],
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

