package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.HospitalTestConfig;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.List;

/**
 * Created by Administrator on 2018/3/18.
 */
public class HospitalTestConfigDAO extends AbstractDAO<HospitalTestConfig> {
    private static class BabySchemaDAOSingletonHolder {
        static HospitalTestConfigDAO instance = new HospitalTestConfigDAO();
    }

    public static HospitalTestConfigDAO getInstance() {
        return HospitalTestConfigDAO.BabySchemaDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return HospitalTestConfig.class;
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


    public HospitalTestConfig findConfigByHospitalId(Integer hospitalId){
        List<HospitalTestConfig> list = findByProperty("hospitalId",hospitalId);
        if(list.size() == 1){
            HospitalTestConfig config = list.get(0);
            return config;
        }else {
            return null;
        }
    }
}
