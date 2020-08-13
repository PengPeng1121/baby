package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultBasic1;
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
public class ResultBasic1DAO extends AbstractDAO<ResultBasic1> {
    private static class SingletonHolder {
        static ResultBasic1DAO instance = new ResultBasic1DAO();
    }

    public static ResultBasic1DAO getInstance() {
        return ResultBasic1DAO.SingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultBasic1.class;
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

    public void saveResult(ResultBasic1 r) {
        super.save(r);
    }

    public List<ResultBasic1> findResultByBabyid(int bid){
        List<ResultBasic1> resultList = new ArrayList<ResultBasic1>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",true);
        return resultList;
    }
    public ResultBasic1 findResultByid(int rid){
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
