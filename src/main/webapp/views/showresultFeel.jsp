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
        textarea {
            width: 100%;
            height: 30px;
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
        <h2 style="text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
        <h1 style="margin-top: 20px;margin-bottom: 20px;text-align: center;">感觉统合</h1>

        <div class="panel panel-default front-panel" id="info">
            <div class="panel-heading" style="text-align: center;">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding: 15px;">
                <table style="width: 100%">
                    <tbody>
                    <tr>
                        <td class="col-md-2">姓名:&nbsp;<s:property value="baby.name"/></td>
                        <td class="col-md-1">性别:&nbsp;<s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-3">年龄:&nbsp;<s:property value="exactAge"/></td>
                        <td class="col-md-3">出生日期:&nbsp;<s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        <td class="col-md-3">测查日期:&nbsp;<s:property value="stime"/></td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="resultFeel.id"/>">

        <input type="hidden" id="days" value="<s:property value="days"/>">

        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <td class="col-md-3">评定项目</td>
                        <td class="col-md-1">得分</td>
                        <td class="col-md-2">评定结果</td>
                        <td class="col-md-6">建议</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1.前庭失衡</td>
                        <td id="a1"><s:property value="resultFeel.b1"/></td>
                        <td id="r1"><s:property value="resultFeel.z1"/></td>
                        <td rowspan="5">
                            <textarea id="s1" style="height: 160px" ></textarea>
                        </td>
                    </tr>

                    <tr>
                        <td>2.触觉过分防御</td>
                        <td id="a2"><s:property value="resultFeel.b2"/></td>
                        <td id="r2"><s:property value="resultFeel.z2"/></td>
                        
                    </tr>


                    <tr>
                        <td>3.本体感失调</td>
                        <td id="a3"><s:property value="resultFeel.b3"/></td>
                        <td id="r3"><s:property value="resultFeel.z3"/></td>
                        
                    </tr>


                    <tr class="tr-old">
                        <td>4.学习能力发展不足</td>
                        <td id="a4"><s:property value="resultFeel.b4"/></td>
                        <td id="r4"><s:property value="resultFeel.z4"/></td>
                        
                    </tr>
                    <tr class="tr-old">
                        <td>5.大年龄的特殊问题</td>
                        <td id="a5"><s:property value="resultFeel.a5"/></td>
                        <td id="r5"></td>
                        
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
                <textarea rows="4" style="resize:none;border: 0;width: 100%;height: 100%" id="doctorRemark"></textarea>
            </div>
        </div>
        <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;" id="tester">测评者： _______________</p></div>
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

    var a1 = +$('#a1').text();
    var a2 = +$('#a2').text();
    var a3 = +$('#a3').text();
    var a4 = +$('#a4').text();

    var days = $('#days').val();

    if (days < 72) {
        $('.tr-old').hide();
    }


    
    
    

    // 柱状图数据




    $(function () {
        var chart1,
            chart2;
        $('.print').click(function(){
            var s1 = $('#s1').val();
            var doctorRemark = $('#doctorRemark').val();
            var resultID = +$('#resultID').val();
            var data = "{";
            data += "'resultAdvice':'" + s1 + "',";
            data += "'doctorAdvice':'" + doctorRemark + "',";
            data += "'id':'" + resultID + "'}";
            

            $.ajax({
                url: 'saveAdvice',
                type: 'post',
                data: eval('(' + data + ')'),
                success:function () {
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
                        height: '300px',
                        marginLeft: '20px'
                    });
                    $('#spider').css({
                        width: '400px',
                        height: '300px',
                        marginLeft: '10px'
                    });
                    $('#tester').css({
                        marginTop: '5px'
                    })
                    
                    chart1.reflow();
                    chart2.reflow();
                    window.print();
                }
            })

            
        })

        var categories =  ['前庭失衡', '触觉过分<br/>防御', '本体感失调', '学习能力<br/>发展不足'];
        var result =  [a1, a2, a3, a4];

        if (days < 72) {
            categories =  ['前庭失衡', '触觉过分防御', '本体感失调'];
            result =  [a1, a2, a3];
        }


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
                categories: categories
            },
            yAxis: [{
                min: 0,
                plotLines: [{
                    color: 'red',
                    value: 20,
                    width: 2
                }, {
                    color: 'orange',
                    value: 30,
                    width: 2
                }, {
                    color: 'blue',
                    value: 40,
                    width: 2
                }],
                title: {
                    text: ''
                }
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
                name: '得分',
                color: '#ff8547',
                data: result
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
                categories: categories,
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'red',
                    value: 20,
                    width: 2,
                    label: {
                        text: '20',
                        y: 30
                    }
                }, {
                    color: 'orange',
                    value: 30,
                    width: 2,
                    label: {
                        text: '30',
                        y: 10
                    }
                }, {
                    color: 'blue',
                    value: 40,
                    width: 2,
                    label: {
                        text: '40',
                        y: 10
                    }
                }]
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '得分',
                data: result,
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
    });


</script>
</body>
</html>

