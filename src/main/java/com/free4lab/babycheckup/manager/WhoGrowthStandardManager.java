package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.WhoGrowthStandardConstantDAO;
import com.free4lab.babycheckup.model.WhoGrowthStandardConstant;

import java.util.List;

public class WhoGrowthStandardManager {

    private static WhoGrowthStandardConstantDAO getInstance() {
        return WhoGrowthStandardConstantDAO.getInstance();
    }

    public static List<WhoGrowthStandardConstant> findConstantsByCondition(Integer constantType, Integer sexType, Integer monthAge) {
        return getInstance().findConstantsByCondition(constantType,sexType,monthAge);
    }

    public static List<WhoGrowthStandardConstant> findConstantsByCondition(Integer constantType, Integer sexType) {
        return getInstance().findConstantsByCondition(constantType,sexType,null);
    }

}
