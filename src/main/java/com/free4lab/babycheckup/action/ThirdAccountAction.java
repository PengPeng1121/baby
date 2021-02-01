package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.User;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

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

            babyList = new ArrayList<Baby>();
            Baby baby = new Baby();
            baby.setBabyid(2686);
            baby.setName("测试女");
            babyList.add(baby);
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
