package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.*;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;
import org.springframework.util.CollectionUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class ThirdAccountAction {

    private String tel;
    private String psw;
    private boolean wrongOfTelOrPsw = false;
    private String redirectUrl;


    private List<Baby> babyList;

    public String thirdLanding() {
        return "success";
    }

    public String thirdLogin() {
        User user = AccountManager.login(tel, psw);
        if(user != null) {
            ActionContext.getContext().getSession().put("userid", user.getUserid());
            ActionContext.getContext().getSession().put("username", user.getName());
            ActionContext.getContext().getSession().put("authority", user.getAuthority());
            ActionContext.getContext().getSession().put("hoid", user.getHoid());
            ActionContext.getContext().getSession().put("tel", user.getTel());
            // 获取登陆人的孩子信息
            if(CollectionUtils.isEmpty(babyList)){
                babyList = new ArrayList<Baby>();
            }
            Parent parent = ParentManager.find(user.getTel());
            if(null != parent){
                List<FamilyRelation> relationList = FamilyRelationManager.findByParentId(parent.getParentid());
                if (!CollectionUtils.isEmpty(relationList)) {
                    for (FamilyRelation familyRelation:relationList) {
                        Baby baby = BabyManager.findById(familyRelation.getBabyid());
                        if (baby != null) {
                            babyList.add(baby);
                        }
                    }
                }
            }
            return "success";
        }

        wrongOfTelOrPsw = true;
        return "login";
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public boolean isWrongOfTelOrPsw() {
        return wrongOfTelOrPsw;
    }

    public void setWrongOfTelOrPsw(boolean wrongOfTelOrPsw) {
        this.wrongOfTelOrPsw = wrongOfTelOrPsw;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }

    public List<Baby> getBabyList() {
        return babyList;
    }

    public void setBabyList(List<Baby> babyList) {
        this.babyList = babyList;
    }
}
