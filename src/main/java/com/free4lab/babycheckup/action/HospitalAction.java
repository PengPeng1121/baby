package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.model.Hospital;
import com.opensymphony.xwork2.ActionContext;

/**
 * Created by Administrator on 2017/8/1.
 */
public class HospitalAction {
    private String SUCCESS = "success";
    private Hospital hospital;
    private String name;
    private boolean flag = false;

    public String findHospital(){
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        name = hospital.getName();
        return SUCCESS;
    }

    public String updateHospital(){
        Hospital hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        hospital.setName(this.getName());
        HospitalManager.update(hospital);
        flag = true ;
        return SUCCESS;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }
}
