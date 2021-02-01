package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultBless;
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
public class ResultBlessDAO extends AbstractDAO<ResultBless> {
    private static class ResultBlessDAOSingletonHolder {
        static ResultBlessDAO instance = new ResultBlessDAO();
    }

    public static ResultBlessDAO getInstance() {
        return ResultBlessDAO.ResultBlessDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultBless.class;
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

    public void saveResult(ResultBless r) {
        super.save(r);
    }

    public List<ResultBless> findResultByBabyId(int bid){
        List<ResultBless> resultList = new ArrayList<ResultBless>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultBless findResultByid(int rid){
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

    public void deleteResult(int id) {
        super.deleteByPrimaryKey(id);
    }

}
