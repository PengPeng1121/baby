package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultFoodAllergy;
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
public class ResultFoodAllergyDAO extends AbstractDAO<ResultFoodAllergy> {
    private static class ResultFoodAllergyDAOSingletonHolder {
        static ResultFoodAllergyDAO instance = new ResultFoodAllergyDAO();
    }

    public static ResultFoodAllergyDAO getInstance() {
        return ResultFoodAllergyDAO.ResultFoodAllergyDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultFoodAllergy.class;
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

    public void saveResult(ResultFoodAllergy r) {
        super.save(r);
    }

    public List<ResultFoodAllergy> findResultByBabyid(int bid){
        List<ResultFoodAllergy> resultList = new ArrayList<ResultFoodAllergy>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultFoodAllergy findResultByid(int rid){
        return findByPrimaryKey(rid);
    }

    public long countResultByHoid(int Hoid) {
        String hoid="hosId";
        return super.countByProperty(hoid,Hoid);}

    public long countResultByHosIdAndTestId(int hosid,int testId) {
        String hoid="hosId";
        String testid="testId";
        return super.countByProperty(hoid,hosid,testid,testId);
    }

    public void deleteResult(int id) {
        super.deleteByPrimaryKey(id);
    }
}
