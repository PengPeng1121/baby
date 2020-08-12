package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultBasic2;
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
public class ResultBasic2DAO extends AbstractDAO<ResultBasic2> {
    private static class SingletonHolder {
        static ResultBasic2DAO instance = new ResultBasic2DAO();
    }

    public static ResultBasic2DAO getInstance() {
        return ResultBasic2DAO.SingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultBasic2.class;
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

    public void saveResult(ResultBasic2 r) {
        super.save(r);
    }

    public List<ResultBasic2> findResultByBabyid(int bid){
        List<ResultBasic2> resultList = new ArrayList<ResultBasic2>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",true);
        return resultList;
    }
    public ResultBasic2 findResultByid(int rid){
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
