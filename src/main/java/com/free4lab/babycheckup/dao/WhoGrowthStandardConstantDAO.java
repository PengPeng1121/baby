package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.WhoGrowthStandardConstant;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

public class WhoGrowthStandardConstantDAO extends AbstractDAO<WhoGrowthStandardConstant> {

    private static class WhoGrowthStandardConstantDAOSingletonHolder {
        static WhoGrowthStandardConstantDAO instance = new WhoGrowthStandardConstantDAO();
    }

    public static WhoGrowthStandardConstantDAO getInstance() {
        return WhoGrowthStandardConstantDAO.WhoGrowthStandardConstantDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return WhoGrowthStandardConstant.class;
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

    public  List<WhoGrowthStandardConstant> findConstantsByCondition(Integer constantType, Integer sexType, Integer monthAge){
        List<WhoGrowthStandardConstant> constants = new ArrayList<WhoGrowthStandardConstant>();
        try {
            String queryString = "SELECT constant FROM WhoGrowthStandardConstant constant";
            queryString += " WHERE constant.constantType = " + constantType;
            queryString += " AND constant.sexType = " + sexType;
            if(monthAge != null){
                queryString += " AND constant.monthAge = " + monthAge;
            }
            Query query = getEntityManager().createQuery(queryString);
            constants = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return constants;
    }


}
