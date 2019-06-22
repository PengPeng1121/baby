package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.WhoFat;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;
import org.springframework.util.CollectionUtils;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

public class WhoFatDAO extends AbstractDAO<WhoFat> {

    private static class WhoFatDAOSingletonHolder {
        static WhoFatDAO instance = new WhoFatDAO();
    }

    public static WhoFatDAO getInstance() {
        return WhoFatDAO.WhoFatDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return WhoFat.class;
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

    public  List<WhoFat> findByHeightValueList(String beginValue, String endValue, Integer sexType){
        List<WhoFat> constants = new ArrayList<WhoFat>();
        try {
            String queryString = "SELECT whofat FROM WhoFat whofat";
            queryString += " WHERE whofat.heightValue >= " + beginValue;
            queryString += " AND whofat.heightValue < " + endValue;
            queryString += " AND whofat.sexType = " + sexType;
            Query query = getEntityManager().createQuery(queryString);
            constants = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return constants;
    }

    public WhoFat findByHeightValue(String value, Integer sexType){
        List<WhoFat> constants = new ArrayList<WhoFat>();
        try {
            String queryString = "SELECT whofat FROM WhoFat whofat";
            queryString += " WHERE whofat.heightValue = " + value;
            queryString += " AND whofat.sexType = " + sexType;
            Query query = getEntityManager().createQuery(queryString);
            constants = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        if(CollectionUtils.isEmpty(constants)){
            return null;
        }
        return constants.get(0);
    }
}
