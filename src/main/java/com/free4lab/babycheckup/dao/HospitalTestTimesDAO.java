package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.HospitalTestTimes;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2018/3/18.
 */
public class HospitalTestTimesDAO extends AbstractDAO<HospitalTestTimes> {
    private static class BabySchemaDAOSingletonHolder {
        static HospitalTestTimesDAO instance = new HospitalTestTimesDAO();
    }

    public static HospitalTestTimesDAO getInstance() {
        return HospitalTestTimesDAO.BabySchemaDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return HospitalTestTimes.class;
    }

    private static final String PU_NAME = "BabyCheckup_PU";

    @Override
    public String getPUName() {
        return PU_NAME;
    }

    @Override
    public IEntityManagerHelper getEntityManagerHelper() {
        return new NoCacheEntityManagerHelper();
    }


    public HospitalTestTimes findTimesByHospitalId(Integer hospitalId){
        List<HospitalTestTimes> list = findByProperty("hospitalId",hospitalId);
        if(list.size() == 1){
            HospitalTestTimes times = list.get(0);
            return times;
        }else {
            return null;
        }
    }

    public HospitalTestTimes findTimes(Integer hospitalId,Integer testId){
        List<HospitalTestTimes> list = findByProperty2("hospitalId",hospitalId,"testId",testId);
        if(list.size() == 1){
            HospitalTestTimes times = list.get(0);
            return times;
        }else {
            return null;
        }
    }

    public Boolean haveTimesByHospitalId(Integer hospitalId){
        List<HospitalTestTimes> list = findByProperty("hospitalId",hospitalId);
        if(list.size() == 1){
            HospitalTestTimes times = list.get(0);
            if(times.getLeftTimes()>0){
                return true;
            }
            return false;
        }else {
            return false;
        }
    }

    public Boolean haveTimes(Integer hospitalId,Integer testId){
        List<HospitalTestTimes> list = findByProperty2("hospitalId",hospitalId,"testId",testId);
        if(list.size() == 1){
            HospitalTestTimes times = list.get(0);
            if(times.getLeftTimes()>0){
                return true;
            }
            return false;
        }else {
            return false;
        }
    }

    public HospitalTestTimes subTimesByHospitalId(HospitalTestTimes hospitalTestTimes){
        List<HospitalTestTimes> list = findByProperty("hospitalId",hospitalTestTimes.getHospitalId());
        if(list.size() == 1){
            HospitalTestTimes times = list.get(0);
            if(times.getLeftTimes()>0){
                //减一
                times.setUpdateTime(new Date());
                times.setLeftTimes(times.getLeftTimes()-1);
                //已经使用+1
                times.setUseTimes(times.getUseTimes()+1);
                times.setUpdateUser(hospitalTestTimes.getUpdateUser());
                super.update(times);
            }
            return times;
        }else {
            return null;
        }
    }

    public HospitalTestTimes subTimes(HospitalTestTimes hospitalTestTimes){
        List<HospitalTestTimes> list = findByProperty2("hospitalId",hospitalTestTimes.getHospitalId(),"testId",hospitalTestTimes.getTestId());
        if(list.size() == 1){
            HospitalTestTimes times = list.get(0);
            if(times.getLeftTimes()>0){
                //减一
                times.setLeftTimes(times.getLeftTimes()-1);
                //已经使用+1
                times.setUseTimes(times.getUseTimes()+1);
                times.setUpdateTime(new Date());
                times.setUpdateUser(hospitalTestTimes.getUpdateUser());
                super.update(times);
            }
            return times;
        }else {
            return null;
        }
    }
}
