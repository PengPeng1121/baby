package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultFeed;
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
public class ResultFeedDAO extends AbstractDAO<ResultFeed> {
    private static class ResultFeedDAOSingletonHolder {
        static ResultFeedDAO instance = new ResultFeedDAO();
    }

    public static ResultFeedDAO getInstance() {
        return ResultFeedDAO.ResultFeedDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultFeed.class;
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

    public void saveResult(ResultFeed r) {
        super.save(r);
    }

    public List<ResultFeed> findResultByBabyId(int bid){
        List<ResultFeed> resultList = new ArrayList<ResultFeed>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public ResultFeed findResultByid(int rid){
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
