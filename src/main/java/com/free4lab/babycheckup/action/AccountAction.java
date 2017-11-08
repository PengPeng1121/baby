package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.User;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

public class AccountAction {

    private int id;
    private Hospital hospital;
    private String tel;
    private String psw;
    private boolean wrongOfTelOrPsw = false;
    private String redirectUrl;
    private String name;

    private HttpServletRequest req;

    public String landing() {
        req = ServletActionContext.getRequest();
        String honame = req.getParameter("honame");
        if(id != 0 ){
            hospital = HospitalManager.findByHoid(id);
            putHospital(hospital);
        }else if(honame != null && !honame.equals("")){
            hospital = HospitalManager.findHospitalByIdString(honame);
            putHospital(hospital);
        }else {
            hospital = new Hospital();
            hospital.setLogoLanding("logo.png");
            hospital.setBannerLanding("banner.png");
            name = "儿童发育评测平台";
        }
        return "success";
    }

    public String login() {
        if(ActionContext.getContext().getSession().get("hoid") == null) {
            hospital = new Hospital();
            hospital.setLogoLanding("CIPlogo.png");
            hospital.setBannerLanding("banner.png");
            name = "儿童发育评测平台";
        } else {
            hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
            if (hospital.getLogoLanding() == null || hospital.getLogoLanding().equals("")) {
                hospital.setLogoLanding("logo.png");
            }
            if (hospital.getBannerLanding() == null || hospital.getBannerLanding().equals("")) {
                hospital.setBannerLanding("banner.png");
            }
            name = hospital.getName();
        }
        User user = AccountManager.login(tel, psw);
        if(user != null) {
            ActionContext.getContext().getSession().put("userid", user.getUserid());
            ActionContext.getContext().getSession().put("username", user.getName());
            ActionContext.getContext().getSession().put("authority", user.getAuthority());
            ActionContext.getContext().getSession().put("hoid", user.getHoid());
            hospital = HospitalManager.findByHoid(user.getHoid());
            if(hospital.getLogo() == null || hospital.getLogo().equals("")) {
                ActionContext.getContext().getSession().put("logo", "logo.png");
            } else {
                ActionContext.getContext().getSession().put("logo", hospital.getLogo());
            }
            redirectUrl = "/home";
            return "success";
        }
        wrongOfTelOrPsw = true;
        return "login";
    }

    public String logout() {
        redirectUrl = "/account/landing?id=" + ActionContext.getContext().getSession().get("hoid");
        ActionContext.getContext().getSession().remove("userid");
        ActionContext.getContext().getSession().remove("username");
        ActionContext.getContext().getSession().remove("authority");
        ActionContext.getContext().getSession().remove("hoid");
        ActionContext.getContext().getSession().remove("logo");
        return "success";
    }

    public void putHospital(Hospital h){
        if(h != null){
            ActionContext.getContext().getSession().put("hoid", h.getHoid());
            if ( h.getLogoLanding() == null || h.getLogoLanding().equals("") ) {
                h.setLogoLanding("logo.png");
            }
            if (h.getBannerLanding() == null || h.getBannerLanding().equals("")) {
                h.setBannerLanding("banner.png");
            }
            name = h.getName();
        }else {
            h = new Hospital();
            h.setLogoLanding("logo.png");
            h.setBannerLanding("banner.png");
            name = "儿童发育评测平台";
        }
    }

    public HttpServletRequest getReq() {
        return req;
    }

    public void setReq(HttpServletRequest req) {
        this.req = req;
    }

    public Hospital getHospital() {
        return hospital;
    }
    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
