package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.model.Account;
import com.free4lab.babycheckup.model.User;
import com.opensymphony.xwork2.ActionContext;

/**
 * Created by Administrator on 2017/7/19.
 */
public class UserAction {
    private int uid;
    private User user;
    private Account account;
    private Boolean is = false;
    private String SUCCESS = "success";
    private String newPSW;
    private String oldPSW;
    private Integer flag = 0;


    public String deleteUser() {
        AccountManager.delete(uid);
        is = true;
        return SUCCESS;
    }
    public String newUser(){
        Boolean findtel = AccountManager.findtel(user.getTel());
        if(findtel){
            flag = 1;
        }else {
            user.setHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
            AccountManager.save(user,newPSW);
            is = true;
        }
        return SUCCESS;
    }
    public String changePSW(){
        uid = (Integer)ActionContext.getContext().getSession().get("userid");
        account = AccountManager.changePsw(uid,newPSW,oldPSW);
        if(account != null){
            is = true;
        }
        return SUCCESS;
    }
    public String resetPSW(){
        account = AccountManager.resetPsw(uid,newPSW);
        if(account != null){
            is = true;
        }
        return SUCCESS;
    }
    public String cancelAdmin(){
        if(uid != 0){
            user = AccountManager.cancelAdmin(uid);
            return SUCCESS;
        }else {
            return null;
        }

    }
    public String setAdmin(){
        if(uid != 0){
            user = AccountManager.setAdmin(uid);
            return SUCCESS;
        }else {
            return null;
        }

    }
    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public Boolean getIs() {
        return is;
    }

    public void setIs(Boolean is) {
        this.is = is;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getNewPSW() {
        return newPSW;
    }

    public void setNewPSW(String newPSW) {
        this.newPSW = newPSW;
    }

    public String getOldPSW() {
        return oldPSW;
    }

    public void setOldPSW(String oldPSW) {
        this.oldPSW = oldPSW;
    }

    public Integer getFlag() {
        return flag;
    }

    public void setFlag(Integer flag) {
        this.flag = flag;
    }
}
