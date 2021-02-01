package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultBlood;
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
public class ResultBloodDAO extends AbstractDAO<ResultBlood> {
    private static class ResultBloodDAOSingletonHolder {
        static ResultBloodDAO instance = new ResultBloodDAO();
    }

    public static ResultBloodDAO getInstance() {
        return ResultBloodDAO.ResultBloodDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultBlood.class;
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

    public void saveResult(ResultBlood r) {
        super.save(r);
    }

    public List<ResultBlood> findResultByBabyid(int bid){
        List<ResultBlood> resultList = new ArrayList<ResultBlood>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultBlood findResultByid(int rid){
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
