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
        #remark1, #remark2, #remark3, #remark4, #doctorRemark{
            font-size: 10px;
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


        <input type="hidden" id="resultID" value="<s:property value="resultADHD.id"/>">
        <input type="hidden" id="remarkOld" value="<s:property value="resultRecord.remark"/>">
        <input type="hidden" id="testerNameOld" value="<s:property value="resultRecord.testerName"/>">
        <input type="hidden" id="babyID" value="<s:property value="baby.babyid"/>">

        <div class="panel panel-default front-panel" id="info" style="margin-top: 20px">
            <div class="panel-heading" style="text-align: center;">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding: 15px;" id="headBasic">
                <table style="width: 100%">
                    <tbody>
                    <tr>
                        <td class="col-md-3">姓名:<s:property value="baby.name"/></td>
                        <td class="col-md-3">性别:<s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-3">出生日期:<s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        <td class="col-md-3">月龄:<s:property value="days"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <input id="days" type="hidden" value="<s:property value="days"/>">

        </div>
        <div class="panel panel-default front-panel" id="allbaby" style="display: none">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <td class="col-md-2">项目</td>
                        <th class="col-md-1">注意力不集中组</th>
                        <th class="col-md-1">多动/冲动组</th>
                        <th class="col-md-1">对立违抗性障碍组</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>个人得分</td>
                        <td id="a1"><s:property value="resultADHD.a1"/></td>
                        <td id="a2"><s:property value="resultADHD.a2"/></td>
                        <td id="a3"><s:property value="resultADHD.a3"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px" id="table1">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果柱状图</td>
                <td style="text-align:center;">评价</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="column1"></div>
                    </div>
                    
                </td>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <!-- 评价 -->
                        <table class="table table-striped  table-bordered front-table">
                            <tr>
                                <td style="font-weight: bold;font-size: 16px">
                                    注意力不集中组
                                </td>
                            </tr>
                            <tr>
                                <td id="r1">
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold;font-size: 16px">
                                    多动/冲动组
                                </td>
                            </tr>
                            <tr>
                                <td id="r2">
                                    
                                </td>
                            </tr>
                            <tr>
                                <td style="font-weight: bold;font-size: 16px">
                                    对立违抗性障碍组
                                </td>
                            </tr>
                            <tr>
                                <td id="r3">
                                    
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                </td>
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
    window.flag = 1;
    
    var a1 = parseInt($('#a1').text());
    var a2 = parseInt($('#a2').text());
    var a3 = parseInt($('#a3').text());
    var r1 = '结论:';
    var r2 = '结论:';
    var r3 = '结论:';
    if (a1 < 13) {
        r1 = r1 + '症状在临床上不显著'
    } else if (a1 < 18) {
        r1 = r1 + '轻微症状'
    } else if (a1 < 23) {
        r1 = r1 + '中度症状'
    } else {
        r1 = r1 + '严重症状'
    }


    if (a2 < 13) {
        r2 = r2 + '症状在临床上不显著'
    } else if (a2 < 18) {
        r2 = r2 + '轻微症状'
    } else if (a2 < 23) {
        r2 = r2 + '中度症状'
    } else {
        r2 = r2 + '严重症状'
    }


    if (a3 < 8) {
        r3 = r3 + '症状在临床上不显著'
    } else if (a3 < 14) {
        r3 = r3 + '轻微症状'
    } else if (a3 < 19) {
        r3 = r3 + '中度症状'
    } else {
        r3 = r3 + '严重症状'
    }

    $('#r1').text(r1);
    $('#r2').text(r2);
    $('#r3').text(r3);



    var resultID = $('#resultID').val();

    var inter = setInterval(function() {
        if (window.flag === 1) {
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


    // 柱状图数据
    $(function () {
        var chart1;
        var categories =  ['注意力不集中组', '多动/冲动组', '对立违抗性障碍组'];
        var result =  [a1, a2, a3];
        $('#column1').highcharts({
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
                // plotLines: [{
                //     color: 'red',
                //     value: 20,
                //     width: 2
                // }, {
                //     color: 'orange',
                //     value: 30,
                //     width: 2
                // }, {
                //     color: 'blue',
                //     value: 40,
                //     width: 2
                // }],
                title: {
                    text: ''
                }
            }],
            legend: {
                shadow: false,
                enabled:false
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

        $.windowbox = { 
            //定义一个方法aa 
            redraw: function(){ 
                $("title").html('2020');
                $(".navbar").hide();
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
                $('#column1').css({
                    width: '300px',
                    height: '300px'
                });
                chart1.reflow();
                $('#info').css({
                    'margin-top': '60px'
                });
                $('#table1').css({
                    'margin-bottom': '5px'
                });
                $('#table2').css({
                    'margin-bottom': '5px'
                });
                $('#headRemark').css({
                    'padding': '5px'
                });
                $('#headBasic').css({
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
            var  resultRecord = {};
            var testerName = $("#testerName").val();
            var remark = $('#doctorRemarkText').html() + '';
            var data = "{";
            data += "'resultRecord.id':" + resultID + "}";
            data = eval('(' + data + ')');
            data['resultRecord.testerName'] = testerName;
            data['resultRecord.remark'] = remark;
            $.ajax({
                url: 'saveRecordADHD',
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

