package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.HospitalTestTimesDAO;
import com.free4lab.babycheckup.model.HospitalTestTimes;

import java.util.List;

/**
 * Created by asus on 2018/3/18.
 */
public class HospitalTestTimesManager {

    private static HospitalTestTimesDAO getHospitalTestTimesDAOInstance() {
        return HospitalTestTimesDAO.getInstance();
    }

    public static HospitalTestTimes findTimesByHospitalId(Integer hospitalId){
        return getHospitalTestTimesDAOInstance().findTimesByHospitalId(hospitalId);
    }

    public static List<HospitalTestTimes> findTimesListByHospitalId(Integer hospitalId){
        return getHospitalTestTimesDAOInstance().findTimesListByHospitalId(hospitalId);
    }

    public static HospitalTestTimes findTimes(Integer hospitalId,Integer testId){
        return getHospitalTestTimesDAOInstance().findTimes(hospitalId, testId);
    }

    public static Boolean haveTimesByHospitalId(Integer hospitalId){
        return getHospitalTestTimesDAOInstance().haveTimesByHospitalId(hospitalId);
    }

    public static Boolean haveTimes(Integer hospitalId,Integer testId){
        return getHospitalTestTimesDAOInstance().haveTimes(hospitalId, testId);
    }

    public static HospitalTestTimes subTimesByHospitalId(HospitalTestTimes hospitalTestTimes){
        return getHospitalTestTimesDAOInstance().subTimesByHospitalId(hospitalTestTimes);
    }

    public static HospitalTestTimes subTimes(HospitalTestTimes hospitalTestTimes){
        return getHospitalTestTimesDAOInstance().subTimes(hospitalTestTimes);
    }
}


