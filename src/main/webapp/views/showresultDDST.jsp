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
            <tbody class="panel-body front-no-padding" style="padding: 15px;">
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
                    </tbody>
                </table>
            </div>

            <input id="days" type="hidden" value="<s:property value="days"/>">

        </div>
        <input type="hidden" id="resultID" value="<s:property value="result0_2.id"/>">
        <div class="panel panel-default front-panel" id="allbaby" style="display: none">
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
                        <td id="a1"><s:property value="resultDDST.a1"/></td>
                        <td id="a2"><s:property value="resultDDST.a2"/></td>
                        <td id="a3"><s:property value="resultDDST.a3"/></td>
                        <td id="a4"><s:property value="resultDDST.a4"/></td>
                    </tr>
                    <tr>
                        <td>应得分</td>
                        <td id="b1"></td>
                        <td id="b2"></td>
                        <td id="b3"></td>
                        <td id="b4"></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="panel panel-default front-panel col-md-12" style="padding: 0px;">
            <div class="panel-heading">评定结果: <s:property value="resultDDST.result"/></div>
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

    var days = parseInt($('#days').val());
    if (days>24) {
        days = parseInt(days / 3) * 3;
    }


    var map1 = {
        1: [4, 32, 57, 74],
        2: [7, 36, 40, 44, 60, 63, 86],
        3: [7, 13, 36, 40, 44, 48, 60, 63, 82, 86, 90, 98],
        4: [10, 13, 44, 48, 51, 63, 82, 86, 90, 94, 98],
        5: [10, 13, 22, 25, 51, 66, 94, 98, 102],
        6: [10, 13, 16, 19, 22, 25, 29, 33, 37, 66, 68, 75, 79, 102],
        7: [13, 16, 19, 22, 29, 33, 41, 45, 66, 68, 70, 75, 79],
        8: [2, 19, 22, 33, 41, 45, 49, 68, 70, 79, 83, 87],
        9: [2, 22, 41, 45, 49, 68, 70, 83, 87, 91],
        10: [2, 5, 11, 45, 49, 70, 72, 83, 87, 91, 95],
        11: [2, 5, 8, 11, 45, 49, 70, 72, 91, 95, 99],
        12: [5, 8, 11, 30, 52, 72, 91, 95, 99, 103],
        13: [5, 8, 11, 14, 26, 30, 52, 55, 72, 76, 99, 103],
        14: [8, 11, 14, 17, 26, 30, 38, 52, 55, 58, 76, 80, 103],
        15: [8, 11, 14, 17, 26, 30, 38, 52, 55, 58, 61, 80, 84],
        16: [11, 14, 17, 20, 23, 26, 30, 34, 38, 52, 55, 58, 61, 67, 80, 84, 88, 96],
        17: [11, 14, 17, 20, 23, 26, 30, 34, 38, 52, 55, 58, 61, 67, 80, 84, 88, 96],
        18: [3, 6, 17, 20, 23, 26, 30, 34, 38, 55, 58, 61, 67, 80, 84, 88, 96],
        19: [3, 6, 17, 20, 23, 26, 30, 34, 38, 55, 58, 61, 64, 67, 84, 88, 96],
        20: [3, 6, 17, 20, 23, 34, 38, 55, 58, 61, 64, 67, 84, 88, 96],
        21: [3, 6, 12, 17, 20, 23, 34, 38, 58, 61, 64, 67, 88, 96],
        22: [3, 6, 9, 20, 23, 34, 38, 42, 53, 61, 64, 67, 77, 92, 96],
        23: [3, 6, 9, 12, 20, 23, 38, 42, 53, 64, 67, 77, 92, 96, 100],
        24: [3, 6, 9, 12, 20, 23, 38, 42, 53, 64, 67, 77, 92, 96, 100],
        30: [3, 6, 9, 12, 15, 18, 42, 46, 50, 53, 69, 77, 92, 96, 100, 104],
        
        33:[15,18,21,27,31,50,53,56,71,73,81,85,89],
        
        36: [15, 18, 21, 27, 31, 46, 50, 53, 71, 73, 81, 85],
        
        39: [15,18,21,27,31,50,53,56,71,73,81,85,89],
        42: [18, 21, 27, 31, 35, 50, 53, 56, 59, 71, 73, 81, 85, 89],
        
        45:[21,27,31,35,39,56,59,62,65,71,73,81,85,89,97],

        48: [21, 31, 35, 39, 43, 47, 56, 59, 62, 65, 71, 73, 81, 85, 89, 93, 97],
        
        51:[31,35,39,43,47,56,59,62,65,71,73,85,89,93,97,101],
        54: [35, 39, 43, 47, 59, 62, 65, 89, 93, 97, 101],
        57:[35,39,43,47,59,62,65,89,93,97,101],

        60: [35, 39, 43, 47, 59, 62, 65, 93, 97, 101],
        66: [47, 59, 62, 65, 93, 97, 101],
        72: []

    }


    var arr = []
    var result = {}
    for (var m in map1) {
        arr = map1[m]
        result[m] = {
                a: 0,
                b: 0,
                c: 0,
                d: 0
            }
        for (var i = 0, len = arr.length; i < len; i++) {
            if (arr[i] >0 && arr[i] <24) {
                result[m]['a']++;
            }
            if (arr[i] >23 && arr[i] <54) {
                result[m]['b']++;
            }
            if (arr[i] >53 && arr[i] <74) {
                result[m]['c']++;
            }
            if (arr[i] >73 && arr[i] <104) {
                result[m]['d']++;
            }
        }
        switch(days)
        {
        case 1:
          result[m]['a']+= 1;
          result[m]['b']+= 1;
          result[m]['c']+= 1;
          result[m]['d']+= 1;
          break;
        case 2:
          result[m]['a']+= 1;
          result[m]['b']+= 3;
          result[m]['c']+= 2;
          result[m]['d']+= 1;
          break;
        case 3:
          result[m]['a']+= 2;
          result[m]['b']+= 3;
          result[m]['c']+= 2;
          result[m]['d']+= 1;
          break;
        case 4:
          result[m]['a']+= 2;
          result[m]['b']+= 3;
          result[m]['c']+= 3;
          result[m]['d']+= 2;
          break;
        default:
          result[m]['a']+= 3;
          result[m]['b']+= 3;
          result[m]['c']+= 3;
          result[m]['d']+= 3;
        }
    }



    $('#b1').text(result[days]['a'])
    $('#b2').text(result[days]['b'])
    $('#b3').text(result[days]['c'])
    $('#b4').text(result[days]['d'])




    var p1 = +(parseInt($('#a1').text()) / parseInt($('#b1').text()))
    var p2 = +(parseInt($('#a2').text()) / parseInt($('#b2').text()))
    var p3 = +(parseInt($('#a3').text()) / parseInt($('#b3').text()))
    var p4 = +(parseInt($('#a4').text()) / parseInt($('#b4').text()))

    // var p1 = parseInt($('#a1').text())
    // var p2 = parseInt($('#a2').text())
    // var p3 = parseInt($('#a3').text())
    // var p4 = parseInt($('#a4').text())
    

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
                data: [p1, p2, p3, p4]
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
                },
                min: 0,
                max: 1
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '得分',
                data: [p1, p2, p3, p4],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
    });
</script>
</body>
</html>

