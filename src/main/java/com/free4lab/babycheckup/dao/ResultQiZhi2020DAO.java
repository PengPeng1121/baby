package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultQiZhi2020;
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
public class ResultQiZhi2020DAO extends AbstractDAO<ResultQiZhi2020> {
    private static class ResultDAOSingletonHolder {
        static ResultQiZhi2020DAO instance = new ResultQiZhi2020DAO();
    }

    public static ResultQiZhi2020DAO getInstance() {
        return ResultQiZhi2020DAO.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultQiZhi2020.class;
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

    public void saveResult(ResultQiZhi2020 r) {
        super.save(r);
    }

    public List<ResultQiZhi2020> findResultByBabyId(int bid){
        List<ResultQiZhi2020> resultList = new ArrayList<ResultQiZhi2020>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public ResultQiZhi2020 findResultByid(int rid){
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
