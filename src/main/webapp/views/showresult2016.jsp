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
<div class="front-inner front-inner-media pdf">
    <div class="container">
        <img id="ruiweiyue" class="pull-right" style="height: 100px;width: 100px;" src="statics/img/ruiweiyue.png" alt="Logo">
        <img id="hema" class="pull-left" style="height: 120px;width: 720px;" src="statics/img/hema.png" alt="Logo">

        <!-- <h2 style="padding-left:100px;text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">0-6岁小儿神经心理检查报告单</h1> -->

        <div class="panel panel-default front-panel" id="info" style="margin-top: 120px">
            <!-- <div class="panel-heading" style="text-align: center;">小儿基本资料</div> -->
            <div class="panel-body front-no-padding" style="padding: 15px;">
                <table style="width: 100%">
                    <tbody>
                    <tr>
                        <td class="col-md-2">姓名</td>
                        <td class="col-md-2"><s:property value="baby.name"/></td>
                        <td class="col-md-2">性别</td>
                        <td class="col-md-2"><s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-2">出生日期</td>
                        <td class="col-md-2"><s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                    </tr>
                    <tr>
                        <td class="col-md-2">检查日期</td>
                        <td class="col-md-2"><s:property value="stime"/></td>
                        <td class="col-md-2">智龄</td>
                        <td class="col-md-2" id="DQ"></td>
                        <td class="col-md-2">发育商DQ</td>
                        <td class="col-md-2" id="growth"></td>
                        <!-- <td class="col-md-2">分娩方式</td>
                        <td class="col-md-2"><s:property value="baby.delivery"/></td> -->
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result2016.id"/>">
        <input type="hidden" id="babyID" value="<s:property value="baby.babyid"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <!-- <div class="panel-heading" style="text-align: center;">评定结果</div> -->
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <th class="col-md-2">测试项目</th>
                        <th class="col-md-2">大运动</th>
                        <th class="col-md-2">精细运动</th>
                        <th class="col-md-2">适应能力</th>
                        <th class="col-md-2">语言</th>
                        <th class="col-md-2">社交行为</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>智龄（月）</td>
                        <td id="scoreSport"><s:property value="result2016.scoreSport"/></td>
                        <td id="scoreAct"><s:property value="result2016.scoreAct"/></td>
                        <td id="scoreAdapt"><s:property value="result2016.scoreAdapt"/></td>
                        <td id="scoreLanguage"><s:property value="result2016.scoreLanguage"/></td>
                        <td id="scoreSocial"><s:property value="result2016.scoreSocial"/></td>
                    </tr>
                    <tr>
                        <td>单项发育商（DQ）</td>
                        <td><s:property value="scoreSport"/></td>
                        <td><s:property value="scoreAct"/></td>
                        <td><s:property value="scoreAdapt"/></td>
                        <td><s:property value="scoreLanguage"/></td>
                        <td id="last"><s:property value="scoreSocial"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <table class="table table-striped  table-bordered front-table">
            <tbody>
            <tr>
                <td style="padding: 0px;width: 100%;">
                    <div id="column" style="height: 200px"></div>
                </td>
            </tr>
            </tbody>
        </table>

        <table class="table table-striped  table-bordered front-table">
            <tbody>
                <tr>
                    <td style="width: 50%">
                        大运动
                    </td>
                    <td style="width: 50%">
                        精细运动
                    </td>
                </tr>
                <tr>
                    <td id="remark1"></td>
                    <td id="remark2"></td>
                </tr>
            </tbody>
        </table>
        <table class="table table-striped  table-bordered front-table">
            <tbody>
                <tr>
                    <td style="width: 33%">
                        适应能力
                    </td>
                    <td style="width: 33%">
                        语言
                    </td>
                    <td style="width: 33%"> 
                        社交能力
                    </td>
                </tr>
                <tr>
                    <td id="remark3"></td>
                    <td id="remark4"></td>
                    <td id="remark5"></td>
                </tr>
            </tbody>
        </table>

        <div class="panel panel-default front-panel col-md-12" id="advice" style="padding: 0px;">
            <div class="panel-heading" style="text-align: left;">医师评价及建议</div>
            <div class="panel-body front-no-padding">
                <textarea rows="3" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div>
        </div>
        <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div>
            <div >
                <a type="button" class="btn btn-primary noprint pull-right print" style="margin:50px 10px 20px 0px;">打印结果</a>
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
<script src="https://cdn.bootcss.com/html2canvas/0.5.0-beta4/html2canvas.js"></script>
<script src="https://cdn.bootcss.com/jspdf/1.3.4/jspdf.debug.js"></script>
<script type="text/javascript">
    var dq_fix = <s:property value="result2016.dq"/>;
    var growth_fix = <s:property value="result2016.growth"/>;
    $("#DQ").html(dq_fix.toFixed(1));
    $("#growth").html(growth_fix.toFixed(1));
    var a1 = 0;
    a1 = <s:property value="result2016.scoreSport"/>;//智龄
    var a2 = 0;
    a2 = <s:property value="result2016.scoreAct"/>;
    var a3 = 0;
    a3 = <s:property value="result2016.scoreAdapt"/>;
    var a4 = 0;
    a4 = <s:property value="result2016.scoreLanguage"/>;
    var a5 = 0;
    a5 = <s:property value="result2016.scoreSocial"/>;
    var b1 = 0;
    b1 = <s:property value="scoreSport"/>;//发育商
    var b2 = 0;
    b2 = <s:property value="scoreAct"/>;
    var b3 = 0;
    b3 = <s:property value="scoreAdapt"/>;
    var b4 = 0;
    b4 = <s:property value="scoreLanguage"/>;
    var b5 = 0;
    b5 = <s:property value="scoreSocial"/>;
    var monthage = <s:property value="monthage"/>;
    var a = [b1, b2, b3, b4, b5];
    a = a.sort();
    var max = a[0];
    if (max < 100) {
        max = 120;
    } else if (max < 150) {
        max = 150;
    } else if (max < 200) {
        max = 200;
    }
    $(function () {
        var chart1,
            chart2;
        $.windowbox = { 
            //定义一个方法aa 
            redraw: function(){ 
                $("title").html('2019');
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
                $('#column').css({
                    width: '720px',
                    height: '120px'
                });
                chart1.reflow();
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
                $('#last').css({
                    'border': '0px'
                });

                window.scrollTo(0,0);
            }
        }  
        $('.print').click(function(){
            $.windowbox.redraw();
            window.print();
        })

        $('.download').click(function(){
            $.windowbox.redraw();
            var target = document.getElementsByClassName("pdf")[0];
            target.style.background = "#FFFFFF";
            html2canvas(target, {
                onrendered:function(canvas) {
                    var contentWidth = canvas.width;
                    var contentHeight = canvas.height;

                    //一页pdf显示html页面生成的canvas高度;
                    var pageHeight = contentWidth / 592.28 * 841.89;
                    //未生成pdf的html页面高度
                    var leftHeight = contentHeight;
                    //页面偏移
                    var position = 0;
                    //a4纸的尺寸[595.28,841.89]，html页面生成的canvas在pdf中图片的宽高
                    var imgWidth = 595.28;
                    var imgHeight = 592.28/contentWidth * contentHeight;

                    var pageData = canvas.toDataURL('image/jpeg', 1.0);

                    var pdf = new jsPDF('', 'pt', 'a4');

                    //有两个高度需要区分，一个是html页面的实际高度，和生成pdf的页面高度(841.89)
                    //当内容未超过pdf一页显示的范围，无需分页
                    if (leftHeight < pageHeight) {
                        pdf.addImage(pageData, 'JPEG', 0, 0, imgWidth, imgHeight );
                    } else {
                        while(leftHeight > 0) {
                            pdf.addImage(pageData, 'JPEG', 0, position, imgWidth, imgHeight)
                            leftHeight -= pageHeight;
                            position -= 841.89;
                            //避免添加空白页
                            if(leftHeight > 0) {
                              pdf.addPage();
                            }
                        }
                    }
                    pdf.save("测评结果.pdf");
                }
            })
        })


        $('#column').highcharts({
            chart: {
                type: ''
            },
            credits: {
                enabled: false
            },
            legend: {
                enabled: false
            },
            title: {
                text: ''
            },
            xAxis: {
                categories: [
                    '大运动',
                    '精细动作',
                    '适应能力',
                    '语言',
                    '社交行为'
                ]
            },
            yAxis: [ {
                title: {
                    text: '发育商'
                },
                min: 50,
                max: 150,
                labels: {
                    useHTML: true,
                    formatter: function () {
                        if(this.value == 70){
                            return '<span style="color:red">' +
                                this.value + '</span>';
                        }
                        if(this.value == 85){
                            return '<span style="color:orange;">' +
                                this.value + '</span>';
                        }
                        if(this.value == 115){
                            return '<span style="color:blue">' +
                                this.value + '</span>';
                        }
                        if(this.value == 130){
                            return '<span style="color:green">' +
                                this.value + '</span>';
                        }
                    }
                },
                tickPositions: [50, 70, 85, 115, 130],
                opposite: true
            }],
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
                name: '发育商',
                color: '#000000',
                data: [b1, b2, b3, b4, b5],
                pointPadding: 0.3,
                pointPlacement: 0.2,
                yAxis: 0
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
                categories: ['大运动',
                    '精细动作',
                    '适应能力',
                    '语言',
                    '社交行为'],
                tickmarkPlacement: 'on',
                lineWidth: 0
            },
            yAxis: {
                max: max,
                min: 30,
                gridLineInterpolation: 'polygon',
                lineWidth: 0,
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'rgb(144, 238, 126)',
                    value: 70,
                    width: 2,
                    label: {
                        text: '70',
                        y: 30
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 85,
                    width: 2,
                    label: {
                        text: '85',
                        y: 10
                    }
                }, {
                    color: 'rgb(144, 238, 126)',
                    value: 115,
                    width: 2,
                    label: {
                        text: '115',
                        y: 10
                    }
                }],
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '发育商',
                data: [b1, b2, b3, b4, b5],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart2 = c;
        });
        var resultID = $('#resultID').val()
        var instructions = [];
        var str1 = '';
        var str2 = '';
        var str3 = '';
        var str4 = '';
        var str5 = '';
        $.ajax({
            url: 'getRemark',
            type: 'post',
            data: {
                'resultID': resultID
            },
            success:function (json) {
                instructions = json.instructions
                item = {}
                for (var i = 0, len = instructions.length; i < len ; i++) {
                    item = instructions[i];
                    switch (item['type']) {
                        case 1:
                            str1 += item['content'];
                            str1 += '<br/>';
                            break;
                        case 2:
                            str2 += item['content'];
                            str2 += '<br/>';
                            break;
                        case 3:
                            str3 += item['content'];
                            str3 += '<br/>';
                            break;
                        case 4:
                            str4 += item['content'];
                            str4 += '<br/>';
                            break;
                        case 5:
                            str5 += item['content'];
                            str5 += '<br/>';
                            break;
                    } 
                }
                $('#remark1').html(str1)
                $('#remark2').html(str2)
                $('#remark3').html(str3)
                $('#remark4').html(str4)
                $('#remark5').html(str5)

            }
        })


    });
</script>
</body>
</html>