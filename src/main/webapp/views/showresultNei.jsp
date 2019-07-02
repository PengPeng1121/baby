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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">中国比内测验</h1>

        <div class="panel panel-default front-panel" id="info" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">
            <!-- <div class="panel-heading" >小儿基本资料</div> -->
            <div class="panel-body front-no-padding" style="padding: 15px;border:0 ">
                <table style="width: 100%;border:0 ">
                    <tr>
                        <td class="col-md-2">姓名:</td>
                        <td class="col-md-2"><s:property value="baby.name"/></td>
                        <td class="col-md-2">性别:</td>
                        <td class="col-md-2"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-2">出生日期:</td>
                        <td class="col-md-2"><s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                    </tr>
                    <tr>
                        <td class="col-md-2">月龄:</td>
                        <td class="col-md-2"><s:property value="days"/></td>
                        <td class="col-md-2">测查日期:</td>
                        <td class="col-md-2"><s:property value="stime"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="panel panel-default front-panel" id="allbaby" style="border:0 ">
            <div class="panel-heading" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">评分</div>
            <div class="panel-body front-no-padding" style="border:0">
                <table class="table table-striped front-table" style="text-align: center; border: 0" id="score">
                    <tbody>
                        <tr style="font-size: 15px;font-weight: bold;">
                            <td style="border:0; width:40%"></td>
                            <td style="text-align:left; border: 0;width:20%">粗分:</td>
                            <td style="border:0; width:40%; text-align: left">
                                <span id="a0">
                                    <s:property value="resultNei.totalScore"/>
                                </span>
                            </td>
                            
                        </tr>
                        <tr style="font-size: 15px;font-weight: bold;">
                            <td style="border:0; width:40%"></td>
                            <td style="text-align:left;border: 0;width:20%">智商(IQ):</td>
                            <td style="border:0;width:40%; text-align:left">
                                <span id="a8">
                                    <s:property value="resultNei.IQ"/>
                                </span>
                            </td>
                            
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <table class="table table-striped   front-table" style="margin-bottom: 10px; border: 0px">
            <tbody>
            <tr>
                <td   colspan="2" style="border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 0px;">评定结果</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 60%; border: 0px">
                    
                    <div >
                        <div id="column"></div>
                    </div>
                </td>
                <td style="padding: 0px;width: 40%; border: 0px">
                    <div >
                        <div style="
                            text-align: center;
                            font-size: 121px;
                            background-color: #FFF;
                        ">
                            <p id="percent"></p>
                        </div>
                        <table class="table table-striped front-table" style="border-left: 0px; border-right: 0px; border-bottom: 0px">
                            <tbody>
                            <tr>
                                <td style="border: 0">超优秀</td>
                                <td style="border: 0">130以上</td>
                            </tr>
                            <tr>
                                <td style="border: 0">优秀</td>
                                <td style="border: 0">110-129</td>
                            </tr>
                            <tr>
                                <td style="border: 0">正常</td>
                                <td style="border: 0">90-109</td>
                            </tr>
                            <tr>
                                
                                <td style="border: 0">偏低</td>
                                <td style="border: 0">80-89</td>
                            </tr>
                            <tr>
                                
                                <td style="border: 0">边界</td>
                                <td style="border: 0">70-79</td>
                            </tr>
                            <tr>
                                
                                <td style="border: 0">智力缺损</td>
                                <td style="border: 0px">69以下</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border: 0px">
                    <p style="margin: 0px">小朋友的智力水平在发展中，还有变化的空间，测评结果供参考</p>
                </td>
            </tr>
            </tbody>
        </table>


        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px; border-top: 1px solid;border-left: 0px;border-right: 0px;border-bottom: 1px solid;">
            <div class="panel-heading" style="border: 0px" >医师评价及建议</div>
            <div class="panel-body front-no-padding" style="border-bottom: 0px">
                <textarea rows="2" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
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
<script src="statics/highcharts/variwide.js"></script>
<script type="text/javascript">
    // 智商
    var a8 = parseInt($('#a8').text());
    // 评价
    var text = '';
    // 百分数
    var percent = 0;


    var chartData = [
        {
            name: '智力缺损',
            y: 2.2,
            sliced: false,
            selected: false,
            color: "#ff9800"
        },
        {
            name: '边界',
            y: 6.7,
            sliced: false,
            selected: false,
            color: "#ffc107"
        },
        {
            name: '偏低',
            y: 16.1,
            sliced: false,
            selected: false,
            color: "#ffeb3b"
        },
        {
            name: '正常',
            y: 50.0,
            sliced: false,
            selected: false,
            color: "#cddc39"
        },
        {
            name: '优秀',
            y: 16.1,
            sliced: false,
            selected: false,
            color: "#8bc34a"
        },
        {
            name: '超优秀',
            y: 8.9,
            sliced: false,
            selected: false,
            color: "#4caf50"
        }
    ];

    if (0 <a8 && a8< 70) {
        text = '智力缺损';
        percent = 2.2;
        chartData[0]['sliced'] = true;
        chartData[0]['selected'] = true;

    } else if (a8 < 80) {
        text = '边界';
        percent = 6.7;
        chartData[1]['sliced'] = true;
        chartData[1]['selected'] = true;
    } else if (a8 < 90) {
        text = '偏低';
        percent = 16.1;
        chartData[2]['sliced'] = true;
        chartData[2]['selected'] = true;
    } else if (a8 < 110) {
        text = '正常';
        percent = 50.0;
        chartData[3]['sliced'] = true;
        chartData[3]['selected'] = true;
    } else if (a8 < 130) {
        text = '优秀';
        percent = 16.1;
        chartData[4]['sliced'] = true;
        chartData[4]['selected'] = true;
    } else {
        text = '超优秀';
        percent = 6.7;
        chartData[5]['sliced'] = true;
        chartData[5]['selected'] = true;
    } 
    $('#percent').html(percent + '%')



    // 柱状图数据
    var chart1;

    $('.print').click(function(){
        $('.front-inner').css({
            padding: '1px'
        });
        $('.panel').css({
            margin: '1px'
        });
        // $('h1').css({
        //     'font-size': '20px'
        // });
        // $('h2').css({
        //     'font-size': '15px'
        // });
        $('#column').css({
            width: '400px',
            height: '400px'
        });
        $('.container').css({
            paddingTop: '20px'
        });
        $('.score').css({
            width: '400px'
        });

        chart1.reflow();
        window.print();
    });


    //统计图
    $('#column').highcharts({
        title: {
            text: text + '<br>' + a8 + '分',
            align: 'center',
            verticalAlign: 'middle',
            y: 50
        },
        credits: {
            enabled: false
        },
        tooltip: {
            headerFormat: '{series.name}<br>',
            pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                dataLabels: {
                    enabled: true,
                    distance: -50,
                    style: {
                        fontWeight: 'bold',
                        color: 'white',
                        textShadow: '0px 1px 2px black',
                        fontSize: 12
                    }
                },
                startAngle: -90, // 圆环的开始角度
                endAngle: 90,    // 圆环的结束角度
                center: ['50%', '65%']
            }
        },
        series: [{
            type: 'pie',
            name: '',
            innerSize: '40%',
            data: chartData
        }]
    }, function(c){
        chart1 = c;
    });

    

        


   

</script>
</body>
</html>

