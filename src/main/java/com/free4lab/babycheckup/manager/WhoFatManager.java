package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.WhoFatDAO;
import com.free4lab.babycheckup.model.WhoFat;

import java.util.List;

public class WhoFatManager {

    private static WhoFatDAO getWhoFatDAOInstance() {
        return WhoFatDAO.getInstance();
    }

    public static List<WhoFat> findByHeightValueList(String beginValue, String endValue, Integer sexType) {
        return getWhoFatDAOInstance().findByHeightValueList(beginValue,endValue,sexType);
    }

    public static WhoFat findByHeightValue(String value, Integer sexType) {
        return getWhoFatDAOInstance().findByHeightValue(value,sexType);
    }
}
