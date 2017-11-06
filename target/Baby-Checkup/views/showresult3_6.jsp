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
        <h1 style="padding-left:100px;margin-top: 20px;margin-bottom: 20px;text-align: center;">3-6岁小儿神经心理检查报告单</h1>

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
                        <td class="col-md-2"><s:if test=" baby.fatherid">爸爸</s:if>
                                             <s:if test=" baby.motherid ">妈妈</s:if>
                                             <s:if test=" !baby.fatherid && !baby.motherid">''</s:if></td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="result3_6.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table">
                    <thead>
                    <tr>
                        <th class="col-md-1">测试项目</th>
                        <th class="col-md-1">育儿观念</th>
                        <th class="col-md-1">关注和接纳</th>
                        <th class="col-md-1">规矩或自我调控能力</th>
                        <th class="col-md-1">养育关系和沟通</th>
                        <th class="col-md-1">学习环境</th>
                        <th class="col-md-1">语言环境</th>
                        <th class="col-md-1">玩耍和娱乐</th>
                        <th class="col-md-1">安全和居住环境</th>
                        <th class="col-md-3">总和</th>

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
                        <td id="a1"><s:property value="result3_6.a1"/></td>
                        <td id="a2"><s:property value="result3_6.a2"/></td>
                        <td id="a3"><s:property value="result3_6.a3"/></td>
                        <td id="a4"><s:property value="result3_6.a4"/></td>
                        <td id="a5"><s:property value="result3_6.a5"/></td>
                        <td id="a6"><s:property value="result3_6.a6"/></td>
                        <td id="a7"><s:property value="result3_6.a7"/></td>
                        <td id="a8"><s:property value="result3_6.a8"/></td>
                        <td id="a0"><s:property value="result3_6.a0"/></td>
                    </tr>
                    <tr>
                        <td>应得分</td>
                        <td>12</td>
                        <td>12</td>
                        <td>12</td>
                        <td>14</td>
                        <td>12</td>
                        <td>10</td>
                        <td>16</td>
                        <td>12</td>
                        <td>100</td>
                    </tr>
                    <tr>
                        <td>百分位数范围</td>
                        <td id="p1"><s:property value="result3_6.p1"/></td>
                        <td id="p2"><s:property value="result3_6.p2"/></td>
                        <td id="p3"><s:property value="result3_6.p3"/></td>
                        <td id="p4"><s:property value="result3_6.p4"/></td>
                        <td id="p5"><s:property value="result3_6.p5"/></td>
                        <td id="p6"><s:property value="result3_6.p6"/></td>
                        <td id="p7"><s:property value="result3_6.p7"/></td>
                        <td id="p8"><s:property value="result3_6.p8"/></td>
                        <td id="p0"><s:property value="result3_6.p0"/></td>
                    </tr>
                    <tr>
                        <td>评估意见</td>
                        <td id="r1"><s:property value="result3_6.r1"/></td>
                        <td id="r2"><s:property value="result3_6.r2"/></td>
                        <td id="r3"><s:property value="result3_6.r3"/></td>
                        <td id="r4"><s:property value="result3_6.r4"/></td>
                        <td id="r5"><s:property value="result3_6.r5"/></td>
                        <td id="r6"><s:property value="result3_6.r6"/></td>
                        <td id="r7"><s:property value="result3_6.r7"/></td>
                        <td id="r8"><s:property value="result3_6.r8"/></td>
                        <td id="r0"><s:property value="result3_6.r0"/></td>
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
                <td style="padding: 0px;width: 100%;">
                    <div id="column"></div>
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


    // 柱状图数据
    

//    var p1 = "",
//        p1_1 = "",
//        p1_2 = "";
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

    var p0= 0,
        p0_1 = 0,
        p0_2 = 0;
    <%--p0 = <s:property value="result3_6.p0"/>;--%>
    <%--p0_1 = p0.split('~')[0];--%>
    <%--p0_2 = p0.split('~')[1];--%>


    
    

    $(function () {
        debugger
        $('#column').highcharts({
            chart: {
                type: 'column'
            },
            title: {
                text: '百分比堆叠柱形图'
            },
            xAxis: {
                categories: ['育儿观念', '关注和接纳', '规矩或自我调控能力', '养育关系和沟通', '学习环境', '语言环境', '玩耍和娱乐', '安全和居住环境', '总和']
            },
            yAxis: {
                min: 0,
                title: {
                    text: '水果消费总量'
                }
            },
            tooltip: {
                pointFormat: '<span style="color:{series.color}">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>',
                shared: true
            },
            plotOptions: {
                column: {
                    stacking: 'percent'
                }
            },
            series: [{
                name: '',
                data: [100-p1_2, 100-p2_2, 100-p3_2, 100-p4_2, 100-p5_2,100-p6_2,100-p7_2,100-p8_2,100-p0_2],
                color: '#eee'
            }, {
                name: '',
                data: [p1_2-p1_1, p2_2-p2_1, p3_2-p3_1, p4_2-p4_1, p5_2-p5_1,p6_2-p6_1,p7_2-p7_1,p8_2-p8_1,p0_2-p0_1],
                color: 'black'
            }, {
                name: '',
                data: [p1_1, p2_1, p3_1, p4_1, p5_1, p6_1, p7_1, p8_1,p0_1],
                color:'#eee'
            }]
        });


        // $('#column').highcharts({
        //     chart: {
        //         type: 'column'
        //     },
        //     title: {
        //         text: '小儿测评结果柱状图'
        //     },
        //     xAxis: {
        //         categories: [
        //             '大运动',
        //             '精细动作',
        //             '适应能力',
        //             '语言',
        //             '社交行为'
        //         ]
        //     },
        //     yAxis: [{
        //         min: 0,
        //         plotLines: [{
        //             color: 'blue',
        //             value: monthage,
        //             width: 2,
        //             /*label:{
        //              text:'实足年龄',
        //              align:'left'
        //              }*/
        //         }],
        //         title: {
        //             text: '智龄'
        //         }
        //     }, {
        //         title: {
        //             text: '发育商（DQ）'
        //         },
        //         opposite: true
        //     }],
        //     legend: {
        //         shadow: false
        //     },
        //     tooltip: {
        //         shared: true
        //     },
        //     plotOptions: {
        //         column: {
        //             grouping: false,
        //             shadow: false,
        //             borderWidth: 0
        //         }
        //     },
        //     series: [{
        //         name: '发育商',
        //         color: 'rgb(169, 255, 150)',
        //         data: [a1, a2, a3, a4, a5],
        //         pointPadding: 0.3,
        //         pointPlacement: -0.2
        //     }, {
        //         name: '智龄',
        //         color: 'rgba(0,0,0)',
        //         data: [b1, b2, b3, b4, b5],
        //         tooltip: {
        //             valuePrefix: '$',
        //             valueSuffix: ' M'
        //         },
        //         pointPadding: 0.3,
        //         pointPlacement: 0.2,
        //         yAxis: 1
        //     }]
        // });
    });
</script>
</body>
</html>