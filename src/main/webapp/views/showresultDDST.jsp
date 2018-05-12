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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">小儿智能发育筛查</h1>

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
                        <th class="col-md-1">个人-社会</th>
                        <th class="col-md-1">精细动作-适应性</th>
                        <th class="col-md-1">语言</th>
                        <th class="col-md-1">大运动</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>个人得分</td>
                        <td id="a1"><s:property value="result0_2.a1"/></td>
                        <td id="a2"><s:property value="result0_2.a2"/></td>
                        <td id="a3"><s:property value="result0_2.a3"/></td>
                        <td id="a4"><s:property value="result0_2.a4"/></td>
                    </tr>
                    <tr>
                        <td>应得分</td>
                        <td id="b1"><s:property value="result0_2.b1"/></td>
                        <td id="b2"><s:property value="result0_2.b2"/></td>
                        <td id="b3"><s:property value="result0_2.b3"/></td>
                        <td id="b4"><s:property value="result0_2.b4"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading">评定结果: <s:property value="result"/></div>
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
        <div class="text-center">Copyright © All Right Reserved by 协顺祥(2017)</div>
    </footer>
</div>
<s:include value="/statics/tail.html"/>
<script src="statics/highcharts/highcharts.js"></script>
<script src="statics/highcharts/highcharts-more.js"></script>
<script type="text/javascript">

    var p1 = +(parseInt($('#a1').text()) / parseInt($('#b1').text()))
    var p2 = +(parseInt($('#a2').text()) / parseInt($('#b2').text()))
    var p3 = +(parseInt($('#a3').text()) / parseInt($('#b3').text()))
    var p4 = +(parseInt($('#a4').text()) / parseInt($('#b4').text()))
    

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
            credits: {
                enabled: false
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: ['个人-社会', '精细动作-适应性', '语言', '大运动']
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
            },
            legend: {
                enabled:false
            },
            series: [{
                data: [a1, a2, a3, a4]
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
                categories: ['个人-社会', '精细动作-适应性', '语言', '大运动'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                
                labels: {
                    enabled: false
                }
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '得分',
                data: [a1, a2, a3, a4],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
    });


</script>
</body>
</html>

