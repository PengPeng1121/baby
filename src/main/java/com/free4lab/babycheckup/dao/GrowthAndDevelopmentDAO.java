package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.GrowthAndDevelopment;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;
import org.springframework.util.CollectionUtils;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

public class GrowthAndDevelopmentDAO extends AbstractDAO<GrowthAndDevelopment> {

    private static class GrowthAndDevelopmentDAOSingletonHolder {
        static GrowthAndDevelopmentDAO instance = new GrowthAndDevelopmentDAO();
    }

    public static GrowthAndDevelopmentDAO getInstance() {
        return GrowthAndDevelopmentDAO.GrowthAndDevelopmentDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return GrowthAndDevelopment.class;
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

    public  List<GrowthAndDevelopment> findConstantsByCondition(String beginValue, String endValue, Integer constantType, Integer sexType, Integer dataType){
        List<GrowthAndDevelopment> constants = new ArrayList<GrowthAndDevelopment>();
        try {
            String queryString = "SELECT development FROM GrowthAndDevelopment development";
            queryString += " WHERE development.constantValue >= " + beginValue;
            queryString += " AND development.constantValue < " + endValue;
            queryString += " AND development.constantType = " + constantType;
            queryString += " AND development.sexType = " + sexType;
            queryString += " AND development.dataType = " + dataType;
//            queryString += " order by development.constantValue asc";
            Query query = getEntityManager().createQuery(queryString);
            constants = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return constants;
    }

    public GrowthAndDevelopment findConstantByCondition(String constantValue, Integer constantType, Integer sexType, Integer dataType){
        try {
            String queryString = "SELECT development FROM GrowthAndDevelopment development";
            queryString += " WHERE development.constantValue = " + constantValue;
            queryString += " AND development.constantType = " + constantType;
            queryString += " AND development.sexType = " + sexType;
            queryString += " AND development.dataType = " + dataType;
            Query query = getEntityManager().createQuery(queryString);
            List<GrowthAndDevelopment> constants = query.getResultList();
            if(!CollectionUtils.isEmpty(constants)){
                return constants.get(0);
            }
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return null;
    }
}
