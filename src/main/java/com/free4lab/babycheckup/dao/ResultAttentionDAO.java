package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultAttention;
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
public class ResultAttentionDAO extends AbstractDAO<ResultAttention> {
    private static class ResultAttentionDAOSingletonHolder {
        static ResultAttentionDAO instance = new ResultAttentionDAO();
    }

    public static ResultAttentionDAO getInstance() {
        return ResultAttentionDAO.ResultAttentionDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultAttention.class;
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

    public void saveResult(ResultAttention r) {
        super.save(r);
    }

    public List<ResultAttention> findResultByBabyid(int bid){
        List<ResultAttention> resultList = new ArrayList<ResultAttention>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public ResultAttention findResultByid(int rid){
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
