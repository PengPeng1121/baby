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
        #remark-1, #remark-2, #remark-3, #remark-4, #remark-5, #remark-6, #remark-7, #remark-8, #remark-9 {
            width: 130px !important;
        }
        .type-item{
            width: 110px !important;
        }
    </style>
</head>
<body class="front-body">
<s:include value="nav.jsp?act=test"/>
<div class="front-inner front-inner-media">
    <div class="container">
        <img id="ruiweiyue" class="pull-right" style="height: 100px;width: 100px;" src="statics/img/hemaCode.png" alt="Logo">
        <img id="hema" class="pull-left" style="height: 120px;width: 720px;" src="statics/img/hemaQiZhi2020.png" alt="Logo">
        
        <div class="panel panel-default front-panel" id="info" style="margin-top: 120px">
            <div class="panel-heading" style="text-align: center; font-weight: bold;">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding: 15px;">
                <table style="width: 100%">
                    <tbody>
                    <tr>
                        <td class="col-md-3">姓名:&nbsp;<s:property value="baby.name"/></td>
                        <td class="col-md-3">性别:&nbsp;<s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-3">出生日期:&nbsp;<s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        <td class="col-md-3">测评日期:&nbsp;<s:property value="stime"/></td>
                    </tr>
                </table>
            </div>
        </div>


        <input type="hidden" id="resultID" value="<s:property value="resultQiZhi2020.id"/>">
        
        <input type="hidden" id="remarkOld" value="<s:property value="resultRecord.remark"/>">
        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <table class="table table-striped front-table" style="border:0px;">
                        <tbody>
                        <tr>
                            <td style="border-top:0px;">
                               测试项 
                            </td>
                            <td style="border-top:0px;">
                                得分
                            </td>
                            <td style="border-top:0px;">
                                评价
                            </td>
                        </tr>
                        <tr>
                            <td>
                               活动量 
                            </td>
                            <td id="a1"><s:property value="resultQiZhi2020.a1"/>
                            </td>
                            <td id="z1-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               规律性 
                            </td>
                            <td id="a2"><s:property value="resultQiZhi2020.a2"/></td>
                            <td id="z2-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               趋避性 
                            </td>
                            <td id="a3"><s:property value="resultQiZhi2020.a3"/></td>
                            <td id="z3-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               适应性 
                            </td>    
                            <td id="a4"><s:property value="resultQiZhi2020.a4"/></td>
                            <td id="z4-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               反应强度 
                            </td>
                            <td id="a5"><s:property value="resultQiZhi2020.a5"/></td>
                            <td id="z5-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               情绪本质 
                            </td>
                            <td id="a6"><s:property value="resultQiZhi2020.a6"/></td>
                            <td id="z6-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               坚持度 
                            </td>
                            <td id="a7"><s:property value="resultQiZhi2020.a7"/></td>
                            <td id="z7-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               注意力分散度 
                            </td>
                            <td id="a8"><s:property value="resultQiZhi2020.a8"/></td>
                            <td id="z8-remark"></td>
                        </tr>
                        <tr>
                            <td>
                               敏感度 
                            </td>
                            <td id="a9"><s:property value="resultQiZhi2020.a9"/></td>
                            <td id="z9-remark"></td>
                        </tr>
                        </tbody>
                    </table>
                </td>
                <td style="padding: 0px;width: 100%;">
                    <div id="column1"></div>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="panel panel-default front-panel" id="advice">
            <div class="panel-heading" style="text-align: center;">医师评价及建议</div>
            <div class="panel-body front-no-padding">
                <textarea id="doctorRemark" rows="24" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
                <textarea id="doctorRemarkText" rows="24" style="resize:none;border: 0;width: 100%;height: 100%;display: none;"></textarea>
            </div>
        </div>


        <div style="width:270px;float: right">
            <!-- <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div> -->
            <div ><a type="button" class="btn btn-primary noprint pull-right print" style="margin:50px 10px 20px 0px;">打印结果</a></div>
        </div>

        　


        <div class="panel panel-default front-panel col-md-12" id="adviceText" style="padding: 0px;">
            <div class="panel-heading" style="text-align: center; position: absolute;">姓名:<s:property value="baby.name"/></div>
            <div class="panel-heading" style="text-align: center;">儿童气质个体解释报告</div>
            <div class="panel-body front-no-padding">
                <table class="table-striped  table-bordered front-table" style="font-size: 12px;">
                    <tbody>
                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">活动量</td>
                            <td class="col-md-10" colspan="2">孩子在吃、玩、睡或在日常生活中的运动量。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-1">
                            <td class="col-md-9" id="report-1"></td>
                        </tr>
                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">规律性</td>
                            <td class="col-md-10" colspan="2">学龄前主要指饮食、大便、睡眠、运动等规律性。学龄后主要关于日常活动和学习的规律和计划性。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-2">
                            <td class="col-md-9" id="report-2"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">趋避性</td>
                            <td class="col-md-10" colspan="2">指孩子面对新事物或陌生人，其最初的反应是接近还是退缩。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-3">
                            <td class="col-md-9" id="report-3"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">适应性</td>
                            <td class="col-md-10" colspan="2">接受新环境、新事物或人的过程是容易还是困难。如刚上幼儿园或学校能否很快适应，换个环境或学习方法能否很快习惯。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-4">
                            <td class="col-md-9" id="report-4"></td>
                        </tr>


                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">反应强度</td>
                            <td class="col-md-10" colspan="2">情绪反应的激烈程度，指高兴和不高兴的反应是强烈还是微弱。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-5">
                            <td class="col-md-9" id="report-5"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">情绪本质</td>
                            <td class="col-md-10" colspan="2">指孩子平日主要的情绪表现，是积极（愉快友好）还是消极（不愉快不友好）。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-6">
                            <td class="col-md-9" id="report-6"></td>
                        </tr>


                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">坚持度</td>
                            <td class="col-md-10" colspan="2">持续或克服困难阻碍做事情的坚持程度。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-7">
                            <td class="col-md-9" id="report-7"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">注意力分散度</td>
                            <td class="col-md-10" colspan="2">注意力生后就存在，但在开始学习后注意力问题才特别引人重视。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-8">
                            <td class="col-md-9" id="report-8"></td>
                        </tr>


                        <tr>
                            <td class="col-md-2 type-item" rowspan="2">敏感度</td>
                            <td class="col-md-10" colspan="2">表现为对声、光、温度、气味等生理感知的敏感性，也表现在对他人态度变化等心理感知的敏感性。</td>
                        </tr>
                        <tr>
                            <td class="col-md-3" id="remark-9">
                            <td class="col-md-9" id="report-9"></td>
                        </tr>
                    </tbody>
                </table>
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
    var a1 = +$('#a1').text()
    var a2 = +$('#a2').text()
    var a3 = +$('#a3').text()
    var a4 = +$('#a4').text()
    var a5 = +$('#a5').text()
    var a6 = +$('#a6').text()
    var a7 = +$('#a7').text()
    var a8 = +$('#a8').text()
    var a9 = +$('#a9').text()
    var remark1,remark2,remark3,remark4,remark5,remark6,remark7,remark8,remark9;
    var map = {
        '活动量正常':'该儿童的活动水平适中。',
        '活动量偏低':'该儿童的活动水平低：活动量少的孩子安静，做事较仔细，但往往显得做事较慢。对活动量少的儿童应加强适量的户外活动，应给充分的时间让他们完成作业或做事情，不要因为他们行动慢而加以指责，也不要代替他们做应该做的事。如果孩子的确付出了努力就要予以鼓励，事情完成的好要及时表扬。',
        '活动量偏高':'该儿童的活动水平高：活动量大的孩子显得有朝气，有探索性，接受外界的信息量较多，但有时会影响一些事情的完成或妨碍他人。对于活动量多的儿童可经常适当安排大活动量、接触外界的活动，但也应要求他们在需要安静时保持一定时间的安静，但时间不宜过长，以同龄儿童一般标准为限。',
        '规律性正常':'该儿童的节律性适中。',
        '规律性偏低':'该儿童的节律性较弱：不易被大人掌握，对日常抚养带来一些麻烦，长大后显得缺乏计划性，但不易产生适应困难。从幼儿期起要开始培养生活规律，一般吃饭、睡觉的时间前后相差半小时是正常的。入学后要学会制订作息和活动计划。',
        '规律性偏高':'该儿童的节律性较强：小时候显得容易抚养，长大时的日常活动和学习比较有条理、有计划。但规律过强则显得刻板，环境有变化时易出现适应困难。对于规律性很强的孩子，不必刻板地按他们的规律做，可偶尔打破规律，在不规律的环境中按实际情况安排活动，逐步训练适应生活的变化。',
        '较为谨慎':'该儿童的趋避性适中。',
        '比较主动好奇':'该儿童的趋避性易接近:这样的孩子愿意接受新的东西、见人“自来熟”，但太容易接近也会因接近不良事物或人而易受到不良影响。对待太容易接近的儿童从幼儿期起就应注意教导他们明辨是非，避免接近不良事物。',
        '不易接受新事物':'该儿童的趋避性易退缩:这样的孩子对新事物易回避，“怕生”，但也可使孩子少受不良的影响。对待较退缩的孩子，不要强迫或指责，要耐心引导孩子的兴趣，如提前告诉孩子将见到的人或面临的事情，这些事情会带来什么好处，多为孩子创造接触新事物的人和计划，鼓励孩子去接近，如添加新食物时鼓励先品尝后少量地吃。',
        '适应能力适中':'该儿童的适应性适中。',
        '适应变化较慢':'该儿童的适应性较弱：在适应新环境的过程中易出现问题，如换个地方不能入睡、不适应新老师的教学方法等。不过，一旦度过了适应期也能做得很好。多创造接触外界的机会，重视提前做好准备，循序渐进地达到目的，例如刚上幼儿园或学校时，需逐步适应。不要强迫孩子没有准备地适应新环境，避免到变换不定的环境中。',
        '较快适应变化':'该儿童的适应性较强：多表现为长处，在多数情况下是个宝贵的特点，值得鼓励。但在不良环境中也有易接受不良影响的危险，要注意适应对象的选择，所接触的内容或人是否有不良或危险的倾向。让孩子多接触有意义的事情，避免与社会上不好的事情有染、接受不良习惯和观念。',
        '反应强度适中':'该儿童的反应强度适中。',
        '反应强度偏弱':'该儿童的反应强度较弱：反应偏弱的孩子比较容易照养，易相处，但由于他们不能充分表达自己的需要和感受，而易被忽视，得不到应有的关注。对于反应弱的孩子，要注意孩子强烈的渴望和兴趣可能表现出来的却是微弱的，如孩子说什么地方痛就要认真对待，要鼓励孩子以恰当的方式表达自己的感受，少用否定的语言拒绝孩子。',
        '反应强度偏强':'该儿童的反应强度较强：容易吸引别人的注意，得到更多的关注，但也会因易大声哭闹而令人烦恼，并可能夸大事实，也许只是一件小事情或无理取闹。在孩子哭闹时不要急于表态，采用分散注意和“冷”处理的方法，查清原因，耐心等到孩子的情绪爆发过去，以平静的语气对孩子表明态度、讲道理。同时暗中留意以免发生意外。',
        '情绪本质适中':'该儿童的情绪本质适中。',
        '情绪本质偏负向':'该儿童的情绪本质较消极:表面情绪消极的孩子会让别人感到不快，令大人们担忧，但实际上他们内心同样渴望快乐、与人友好。对这种孩子，避免指责，要了解他们表达态度的方式，如以什么方式表达同意或真正的不高兴，鼓励孩子的积极情绪，如孩子高兴的时候要尽可能延长这种状态，大人们在孩子面前要多表现出积极的情绪。',
        '情绪本质偏正向':'该儿童的情绪本质较积极：情绪积极的孩子总是受人喜欢的，对人、对事的态度都比较积极看好，不容易消沉。但有时也会因过于乐观、评价过高而出现麻烦，需要教给孩子与年龄水平相适应的社会道德、安全规范以及保护措施，指导他们做出恰当的评价，以免对危险或不良事物也做出过高的“积极”判断。',
        '坚持度适中':'该儿童的坚持度适中。',
        '坚持度偏低':'该儿童的坚持度较低：遇到挫折容易放弃，但容易听从大人的劝告，放弃不应做的事情，易于抚养教育。对待这种特点，应要求他们做事的质量和能否完成，而不是做事的方式。坚持让孩子完成应该完成的事情，并达到一定的要求，在完成过程中可以暂停休息，但要能继续进行直至完成，逐渐提高要求。制定完成认为的短期计划，培养孩子能与年龄相称地坚持做事，而不轻易放弃。',
        '坚持度偏高':'该儿童的坚持度较高：显得固执、任性，但遇到困难不容易放弃。有契而不舍的精神，能较好地完成任务并取得好的成绩。但坚持性过高时，如果所坚持的事情是不合理的，也一定要坚持说服他们放弃。当孩子正做的事情一定要被打断时，需要经常提醒，所以要培养孩子自己估计完成事情的时间，对不同的事情合理安排时间。',
        '专注力适中':'该儿童的注意分散度适中。',
        '专注力较好':'该儿童的注意分散度不易分散:注意集中的孩子在幼儿时显得难哄，长大后显得做事效率高，学习成绩较好，但若过于专注一件事也会忽视周围的事情，甚至是重要情况。如果孩子在做一件事情时忽视了其它事情，应多提醒他们。',
        '注意力较易分散':'该儿童的注意分散度易分散：容易分心的孩子在婴幼儿期显得容易抚慰，但开始学习后则会影响学习成绩，这种孩子的长处是能较快注意到周围的事情，获得较多的信息。应在上学前逐步培养注意力，进行适当的注意训练，应结合孩子的兴趣。',
        '对刺激反应适中':'该儿童刺激反应适中。',
        '对刺激比较敏感':'该儿童较敏感。敏感的孩子善于察觉细微的变化、察言观色，但太敏感则可能出现一些问题，如睡眠障碍，胆小；对于敏感度高的孩子，避免突然的兴奋刺激或强刺激（如大声、强光等）。家长不要太主观，应以孩子的感受为准，逐渐训练孩子对感觉的耐受性，鼓励积极的方面，如富有同情心、音乐感强。',
        '对刺激较不敏感':'该儿童较不敏感。有不怕痛、不在乎大声、胆大等长处，但也可能忽略很多变化或遗漏一些有用的信息，如危险信号，不善于判断别人的表情或态度。对于敏感度低的孩子，要及时弥补遗漏之处，加强安全和社会规范教育，如过马路时要注意交通安全、不要在安静场合大声喧哗等，学习识别他人的表情、态度。'
    }

    

    $(function () {
        window.flag = 0;
        var chart1
        $('.print').click(function(){

            $('.front-inner').css({
                padding: '0px'
            });
            $('#column1').css({
                width: '350px',
                height: '300px'
            });
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
            $('#adviceText').css({
                marginTop: '250px'
            });
            
            chart1.reflow();


            var remark = $('#doctorRemark').val();
            var realRemark = remark;
            // realRemark = remark.replace(/\n/g, "<br/>");
            $('#doctorRemarkText').html(realRemark);
            $('#doctorRemarkText').show();
            $('#doctorRemark').hide();

            var resultID = +$('#resultID').val();
            var data = "{";
            var  resultRecord = {};
            var remark = $('#doctorRemarkText').html() + '';
            var data = "{";
            data += "'resultRecord.resultId':" + resultID + "}";
            data = eval('(' + data + ')');
            data['resultRecord.remark'] = remark;
            $.ajax({
                url: 'saveRecordQiZhi2020',
                type: 'post',
                data: data,
                success:function (json) {
                     window.print();
                }
            })
        })
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
                categories: ['活动量','规律性','趋避性','适应性','反应强度','情绪本质','坚持度','注意力<br>分散度','敏感度'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 20,
                title: {
                    text: '分数',
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: false,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'orange',
                    value: 7,
                    width: 2
                }, {
                    color: 'green',
                    value: 9,
                    width: 2
                }]
            },
            tooltip: {
                enabled: false,
                formatter: function () {
                    return ''
                }
            },
            plotOptions: {
                column: {
                    stacking: 'normal',
                    dataLabels: {
                        enabled: false,
                        color: (Highcharts.theme && Highcharts.theme.dataLabelsColor) || 'white',
                        style: {
                            // 如果不需要数据标签阴影，可以将 textOutline 设置为 'none'
                            textOutline: '1px 1px black'
                        }
                    }
                }
            },
            series: [{
                name: '',
                color:'#ff8547',
                data: [a1,a2,a3,a4,a5,a6,a7,a8,a9]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart1 = c;
        });



        var inter = setInterval(function() {
            if (window.flag === 0) {
                var remarkOld = $("#remarkOld").val();
                if (remarkOld && remarkOld!= 'null') {
                    var reg = new RegExp("<br>","g");//g,表示全部替换。
                    remarkOld = remarkOld.replace(reg,"\n");
                    $('#doctorRemark').html(remarkOld);
                }

                clearInterval(inter);
            }
        }, 200)



    });
    var remarks = {
        1:{
            1:'活动量偏低',
            2:'活动量正常',
            3:'活动量偏高'
        },
        2:{
            1:'规律性偏低',
            2:'规律性正常',
            3:'规律性偏高'
        },
        3:{
            1:'不易接受新事物',
            2:'较为谨慎',
            3:'比较主动好奇'
        },
        4:{
            1:'适应变化较慢',
            2:'适应能力适中',
            3:'较快适应变化'
        },
        5:{
            1:'反应强度偏弱',
            2:'反应强度适中',
            3:'反应强度偏强'
        },
        6:{
            1:'情绪本质偏负向',
            2:'情绪本质适中',
            3:'情绪本质偏正向'
        },
        7:{
            1:'坚持度偏低',
            2:'坚持度适中',
            3:'坚持度偏高'
        },
        8:{
            1:'专注力较好',
            2:'专注力适中',
            3:'注意力较易分散'
        },
        9:{
            1:'对刺激较不敏感',
            2:'对刺激反应适中',
            3:'对刺激比较敏感'
        }

    }
    function getRemark(result, type) {
        var z = ''
        if (result < 7) {
            z = remarks[type][1];
        } else if (result > 9) {
            z = remarks[type][3];
        } else {
            z = remarks[type][2];
        }
        return z;
    }


    function getSuggest(result) {
        return map[result];
    }

    remark1 = getRemark(a1,1);
    remark2 = getRemark(a2,2);
    remark3 = getRemark(a3,3);
    remark4 = getRemark(a4,4);
    remark5 = getRemark(a5,5);
    remark6 = getRemark(a6,6);
    remark7 = getRemark(a7,7);
    remark8 = getRemark(a8,8);
    remark9 = getRemark(a9,9);

    $('#z1-remark').text(remark1);
    $('#z2-remark').text(remark2);
    $('#z3-remark').text(remark3);
    $('#z4-remark').text(remark4);
    $('#z5-remark').text(remark5);
    $('#z6-remark').text(remark6);
    $('#z7-remark').text(remark7);
    $('#z8-remark').text(remark8);
    $('#z9-remark').text(remark9);

    $('#remark-1').text(remark1);
    $('#remark-2').text(remark2);
    $('#remark-3').text(remark3);
    $('#remark-4').text(remark4);
    $('#remark-5').text(remark5);
    $('#remark-6').text(remark6);
    $('#remark-7').text(remark7);
    $('#remark-8').text(remark8);
    $('#remark-9').text(remark9);


    $('#report-1').text(getSuggest(remark1));
    $('#report-2').text(getSuggest(remark2));
    $('#report-3').text(getSuggest(remark3));
    $('#report-4').text(getSuggest(remark4));
    $('#report-5').text(getSuggest(remark5));
    $('#report-6').text(getSuggest(remark6));
    $('#report-7').text(getSuggest(remark7));
    $('#report-8').text(getSuggest(remark8));
    $('#report-9').text(getSuggest(remark9));
</script>
</body>
</html>