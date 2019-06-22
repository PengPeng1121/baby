package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.GrowthAndDevelopmentDAO;
import com.free4lab.babycheckup.model.GrowthAndDevelopment;

import java.util.List;

public class GrowthAndDevelopmentManager {

    private static GrowthAndDevelopmentDAO getGrowthAndDevelopmentDAOInstance() {
        return GrowthAndDevelopmentDAO.getInstance();
    }

    public static List<GrowthAndDevelopment> findConstantsByCondition(String beginValue, String endValue, Integer constantType, Integer sexType, Integer dataType) {
        return getGrowthAndDevelopmentDAOInstance().findConstantsByCondition(beginValue,endValue,constantType,sexType,dataType);
    }

    public static GrowthAndDevelopment findConstantByCondition(String constantValue, Integer constantType, Integer sexType, Integer dataType){
        return getGrowthAndDevelopmentDAOInstance().findConstantByCondition(constantValue,constantType,sexType,dataType);
    }
}
