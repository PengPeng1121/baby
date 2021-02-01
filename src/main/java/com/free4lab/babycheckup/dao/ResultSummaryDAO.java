package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultSummary;
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
public class ResultSummaryDAO extends AbstractDAO<ResultSummary> {
    private static class ResultSummaryDAOSingletonHolder {
        static ResultSummaryDAO instance = new ResultSummaryDAO();
    }

    public static ResultSummaryDAO getInstance() {
        return ResultSummaryDAO.ResultSummaryDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultSummary.class;
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

    public void saveResult(ResultSummary r) {
        super.save(r);
    }

    public List<ResultSummary> findResultByBabyid(int bid){
        List<ResultSummary> resultList = new ArrayList<ResultSummary>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultSummary findResultByid(int rid){
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
