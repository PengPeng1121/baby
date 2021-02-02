<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:if test="babyNumber == 0">
    <div class="front-resource-info clearfix" style="margin-left: 13px;margin-bottom: 13px">
        <div class="pull-left">本院全部病历共0个。</div>
    </div>
</s:if>
<s:else>
    <div class="front-resource-info clearfix" style="margin-left: 13px;margin-bottom: 13px">
        <div class="pull-left">本院全部病历共<s:property value="babyNumber"/>个</div>
    </div>
    <div class="panel panel-default front-panel">
        <div class="panel-body" style="padding: 0;">
            <table class="table table-striped front-table" style="margin-bottom: 0px">
                <tbody>
                <s:iterator value="babyList" var="baby">
                    <tr>
                        <td>
                            <div class="media front-overflow-visible">
                                <div class="media-body front-overflow-visible" style="padding: 7px;">
                                    <h4 class="media-heading front-text-break">
                                <span class="media-heading front-text-break" >
                                    <s:property value="#baby.name"/>
                                </span>
                                    </h4>
                                    <div class="front-text-break">
                                        <div class="col-md-12" style="padding-left:0px;">
                                            <label class="col-md-1 control-label front-label" style="padding-left:0px;">性别</label>
                                            <span class="col-md-2 control-label front-label"><s:if test="#baby.gender == 0">女</s:if><s:else>男</s:else></span>
                                            <label class="col-md-1 control-label front-label" style="padding-left:0px;">出生日期</label>
                                            <span class="col-md-2 control-label front-label"><s:date name="#baby.birthday" format="yyyy-MM-dd"/></span>
                                            <label class="col-md-1 control-label front-label" style="padding-left:0px;">父亲</label>
                                            <span class="col-md-2 control-label front-label"><s:property value="#baby.father.name"/></span>
                                            <label class="col-md-1 control-label front-label" style="padding-left:0px;">母亲</label>
                                            <span class="col-md-2 control-label front-label"><s:property value="#baby.mother.name"/></span>
                                        </div>
                                    </div>
                                        <%--<div class="front-checkboxes front-checkboxes-bottom pull-right" style="margin-bottom:0px;">
                                            <a type="button" class="btn btn-sm btn-default" href="record/moreinfo?babyid=<s:property value="#baby.babyid" />"><span class="glyphicon glyphicon-search"></span> 详情</a>
                                            <a type="button" class="btn btn-sm btn-default "  style="margin-right: 10px;" onclick="selecttest(<s:property value="#baby.babyid" />,<s:property value="#baby.birth" />)" ><span class="glyphicon glyphicon-book"></span> 新建测评</a>
                                        </div>--%>
                                    <div class="front-toolbar other pull-right" style="padding-bottom: 0px;">
                                        <div class="front-toolbar-header clearfix">
                                            <button type="button" class="front-toolbar-toggle navbar-toggle" data-toggle="collapse" data-target="#freeshare">
                                                <span class="icon-bar"></span>
                                            </button>
                                        </div>
                                        <div id="freeshare" class="front-btn-group collapse">
                                            <a class="btn btn-default front-no-box-shadow" href="record/moreinfo?babyid=<s:property value="#baby.babyid" />"><span class="glyphicon glyphicon-search"></span> 详情</a>
                                            <a class="btn btn-default front-no-box-shadow" style="" onclick="selecttest(<s:property value="#baby.babyid" />,<s:property value="#baby.birth" />)"><span class="glyphicon glyphicon-book"></span> 新建测评</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </s:iterator>
                </tbody>
            </table>
            <div id="list-page" class="lineheight"></div>
        </div>
    </div>
</s:else>

<script type="text/javascript">
    var divHtml = $.getDivPageHtml(<s:property value="page"/>,<s:property value="pageNum"/>,"AllBabyDivPage");
    $("#list-page").html(divHtml);
    function selecttest(bid,birth){
//        if(birth >= 84){
//            $.tipModal('alert', 'info', '该儿童超出本系统测查年龄！');
//        }else {
//            window.location = "newtest?testid=1&babyid="+bid;
//        }

        $.frontModal({size: 'modal-md', href: 'modals/modal_select_test.jsp'}).on('shown.bs.modal', function () {
            $("#babyid").val(bid);
        }).on('hide.bs.modal', function (){
            // window.location.href = 'home';
        });
    }
</script>

