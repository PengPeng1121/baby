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
        
        <s:if test="hospital.name == '河马儿科'">
            <img id="ruiweiyue" class="pull-right" style="height: 100px;width: 100px;" src="statics/img/hemaCode.png" alt="Logo">
            <img id="hema" class="pull-left" style="height: 120px;width: 720px;" src="statics/img/hemaFeel.png" alt="Logo">
        </s:if>
        <s:else>
            <h2 style="text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
            <h1 style="margin-top: 20px;margin-bottom: 20px;text-align: center;">感觉统合2020</h1>
        </s:else>



        <div class="panel panel-default front-panel" id="info" style="margin-top: 120px">
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
        <input type="hidden" id="resultID" value="<s:property value="resultFeel2020.id"/>">
        <input type="hidden" id="remarkOld" value="<s:property value="resultRecord.remark"/>">
        <input type="hidden" id="testerNameOld" value="<s:property value="resultRecord.testerName"/>">
        <input type="hidden" id="babyID" value="<s:property value="baby.babyid"/>">

        <input type="hidden" id="days" value="<s:property value="days"/>">


        <input type="hidden" id="a1" value="<s:property value="resultFeel2020.a1"/>">
        <input type="hidden" id="a2" value="<s:property value="resultFeel2020.a2"/>">
        <input type="hidden" id="a3" value="<s:property value="resultFeel2020.a3"/>">
        <input type="hidden" id="a4" value="<s:property value="resultFeel2020.a4"/>">
        <input type="hidden" id="a5" value="<s:property value="resultFeel2020.a5"/>">
        <input type="hidden" id="a6" value="<s:property value="resultFeel2020.a6"/>">


        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <td class="col-md-4">评定项目</td>
                        <td class="col-md-3">原始分</td>
                        <td class="col-md-3">T值</td>
                        <td class="col-md-4">评定结果</td>
                        <!-- <td class="col-md-6">建议</td> -->
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1.前脑平衡和大脑双侧分化</td>
                        <td><s:property value="resultFeel2020.a1"/></td>
                        <td id="b1"></td>
                        <td id="r1"></td>
                        <!-- <td rowspan="5">
                            <textarea id="s1" style="height: 160px" ></textarea>
                        </td> -->
                    </tr>

                    <tr>
                        <td>2.脑神经心理抑制困难</td>
                        <td><s:property value="resultFeel2020.a2"/></td>
                        <td id="b2"></td>
                        <td id="r2"></td>
                        
                    </tr>


                    <tr>
                        <td>3.触觉防御过多及反应不足</td>
                        <td><s:property value="resultFeel2020.a3"/></td>
                        <td id="b3"></td>
                        <td id="r3"></td>
                        
                    </tr>


                    <tr>
                        <td>4.发育期运动障碍</td>
                        <td><s:property value="resultFeel2020.a4"/></td>
                        <td id="b4"></td>
                        <td id="r4"></td>
                        
                    </tr>
                    <tr>
                        <td>5.视觉空间，形态</td>
                        <td><s:property value="resultFeel2020.a5"/></td>
                        <td id="b5"></td>
                        <td id="r5"></td>
                        
                    </tr>

                    <tr>
                        <td>6.本体觉（重力不安症）</td>
                        <td><s:property value="resultFeel2020.a6"/></td>
                        <td id="b6"></td>
                        <td id="r6"></td>
                        
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果柱状图</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="column"></div>
                    </div>
                    
                </td>
                <!-- <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="spider"></div>
                    </div>
                    
                </td> -->
            </tr>
            </tbody>
        </table>

        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading" id="headRemark">医师评价及建议</div>
            <!-- <div class="panel-body front-no-padding">
                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div> -->
            <div class="panel-body front-no-padding">
                <textarea id="doctorRemark" rows="3" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
                <div id="doctorRemarkText" style="display: none;"></div>
            </div>
        </div>
        <!-- <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div>
            <div ><a type="button" class="btn btn-primary noprint pull-right print" style="margin:50px 10px 20px 0px;">打印结果</a></div>
        </div>　 -->
        <div style="width:270px;float: right">
            <div id="tester"><p style="margin-top: 20px;font-size: 16px;">测评者： <input  id="testerName"/> </p></div>
            <div id="testerPrint" style="display: none"><p style="margin-top: 20px;font-size: 16px;"  id="testerPrintName"></p></div>
            <div >
                <a type="button" class="btn btn-primary noprint pull-right print" style="margin:20px 10px 20px 0px;">打印结果</a>
                <!-- <a type="button" class="btn btn-primary noprint pull-right download" style="margin:50px 10px 20px 0px;">下载结果</a> -->
            </div>
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
    window.flag = 0;
    var a1 = +$('#a1').val();
    var a2 = +$('#a2').val();
    var a3 = +$('#a3').val();
    var a4 = +$('#a4').val();
    var a5 = +$('#a5').val();
    var a6 = +$('#a6').val();

    var b1 = 20 + 15 * parseInt((a1-50)/ 10)
    var b2 = 20 + 15 * parseInt((a2-50)/ 10)
    var b3 = 20 + 15 * parseInt((a3-50)/ 10)
    var b4 = 20 + 15 * parseInt((a4-50)/ 10)
    var b5 = 20 + 15 * parseInt((a5-50)/ 10)
    var b6 = 20 + 15 * parseInt((a6-50)/ 10)

    var resultAll = [
        {a:a1 ,b:0, c:''},
        {a:a2 ,b:0, c:''},
        {a:a3 ,b:0, c:''},
        {a:a4 ,b:0, c:''},
        {a:a5 ,b:0, c:''},
        {a:a6 ,b:0, c:''}
    ]
    var r1,r2,r3,r4,r5,r6;

    var lll = resultAll.length;
    var a = 0;
    var b = 0;
    var c = '';
    for (var i = 0; i < lll; i++) {
        a = resultAll[i]['a'];
        b = 20 + 15 * parseInt((a-50)/ 10);
        resultAll[i]['b'] = b;
        if ( b < 30 ) {
            c = '重度失常'
        } else if ( b < 40) {
            c = '中度失常'
        } else if ( b < 50) {
            c = '轻度失常'
        } else {
            c = '正常'
        }
        resultAll[i]['c'] = c;

    }

    $('#b1').text(resultAll[0]['b'])
    $('#b2').text(resultAll[1]['b'])
    $('#b3').text(resultAll[2]['b'])
    $('#b4').text(resultAll[3]['b'])
    $('#b5').text(resultAll[4]['b'])
    $('#b6').text(resultAll[5]['b'])

    $('#r1').text(resultAll[0]['c'])
    $('#r2').text(resultAll[1]['c'])
    $('#r3').text(resultAll[2]['c'])
    $('#r4').text(resultAll[3]['c'])
    $('#r5').text(resultAll[4]['c'])
    $('#r6').text(resultAll[5]['c'])




    // 柱状图数据
    $(function () {
        var chart1,
            chart2;

        var categories =  ['前脑平衡和大脑双侧分化', '脑神经心理抑制困难', '触觉防御过多及反应不足', '发育期运动障碍', '视觉空间，形态', '本体觉（重力不安症）'];
        var result =  [b1, b2, b3, b4, b5, b6];


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
                shadow: false,
                enabled: false 
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

        // $('#spider').highcharts({
        //     chart: {
        //         polar: true,
        //         type: 'area'
        //     },
        //     credits: {
        //         enabled: false
        //     },
        //     title: {
        //         text: '',
        //         x: -80
        //     },
        //     pane: {
        //         size: '80%'
        //     },
        //     xAxis: {
        //         categories: categories,
        //         tickmarkPlacement: 'on',
        //         lineWidth: 0
        //     },
        //     yAxis: {
        //         gridLineInterpolation: 'polygon',
        //         lineWidth: 0,
        //         labels: {
        //             enabled: false
        //         },
        //         plotLines: [{
        //             color: 'red',
        //             value: 20,
        //             width: 2,
        //             label: {
        //                 text: '20',
        //                 y: 30
        //             }
        //         }, {
        //             color: 'orange',
        //             value: 30,
        //             width: 2,
        //             label: {
        //                 text: '30',
        //                 y: 10
        //             }
        //         }, {
        //             color: 'blue',
        //             value: 40,
        //             width: 2,
        //             label: {
        //                 text: '40',
        //                 y: 10
        //             }
        //         }]
        //     },
        //     tooltip: {
        //         shared: true
        //     },
        //     legend: {
        //         shadow: false,
        //         enabled: false 
        //     },
        //     series: [{
        //         name: '得分',
        //         data: result,
        //         pointPlacement: 'on'
        //     }]
        // }, function(c){
        //     chart2 = c;
        // });


        var inter = setInterval(function() {
            if (window.flag === 0) {
                var remarkOld = $("#remarkOld").val();
                if (remarkOld && remarkOld!= 'null') {
                    var reg = new RegExp("<br>","g");//g,表示全部替换。
                    remarkOld = remarkOld.replace(reg,"\n");
                    $('#doctorRemark').html(remarkOld);
                }

                var testerNameOld = $("#testerNameOld").val();
                if (testerNameOld && testerNameOld!= 'null') {
                    $('#testerName').val(testerNameOld);
                }
                clearInterval(inter);
            }
        }, 200)



        $.windowbox = { 
            //定义一个方法aa 
            redraw: function(){ 
                $("title").html('2020');
                $(".navbar").hide();
                $('.front-inner').css({
                    padding: '0px'
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
                // $('#spider').css({
                //     width: '300px',
                //     height: '300px'
                // });
                chart1.reflow();
                // chart2.reflow();
                $('#hema').css({
                    'height': '60px',
                    'width': '360px'
                })
                $('#ruiweiyue').css({
                    'height': '60px',
                    'width': '60px'
                })
                $('#info').css({
                    'margin-top': '60px'
                });

                $('#headRemark').css({
                    'padding': '5px'
                });
                
                var remark = $('#doctorRemark').val();
                var realRemark = '';
                realRemark = remark.replace(/\n/g, "<br/>");
                $('#doctorRemarkText').html(realRemark);
                $('#doctorRemarkText').show();
                $('#doctorRemark').hide();
                var testerName = $('#testerName').val();
                $('#testerPrintName').text('测评者:' + testerName);
                $('#testerPrint').show();
                $('#tester').hide();
                window.scrollTo(0,0);
            }
        }  
        $('.print').click(function(){
            // 保存评价
            $.windowbox.redraw();
            var resultID = +$('#resultID').val();
            var data = "{";
            var  resultRecord = {};
            var testerName = $("#testerName").val();
            var remark = $('#doctorRemarkText').html() + '';
            var data = "{";
            data += "'resultRecord.resultId':" + resultID + "}";
            data = eval('(' + data + ')');
            data['resultRecord.testerName'] = testerName;
            data['resultRecord.remark'] = remark;
            $.ajax({
                url: 'saveRecordFeel2020',
                type: 'post',
                data: data,
                success:function (json) {
                     window.print();
                }
            })
        })


    });


</script>
</body>
</html>

