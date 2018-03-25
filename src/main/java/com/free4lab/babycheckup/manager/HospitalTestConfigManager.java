package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.HospitalTestConfigDAO;
import com.free4lab.babycheckup.model.HospitalTestConfig;

/**
 * Created by asus on 2018/3/18.
 */
public class HospitalTestConfigManager {

    private static HospitalTestConfigDAO getHospitalTestConfigDAOInstance() {
        return HospitalTestConfigDAO.getInstance();
    }
    public static HospitalTestConfig findConfigByHospitalId(Integer hospitalId){
        return getHospitalTestConfigDAOInstance().findConfigByHospitalId(hospitalId);
    }

}
