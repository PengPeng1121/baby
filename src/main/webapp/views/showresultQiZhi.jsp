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
        .column {
            width: 10%; 
            display: inline-block;
        }
        #column1 {
            width: 13%;
        }
        #column8 {
            width: 11%;
        }
        .title{
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
        <!-- <img class="pull-right" style="height: 100px;width: 100px;" src="statics/img/QRcode.jpg" alt="Logo"> -->
        <h2 style="padding-left:0px;text-align: center;margin: 0px;"><s:property value="hospital.name"/> </h2>
        <h1 style="padding-left:0px;margin-top: 20px;margin-bottom: 20px;text-align: center;">儿童气质评估报告单</h1>

        <div class="panel panel-default front-panel" id="info">
            <div class="panel-heading" style="text-align: center;">小儿基本资料</div>
            <div class="panel-body front-no-padding" style="padding: 15px;">
                <table>
                    <tbody>
                    <tr>
                        <td class="col-md-2">姓名:&nbsp;<s:property value="baby.name"/></td>
                        <td class="col-md-2">性别:&nbsp;<s:if test="baby.gender == 1">男</s:if><s:else>女</s:else></td>
                        <td class="col-md-3">年龄:&nbsp;<s:property value="exactAge"/></td>
                        <td class="col-md-2">出生日期:&nbsp;<s:date name="baby.birthday" format="yyyy-MM-dd"/></td>
                        
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="resultID" value="<s:property value="resultQiZhi.id"/>">
        <div class="panel panel-default front-panel" id="allbaby">
            <div class="panel-heading" style="text-align: center;">评定结果</div>
            <div class="panel-body front-no-padding">
                <table class="table table-striped front-table" id="remarkTable">
                    <thead>
                    <tr>
                        <th class="title" width="12%">维度</th>
                        <th class="title" width="12%">活动水平</th>
                        <th class="title" width="10%">节律性*</th>
                        <th class="title" width="10%">趋避性*</th>
                        <th class="title" width="10%">适应性*</th>
                        <th class="title" width="12%">反应强度*</th>
                        <th class="title" width="12%">情绪本质*</th>
                        <th class="title" width="10%">坚持度</th>
                        <th class="title" width="12%">注意分散度</th>
                        <th class="title" width="11%">反应阈</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>得分</td>
                        <td id="a1"><s:property value="resultQiZhi.a1"/></td>
                        <td id="a2"><s:property value="resultQiZhi.a2"/></td>
                        <td id="a3"><s:property value="resultQiZhi.a3"/></td>
                        <td id="a4"><s:property value="resultQiZhi.a4"/></td>
                        <td id="a5"><s:property value="resultQiZhi.a5"/></td>
                        <td id="a6"><s:property value="resultQiZhi.a6"/></td>
                        <td id="a7"><s:property value="resultQiZhi.a7"/></td>
                        <td id="a8"><s:property value="resultQiZhi.a8"/></td>
                        <td id="a9"><s:property value="resultQiZhi.a9"/></td>
                    </tr>
                    <tr>
                        <td>状态</td>
                        <td id="z1"><s:property value="resultQiZhi.z1"/></td>
                        <td id="z2"><s:property value="resultQiZhi.z2"/></td>
                        <td id="z3"><s:property value="resultQiZhi.z3"/></td>
                        <td id="z4"><s:property value="resultQiZhi.z4"/></td>
                        <td id="z5"><s:property value="resultQiZhi.z5"/></td>
                        <td id="z6"><s:property value="resultQiZhi.z6"/></td>
                        <td id="z7"><s:property value="resultQiZhi.z7"/></td>
                        <td id="z8"><s:property value="resultQiZhi.z8"/></td>
                        <td id="z9"><s:property value="resultQiZhi.z9"/></td>
                    </tr>
                    <tr>
                        <td>标准分</td>
                        <td id="p1"><s:property value="qiZhiVO.p1"/></td>
                        <td id="p2"><s:property value="qiZhiVO.p2"/></td>
                        <td id="p3"><s:property value="qiZhiVO.p3"/></td>
                        <td id="p4"><s:property value="qiZhiVO.p4"/></td>
                        <td id="p5"><s:property value="qiZhiVO.p5"/></td>
                        <td id="p6"><s:property value="qiZhiVO.p6"/></td>
                        <td id="p7"><s:property value="qiZhiVO.p7"/></td>
                        <td id="p8"><s:property value="qiZhiVO.p8"/></td>
                        <td id="p9"><s:property value="qiZhiVO.p9"/></td>
                    </tr>
                    <tr>
                        <td>范围</td>
                        <td id="r1"><s:property value="qiZhiVO.r1"/></td>
                        <td id="r2"><s:property value="qiZhiVO.r2"/></td>
                        <td id="r3"><s:property value="qiZhiVO.r3"/></td>
                        <td id="r4"><s:property value="qiZhiVO.r4"/></td>
                        <td id="r5"><s:property value="qiZhiVO.r5"/></td>
                        <td id="r6"><s:property value="qiZhiVO.r6"/></td>
                        <td id="r7"><s:property value="qiZhiVO.r7"/></td>
                        <td id="r8"><s:property value="qiZhiVO.r8"/></td>
                        <td id="r9"><s:property value="qiZhiVO.r9"/></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <table class="table table-striped  table-bordered front-table" style="margin-bottom: 20px">
            <tbody>
            <tr>
                <td style="text-align:center;">评定结果柱状图</td>
                <td style="text-align:center;">评定结果雷达图</td>
            </tr>
            <tr>
                <td style="padding: 0px;width: 50%;">
                    <div style="border: 1px dashed #ddd">
                        <div id="column1" class="column"></div>
                        <div id="column2" class="column"></div>
                        <div id="column3" class="column"></div>
                        <div id="column4" class="column"></div>
                        <div id="column5" class="column"></div>
                        <div id="column6" class="column"></div>
                        <div id="column7" class="column"></div>
                        <div id="column8" class="column"></div>
                        <div id="column9" class="column"></div>
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
                <textarea rows="5" style="resize:none;border: 0;width: 100%;height: 100%"></textarea>
            </div>
        </div>


        <div style="width:270px;float: right">
            <div ><p style="margin-top: 50px;font-size: 16px;">测评者： _______________</p></div>
            <div ><a type="button" class="btn btn-primary noprint pull-right print" style="margin:50px 10px 20px 0px;">打印结果</a></div>
        </div>

        　


        <div class="panel panel-default front-panel col-md-12" id="adviceText" style="padding: 0px;">
             <div class="panel-heading" style="text-align: center; position: absolute;">姓名:<s:property value="baby.name"/></div>
            <div class="panel-heading" style="text-align: center;">儿童气质个体解释报告</div>
            <div class="panel-body front-no-padding">
                <p style="text-indent: 28px; margin: 5px 10px">
                    气质是个性心理特点之一，它从孩子出生那一刻起，就给孩子刻上了独特的烙印。它是与生俱来的对外界刺激的反应方式，每个儿童都有与众不同的气质，与行为发展、生活和学习方式、个性形成密切相关。气质特点表现在生活水平、节律性、趋避性、适应性、反应强度、情绪本质、坚持度、注意分散度、反应阈九个方面。这些特点的强弱、高低都有长处和短处，在教育中应一分为二，取长补短。当对孩子的要求与气质特点相协调时，孩子就会获得最好的发展。否则，易与孩子发生冲突，造成心理和行为的问题。
                </p>

                <table class="table-striped  table-bordered front-table" style="font-size: 12px;">
                    <tbody>
                        <tr>
                            <td class="col-md-2" rowspan="2">活动水平</td>
                            <td class="col-md-10" colspan="2">孩子在吃、玩、睡或在日常生活中的运动量。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z1"/></td>
                            <td class="col-md-8 z1-remark"></td>
                        </tr>
                        <tr>
                            <td class="col-md-2" rowspan="2">节律性</td>
                            <td class="col-md-10" colspan="2">学龄前主要指饮食、大便、睡眠、运动等规律性。学龄后主要关于日常活动和学习的规律和计划性。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z2"/></td>
                            <td class="col-md-8 z2-remark"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2" rowspan="2">趋避性</td>
                            <td class="col-md-10" colspan="2">指孩子面对新事物或陌生人，其最初的反应是接近还是退缩。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z3"/></td>
                            <td class="col-md-8 z3-remark"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2" rowspan="2">适应性</td>
                            <td class="col-md-10" colspan="2">接受新环境、新事物或人的过程是容易还是困难。如刚上幼儿园或学校能否很快适应，换个环境或学习方法能否很快习惯。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z4"/></td>
                            <td class="col-md-8 z4-remark"></td>
                        </tr>


                        <tr>
                            <td class="col-md-2" rowspan="2">反应强度</td>
                            <td class="col-md-10" colspan="2">情绪反应的激烈程度，指高兴和不高兴的反应是强烈还是微弱。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z5"/></td>
                            <td class="col-md-8 z5-remark"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2" rowspan="2">情绪本质</td>
                            <td class="col-md-10" colspan="2">指孩子平日主要的情绪表现，是积极（愉快友好）还是消极（不愉快不友好）。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z6"/></td>
                            <td class="col-md-8 z6-remark"></td>
                        </tr>


                        <tr>
                            <td class="col-md-2" rowspan="2">坚持度</td>
                            <td class="col-md-10" colspan="2">持续或克服困难阻碍做事情的坚持程度。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z7"/></td>
                            <td class="col-md-8 z7-remark"></td>
                        </tr>

                        <tr>
                            <td class="col-md-2" rowspan="2">注意分散度</td>
                            <td class="col-md-10" colspan="2">注意力生后就存在，但在开始学习后注意力问题才特别引人重视。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z8"/></td>
                            <td class="col-md-8 z8-remark"></td>
                        </tr>


                        <tr>
                            <td class="col-md-2" rowspan="2">反应阈</td>
                            <td class="col-md-10" colspan="2">表现为对声、光、温度、气味等生理感知的敏感性，也表现在对他人态度变化等心理感知的敏感性。</td>
                        </tr>
                        <tr>
                            <td class="col-md-2"><s:property value="resultQiZhi.z9"/></td>
                            <td class="col-md-8 z9-remark"></td>
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



    var z1 = $('#z1').text()
    var z2 = $('#z2').text()
    var z3 = $('#z3').text()
    var z4 = $('#z4').text()
    var z5 = $('#z5').text()
    var z6 = $('#z6').text()
    var z7 = $('#z7').text()
    var z8 = $('#z8').text()
    var z9 = $('#z9').text()



    var z1map = {
        '适中':'该儿童的活动水平适中。',
        '较低':'该儿童的活动水平低：活动量少的孩子安静，做事较仔细，但往往显得做事较慢。对活动量少的儿童应加强适量的户外活动，应给充分的时间让他们完成作业或做事情，不要因为他们行动慢而加以指责，也不要代替他们做应该做的事。如果孩子的确付出了努力就要予以鼓励，事情完成的好要及时表扬。',
        '较高':'该儿童的活动水平高：活动量大的孩子显得有朝气，有探索性，接受外界的信息量较多，但有时会影响一些事情的完成或妨碍他人。对于活动量多的儿童可经常适当安排大活动量、接触外界的活动，但也应要求他们在需要安静时保持一定时间的安静，但时间不宜过长，以同龄儿童一般标准为限。'
    }
    var z2map = {
        '适中':'该儿童的节律性适中。',
        '较弱':'该儿童的节律性较弱：不易被大人掌握，对日常抚养带来一些麻烦，长大后显得缺乏计划性，但不易产生适应困难。从幼儿期起要开始培养生活规律，一般吃饭、睡觉的时间前后相差半小时是正常的。入学后要学会制订作息和活动计划。',
        '较高':'该儿童的节律性较强：小时候显得容易抚养，长大时的日常活动和学习比较有条理、有计划。但规律过强则显得刻板，环境有变化时易出现适应困难。对于规律性很强的孩子，不必刻板地按他们的规律做，可偶尔打破规律，在不规律的环境中按实际情况安排活动，逐步训练适应生活的变化。'
    }


    var z3map = {
        '适中':'该儿童的趋避性适中。',
        '易接近':'该儿童的趋避性易接近:这样的孩子愿意接受新的东西、见人“自来熟”，但太容易接近也会因接近不良事物或人而易受到不良影响。对待太容易接近的儿童从幼儿期起就应注意教导他们明辨是非，避免接近不良事物。',
        '易退缩':'该儿童的趋避性易退缩:这样的孩子对新事物易回避，“怕生”，但也可使孩子少受不良的影响。对待较退缩的孩子，不要强迫或指责，要耐心引导孩子的兴趣，如提前告诉孩子将见到的人或面临的事情，这些事情会带来什么好处，多为孩子创造接触新事物的人和计划，鼓励孩子去接近，如添加新食物时鼓励先品尝后少量地吃。'


    }



    var z4map = {
        '适中':'该儿童的适应性适中。',
        '较弱':'该儿童的适应性较弱：在适应新环境的过程中易出现问题，如换个地方不能入睡、不适应新老师的教学方法等。不过，一旦度过了适应期也能做得很好。多创造接触外界的机会，重视提前做好准备，循序渐进地达到目的，例如刚上幼儿园或学校时，需逐步适应。不要强迫孩子没有准备地适应新环境，避免到变换不定的环境中。',
        '较强':'该儿童的适应性较强：多表现为长处，在多数情况下是个宝贵的特点，值得鼓励。但在不良环境中也有易接受不良影响的危险，要注意适应对象的选择，所接触的内容或人是否有不良或危险的倾向。让孩子多接触有意义的事情，避免与社会上不好的事情有染、接受不良习惯和观念。'
    }

    var z5map = {
        '适中':'该儿童的反应强度适中。',
        '较弱':'该儿童的反应强度较弱：反应偏弱的孩子比较容易照养，易相处，但由于他们不能充分表达自己的需要和感受，而易被忽视，得不到应有的关注。对于反应弱的孩子，要注意孩子强烈的渴望和兴趣可能表现出来的却是微弱的，如孩子说什么地方痛就要认真对待，要鼓励孩子以恰当的方式表达自己的感受，少用否定的语言拒绝孩子。',
        '较强':'该儿童的反应强度较强：容易吸引别人的注意，得到更多的关注，但也会因易大声哭闹而令人烦恼，并可能夸大事实，也许只是一件小事情或无理取闹。在孩子哭闹时不要急于表态，采用分散注意和“冷”处理的方法，查清原因，耐心等到孩子的情绪爆发过去，以平静的语气对孩子表明态度、讲道理。同时暗中留意以免发生意外。'

    }


    var z6map = {
        '适中':'该儿童的情绪本质适中。',
        '较消极':'该儿童的情绪本质较消极:表面情绪消极的孩子会让别人感到不快，令大人们担忧，但实际上他们内心同样渴望快乐、与人友好。对这种孩子，避免指责，要了解他们表达态度的方式，如以什么方式表达同意或真正的不高兴，鼓励孩子的积极情绪，如孩子高兴的时候要尽可能延长这种状态，大人们在孩子面前要多表现出积极的情绪。',
        '较积极':'该儿童的情绪本质较积极：情绪积极的孩子总是受人喜欢的，对人、对事的态度都比较积极看好，不容易消沉。但有时也会因过于乐观、评价过高而出现麻烦，需要教给孩子与年龄水平相适应的社会道德、安全规范以及保护措施，指导他们做出恰当的评价，以免对危险或不良事物也做出过高的“积极”判断。'

    }



    var z7map = {
        '适中':'该儿童的坚持度适中。',
        '较低':'该儿童的坚持度较低：遇到挫折容易放弃，但容易听从大人的劝告，放弃不应做的事情，易于抚养教育。对待这种特点，应要求他们做事的质量和能否完成，而不是做事的方式。坚持让孩子完成应该完成的事情，并达到一定的要求，在完成过程中可以暂停休息，但要能继续进行直至完成，逐渐提高要求。制定完成认为的短期计划，培养孩子能与年龄相称地坚持做事，而不轻易放弃。',
        '较高':'该儿童的坚持度较高：显得固执、任性，但遇到困难不容易放弃。有契而不舍的精神，能较好地完成任务并取得好的成绩。但坚持性过高时，如果所坚持的事情是不合理的，也一定要坚持说服他们放弃。当孩子正做的事情一定要被打断时，需要经常提醒，所以要培养孩子自己估计完成事情的时间，对不同的事情合理安排时间。'

    }



    var z8map = {
        '适中':'该儿童的注意分散度适中。',
        '不易分散':'该儿童的注意分散度不易分散:注意集中的孩子在幼儿时显得难哄，长大后显得做事效率高，学习成绩较好，但若过于专注一件事也会忽视周围的事情，甚至是重要情况。如果孩子在做一件事情时忽视了其它事情，应多提醒他们。',
        '易分散':'该儿童的注意分散度易分散：容易分心的孩子在婴幼儿期显得容易抚慰，但开始学习后则会影响学习成绩，这种孩子的长处是能较快注意到周围的事情，获得较多的信息。应在上学前逐步培养注意力，进行适当的注意训练，应结合孩子的兴趣。'
    }



    var z9map = {
        '适中':'该儿童的反应阈适中。',
        '较低':'该儿童的反应阈较低：较敏感。敏感的孩子善于察觉细微的变化、察言观色，但太敏感则可能出现一些问题，如睡眠障碍，胆小；对于反应阈低的孩子，避免突然的兴奋刺激或强刺激（如大声、强光等）。家长不要太主观，应以孩子的感受为准，逐渐训练孩子对感觉的耐受性，鼓励积极的方面，如富有同情心、音乐感强。',
        '较高':'该儿童的反应阈较高：较不敏感。有不怕痛、不在乎大声、胆大等长处，但也可能忽略很多变化或遗漏一些有用的信息，如危险信号，不善于判断别人的表情或态度。对于反应阈高的孩子，要及时弥补遗漏之处，加强安全和社会规范教育，如过马路时要注意交通安全、不要在安静场合大声喧哗等，学习识别他人的表情、态度。'
    }





    var r1 = $('#r1').text();
    var r2 = $('#r2').text();
    var r3 = $('#r3').text();
    var r4 = $('#r4').text();
    var r5 = $('#r5').text();
    var r6 = $('#r6').text();
    var r7 = $('#r7').text();
    var r8 = $('#r8').text();
    var r9 = $('#r9').text();
    
    var end = 6;
    r1_1 = parseFloat(r1.split('~')[0]);
    r1_2 = parseFloat(r1.split('~')[1]);
    r1_middle = parseFloat((r1_2 - r1_1).toFixed(2));
    r1_end = parseFloat((end - r1_2).toFixed(2));

    r2_1 = parseFloat(r2.split('~')[0]);
    r2_2 = parseFloat(r2.split('~')[1]);
    r2_middle = parseFloat((r2_2 - r2_1).toFixed(2));
    r2_end = parseFloat((end - r2_2).toFixed(2));


    r3_1 = parseFloat(r3.split('~')[0]);
    r3_2 = parseFloat(r3.split('~')[1]);
    r3_middle = parseFloat((r3_2 - r3_1).toFixed(2));
    r3_end = parseFloat((end - r3_2).toFixed(2));

    r4_1 = parseFloat(r4.split('~')[0]);
    r4_2 = parseFloat(r4.split('~')[1]);
    r4_middle = parseFloat((r4_2 - r4_1).toFixed(2));
    r4_end = parseFloat((end - r4_2).toFixed(2));

    r5_1 = parseFloat(r5.split('~')[0]);
    r5_2 = parseFloat(r5.split('~')[1]);
    r5_middle = parseFloat((r5_2 - r5_1).toFixed(2));
    r5_end = parseFloat((end - r5_2).toFixed(2));


    r6_1 = parseFloat(r6.split('~')[0]);
    r6_2 = parseFloat(r6.split('~')[1]);
    r6_middle = parseFloat((r6_2 - r6_1).toFixed(2));
    r6_end = parseFloat((end - r6_2).toFixed(2));


    r7_1 = parseFloat(r7.split('~')[0]);
    r7_2 = parseFloat(r7.split('~')[1]);
    r7_middle = parseFloat((r7_2 - r7_1).toFixed(2));
    r7_end = parseFloat((end - r7_2).toFixed(2));

    r8_1 = parseFloat(r8.split('~')[0]);
    r8_2 = parseFloat(r8.split('~')[1]);
    r8_middle = parseFloat((r8_2 - r8_1).toFixed(2));
    r8_end = parseFloat((end - r8_2).toFixed(2));


    r9_1 = parseFloat(r9.split('~')[0]);
    r9_2 = parseFloat(r9.split('~')[1]);
    r9_middle = parseFloat((r9_2 - r9_1).toFixed(2));
    r9_end = parseFloat((end - r9_2).toFixed(2));



    $(function () {
        var chart1,
            chart2,
            chart3,
            chart4,
            chart5,
            chart6,
            chart7,
            chart8,
            chart9,
            chart10;
        $('.print').click(function(){
            $('.title').css({
                fontSize: '8px',
                fontWeight: 'normal'
            });
            $("#remarkTable").css({
                fontSize: '8px'
            });
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
            $('.column').css({
                width: '34px',
                height: '300px'
            });
            $('#column1').css({
                width: '55px',
                height: '300px'
            });
            $('#spider').css({
                width: '300px',
                height: '300px',
                marginLeft: '40px'
            });
            $('#adviceText').css({
                marginTop: '150px'
                
            });
            chart1.reflow();
            chart2.reflow();
            chart3.reflow();
            chart4.reflow();
            chart5.reflow();
            chart6.reflow();
            chart7.reflow();
            chart8.reflow();
            chart9.reflow();
            chart10.reflow();
            window.print();
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
                categories: ['活动<br/>水平'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'red',
                    value: a1,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r1_end]
            }, {
                name: '',
                color:'#ffc107',
                borderWidth: 1,
                borderColor: 'black',
                data: [r1_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r1_1]
            }],
            legend: {
                enabled:false
            }
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
                categories: ['节律<br/>性'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                labels: {
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'red',
                    value: a2,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r2_end]
            }, {
                name: '',
                color:'#3f51b5',
                borderWidth: 1,
                borderColor: 'black',
                data: [r2_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r2_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart2 = c;
        });


        $('#column3').highcharts({
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
                categories: ['趋避<br/>性'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                labels: {
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'red',
                    value: a3,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r3_end]
            }, {
                name: '',
                color:'#3f51b5',
                borderWidth: 1,
                borderColor: 'black',
                data: [r3_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r3_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart3 = c;
        });


        $('#column4').highcharts({
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
                categories: ['适应<br/>性'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                labels: {
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'red',
                    value: a4,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r4_end]
            }, {
                name: '',
                color:'#3f51b5',
                borderWidth: 1,
                borderColor: 'black',
                data: [r4_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r4_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart4 = c;
        });

        $('#column5').highcharts({
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
                categories: ['反应<br/>强度'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                labels: {
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'red',
                    value: a5,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r5_end]
            }, {
                name: '',
                color:'#3f51b5',
                borderWidth: 1,
                borderColor: 'black',
                data: [r5_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r5_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart5 = c;
        });


        $('#column6').highcharts({
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
                categories: ['情绪<br/>本质'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                labels: {
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                plotLines: [{
                    color: 'red',
                    value: a6,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r6_end]
            }, {
                name: '',
                color:'#3f51b5',
                borderWidth: 1,
                borderColor: 'black',
                data: [r6_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r6_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart6 = c;
        });



        $('#column7').highcharts({
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
                categories: [ '坚持<br/>度'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'red',
                    value: a7,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r7_end]
            }, {
                name: '',
                color:'#ffc107',
                borderWidth: 1,
                borderColor: 'black',
                data: [r7_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r7_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart7 = c;
        });

        $('#column8').highcharts({
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
                categories: ['注意<br/>分散度'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'red',
                    value: a8,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r8_end]
            }, {
                name: '',
                color:'#ffc107',
                borderWidth: 1,
                borderColor: 'black',
                data: [r8_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r8_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart8 = c;
        });


        $('#column9').highcharts({
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
                categories: ['反应<br/>阈'],
                labels: {
                    style:{"textOverflow": 'none',"fontSize": "8px"},
                }
            },
            yAxis: {
                min: 0,
                max: 6,
                title: {
                    text: '分数',
                    enabled: false
                },
                stackLabels: {  // 堆叠数据标签
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: (Highcharts.theme && Highcharts.theme.textColor) || 'gray'
                    }
                },
                labels: {
                    enabled: false
                },
                plotLines: [{
                    color: 'red',
                    value: a9,
                    width: 2
                }]
            },
            tooltip: {
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
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r9_end]
            }, {
                name: '',
                color:'#ffc107',
                borderWidth: 1,
                borderColor: 'black',
                data: [r9_middle]
            }, {
                name: '',
                color:'white',
                borderWidth: 1,
                borderColor: 'black',
                data: [r9_1]
            }],
            legend: {
                enabled:false
            }
        }, function(c){
            chart9 = c;
        });





        var p1 = parseFloat($('#p1').text());
        var p2 = parseFloat($('#p2').text());
        var p3 = parseFloat($('#p3').text());
        var p4 = parseFloat($('#p4').text());
        var p5 = parseFloat($('#p5').text());
        var p6 = parseFloat($('#p6').text());
        var p7 = parseFloat($('#p7').text());
        var p8 = parseFloat($('#p8').text());
        var p9 = parseFloat($('#p9').text());

        var pmax = Math.max.apply(null, [p1,p2,p3,p4,p5,p6,p7,p8,p9])

        var b1 = parseFloat((a1 * pmax / p1).toFixed(2));
        var b2 = parseFloat((a2 * pmax / p2).toFixed(2));
        var b3 = parseFloat((a3 * pmax / p3).toFixed(2));
        var b4 = parseFloat((a4 * pmax / p4).toFixed(2));
        var b5 = parseFloat((a5 * pmax / p5).toFixed(2));
        var b6 = parseFloat((a6 * pmax / p6).toFixed(2));
        var b7 = parseFloat((a7 * pmax / p7).toFixed(2));
        var b8 = parseFloat((a8 * pmax / p8).toFixed(2));
        var b9 = parseFloat((a9 * pmax / p9).toFixed(2));


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
                categories: ['活动水平', '节律性', '趋避性', '适应性', '反应强度', '情绪本质', '坚持度','注意分散度', '反应阈'],
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
                    value: pmax,
                    width: 2
                }]
            },
            tooltip: {
                shared: true
            },
            series: [{
                name: '得分',
                data: [b1, b2, b3, b4, b5, b6, b7, b8, b9],
                pointPlacement: 'on'
            }]
        }, function(c){
            chart10= c;
        });
    });


    $('.z1-remark').text(z1map[z1]);
    $('.z2-remark').text(z2map[z2]);
    $('.z3-remark').text(z3map[z3]);
    $('.z4-remark').text(z4map[z4]);
    $('.z5-remark').text(z5map[z5]);
    $('.z6-remark').text(z6map[z6]);
    $('.z7-remark').text(z7map[z7]);
    $('.z8-remark').text(z8map[z8]);
    $('.z9-remark').text(z9map[z9]);




</script>
</body>
</html>

