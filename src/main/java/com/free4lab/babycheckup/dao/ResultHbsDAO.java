package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultHbs;
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
public class ResultHbsDAO extends AbstractDAO<ResultHbs> {
    private static class ResultHbsDAOSingletonHolder {
        static ResultHbsDAO instance = new ResultHbsDAO();
    }

    public static ResultHbsDAO getInstance() {
        return ResultHbsDAO.ResultHbsDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultHbs.class;
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

    public void saveResult(ResultHbs r) {
        super.save(r);
    }

    public List<ResultHbs> findResultByBabyid(int bid){
        List<ResultHbs> resultList = new ArrayList<ResultHbs>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public ResultHbs findResultByid(int rid){
        return findByPrimaryKey(rid);
    }

    public long countResultByHoid(int Hoid) {
        String hoid="hosId";
        return super.countByProperty(hoid,Hoid);}

    public long countResultByHosIdAndTestId(int hosid,int testId) {
        String hoid="hosId";
        String testid="testId";
        return super.countByProperty(hoid,hosid,testid,testId);}
}
