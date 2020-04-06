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


        <input type="hidden" id="resultID" value="<s:property value="resultDDST.id"/>">
        <input type="hidden" id="remarkOld" value="<s:property value="resultRecord.remark"/>">
        <input type="hidden" id="testerNameOld" value="<s:property value="resultRecord.testerName"/>">
        <input type="hidden" id="babyID" value="<s:property value="baby.babyid"/>">

        <input type="hidden" id="hname" value="<s:property value="hospital.name"/>">

        <s:if test="hospital.name == '河马儿科（盛京店）' ||  hospital.name == '河马儿科（奥体店）' ||  hospital.name == '河马儿科（汪河路店）'">
            <img id="ruiweiyue" class="pull-right" style="height: 100px;width: 100px;" src="statics/img/hemaCode.png" alt="Logo">
            <img id="hema" class="pull-left" style="height: 120px;width: 720px;" src="statics/img/hemaDDST.png" alt="Logo">
        </s:if>
        <s:else>
            <h2 style="text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
            <h1 style="margin-top: 20px;margin-bottom: 20px;text-align: center;">DDST筛查</h1>
        </s:else>

        <div class="panel panel-default front-panel" id="info" style="margin-top: 120px">
            <div class="panel-heading" style="text-align: center;">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding: 15px;" id="headBasic">
                <table style="width: 100%">
                    <tbody>
                    <tr>
                        <td class="col-md-2">姓名:<s:property value="baby.name"/></td>
                        <td class="col-md-2">性别:<s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-3">出生日期:<s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        <td class="col-md-2">月龄:<s:property value="days"/></td>
                        <td class="col-md-3">测评日期:&nbsp;<s:property value="stime"/></td>
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

        <!-- <div class="panel panel-default front-panel col-md-12" style="padding: 0px;">
            <div class="panel-heading">
                评定结果: <s:property value="resultDDST.result"/>
            </div>
        </div> -->


        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px" id="table1">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果点状图</td>
                <td style="text-align:center;">评定结果柱状图</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="column1"></div>
                    </div>
                    
                </td>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="column2"></div>
                    </div>
                    
                </td>
            </tr>
            </tbody>
        </table>

        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px" id="table2">
            <tbody>
                <tr>
                    <td colspan="4" style="font-weight: bold;">
                        指导建议
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%; font-weight: bold; padding: 5px 8px;">
                        个人-社交
                    </td>
                    <td style="width: 25%; font-weight: bold; padding: 5px 8px;">
                        语言
                    </td>
                    <td style="width: 25%; font-weight: bold; padding: 5px 8px;">
                        精细运动-适应性
                    </td>
                    <td style="width: 25%; font-weight: bold; padding: 5px 8px;">
                        大运动
                    </td>
                </tr>
                <tr>
                    <td id="remark1"></td>
                    <td id="remark2"></td>
                    <td id="remark3"></td>
                    <td id="remark4"></td>
                </tr>



                <!-- <tr>
                    <td colspan="2" style="font-weight: bold;">
                        指导建议
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;"> 
                        个人-社交
                    </td>
                    <td id="remark1"></td>
                </tr>
                <tr>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        语言
                    </td>
                    <td id="remark2"></td>
                </tr>
                <tr>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        精细运动-适应性
                    </td>
                    <td id="remark3"></td>
                </tr>
                <tr>
                    <td style="width: 20%; font-weight: bold; padding: 5px 8px;">
                        大运动
                    </td>
                    <td id="remark4"></td>
                </tr> -->
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
    var days = parseInt($('#days').val());
    if (days>24) {
        days = parseInt(days / 3) * 3;
    }

    var result = {
        1: {'a':3,  'b':2,  'c':3,  'd': 1},
        2: {'a':4,  'b':4,  'c':6,  'd': 3},
        3: {'a':4,  'b':4,  'c':7,  'd': 6},
        4: {'a':5,  'b':4,  'c':8,  'd': 7},
        5: {'a':7,  'b':4,  'c':6,  'd': 6},
        6: {'a':8,  'b':5,  'c':7,  'd': 6},
        7: {'a':7,  'b':6,  'c':8,  'd': 5},
        8: {'a':6,  'b':6,  'c':7,  'd': 6},
        9: {'a':5,  'b':5,  'c':6,  'd': 6},
        10: {'a':6,  'b':5,  'c':5,  'd': 7},
        11: {'a':7,  'b':5,  'c':5,  'd': 6},
        12: {'a':6,  'b':4,  'c':5,  'd': 7},
        13: {'a':7,  'b':5,  'c':6,  'd': 6},
        14: {'a':7,  'b':5,  'c':7,  'd': 6},
        15: {'a':7,  'b':6,  'c':7,  'd': 6},
        16: {'a':7,  'b':6,  'c':8,  'd': 7},
        17: {'a':8,  'b':7,  'c':8,  'd': 7},
        18: {'a':9,  'b':7,  'c':8,  'd': 7},
        19: {'a':8,  'b':8,  'c':7,  'd': 6},
        20: {'a':8,  'b':8,  'c':5,  'd': 6},
        21: {'a':9,  'b':8,  'c':5,  'd': 5},
        22: {'a':9,  'b':6,  'c':7,  'd': 6},
        23: {'a':9,  'b':6,  'c':6,  'd': 6},
        24: {'a':9,  'b':5,  'c':6,  'd': 7},
        27: {'a':8,  'b':6,  'c':7,  'd': 7},
        30: {'a':9,  'b':5,  'c':7,  'd': 8},
        33: {'a':9,  'b':5,  'c':8,  'd': 6},
        36: {'a':7,  'b':6,  'c':8,  'd': 7},
        39: {'a':6,  'b':6,  'c':7,  'd': 6},
        42: {'a':5,  'b':8,  'c':8,  'd': 6},
        45: {'a':4,  'b':9,  'c':9,  'd': 7},
        48: {'a':4,  'b':9,  'c':7,  'd': 8},
        51: {'a':3,  'b':9,  'c':8,  'd': 8},
        54: {'a':3,  'b':8,  'c':7,  'd': 7},
        57: {'a':3,  'b':6,  'c':7,  'd': 7},
        60: {'a':3,  'b':6,  'c':7,  'd': 7},
        66: {'a':3,  'b':6,  'c':5,  'd': 6},
        72: {'a':3,  'b':4,  'c':4,  'd': 3},
    };



    $('#b1').text(result[days]['a'])
    $('#b2').text(result[days]['b'])
    $('#b3').text(result[days]['c'])
    $('#b4').text(result[days]['d'])


    var p1 = +(parseInt($('#a1').text()) / parseInt($('#b1').text())).toFixed(1)
    var p2 = +(parseInt($('#a2').text()) / parseInt($('#b2').text())).toFixed(1)
    var p3 = +(parseInt($('#a3').text()) / parseInt($('#b3').text())).toFixed(1)
    var p4 = +(parseInt($('#a4').text()) / parseInt($('#b4').text())).toFixed(1)

    

    var a1 = parseInt($('#a1').text());
    var a2 = parseInt($('#a2').text());
    var a3 = parseInt($('#a3').text());
    var a4 = parseInt($('#a4').text());


    var resultID = $('#resultID').val();
    var instructions = [];
    var str1 = '';
    var str2 = '';
    var str3 = '';
    var str4 = '';
    $.ajax({
        url: 'getRemarkDDST',
        type: 'post',
        data: {
            'id': resultID
        },
        success:function (json) {
            instructions = json.instructions
            item = {}
            str1Times = 0
            str2Times = 0
            str3Times = 0
            str4Times = 0
            for (var i = 0, len = instructions.length; i < len ; i++) {
                item = instructions[i];
                switch (item['type']) {
                    // 社交
                    case 4:
                        if (str1Times < 4) {
                            str1 += item['content'];
                            str1 += '<br/>';
                            if (item['contentDetail1']) {
                                str1 += item['contentDetail1'];
                                str1 += '<br/>';
                            }
                            if (item['contentDetail2']) {
                                str1 += item['contentDetail2'];
                                str1 += '<br/>';
                            }
                            if (item['contentDetail3']) {
                                str1 += item['contentDetail3'];
                                str1 += '<br/>';
                            }
                            str1Times++;
                        }
                        break;
                    // 语言
                    case 3:
                        if (str2Times < 4) {
                            str2 += item['content'];
                            str2 += '<br/>';
                            if (item['contentDetail1']) {
                                str2 += item['contentDetail1'];
                                str2 += '<br/>';
                            }
                            if (item['contentDetail2']) {
                                str2 += item['contentDetail2'];
                                str2 += '<br/>';
                            }
                            if (item['contentDetail3']) {
                                str2 += item['contentDetail3'];
                                str2 += '<br/>';
                            }
                            str2Times++;
                        }
                        break;
                    // 精细动作-适应性
                    case 2:
                        if (str3Times < 4) {
                            str3 += item['content'];
                            str3 += '<br/>';
                            if (item['contentDetail1']) {
                                str3 += item['contentDetail1'];
                                str3 += '<br/>';
                            }
                            if (item['contentDetail2']) {
                                str3 += item['contentDetail2'];
                                str3 += '<br/>';
                            }
                            if (item['contentDetail3']) {
                                str3 += item['contentDetail3'];
                                str3 += '<br/>';
                            }
                            str3Times++;
                        }
                        break;
                    // 大运动
                    case 1:
                        if (str4Times < 4) {
                            str4 += item['content'];
                            str4 += '<br/>';
                            if (item['contentDetail1']) {
                                str4 += item['contentDetail1'];
                                str4 += '<br/>';
                            }
                            if (item['contentDetail2']) {
                                str4 += item['contentDetail2'];
                                str4 += '<br/>';
                            }
                            if (item['contentDetail3']) {
                                str4 += item['contentDetail3'];
                                str4 += '<br/>';
                            }
                            str4Times++;
                        }
                        break;
                } 
            }
            $('#remark1').html(str1)
            $('#remark2').html(str2)
            $('#remark3').html(str3)
            $('#remark4').html(str4)
            window.flag += 1
        }
    })

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
        var chart1,
            chart2;
        var categories =  ['个人-社交', '语言', '精细运动-适应性', '大运动'];
        var result =  [p1, p2, p3, p4];

        $('#column1').highcharts({
            credits: {
                enabled: false
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: categories
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
                data: result
            }]
        }, function(c){
            chart1 = c;
        });



        $('#column2').highcharts({
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
            chart2 = c;
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
                $('#column2').css({
                    width: '300px',
                    height: '300px'
                });
                chart1.reflow();
                chart2.reflow();
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
                $('#table1').css({
                    'margin-bottom': '1px'
                });
                $('#table2').css({
                    'margin-bottom': '1px'
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
            data += "'resultRecord.resultId':" + resultID + "}";
            data = eval('(' + data + ')');
            data['resultRecord.testerName'] = testerName;
            data['resultRecord.remark'] = remark;
            $.ajax({
                url: 'saveRecordDDST',
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

