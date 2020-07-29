package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultAllergy;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultAllergyDAO extends AbstractDAO<ResultAllergy> {
    private static class ResultAllergyDAOSingletonHolder {
        static ResultAllergyDAO instance = new ResultAllergyDAO();
    }

    public static ResultAllergyDAO getInstance() {
        return ResultAllergyDAO.ResultAllergyDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultAllergy.class;
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

    public void saveResult(ResultAllergy r) {
        super.save(r);
    }

    public List<ResultAllergy> findResultByBabyid(int bid){
        List<ResultAllergy> resultList = new ArrayList<ResultAllergy>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",true);
        return resultList;
    }
    public ResultAllergy findResultByid(int rid){
        return findByPrimaryKey(rid);
    }

    public long countResultByHosId(int Hoid) {
        String hoid="hosId";
        return super.countByProperty(hoid,Hoid);
    }

    public long countResultByHosIdAndTestId(int hosid,int testId) {
        String hoid="hosId";
        String testid="testId";
        return super.countByProperty(hoid,hosid,testid,testId);
    }
}
