package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Result50;
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
public class ResultDAO50 extends AbstractDAO<Result50> {
    private static class ResultDAOSingletonHolder {
        static ResultDAO50 instance = new ResultDAO50();
    }

    public static ResultDAO50 getInstance() {
        return ResultDAO50.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Result50.class;
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

    public void saveResult(Result50 r) {
        super.save(r);
    }

    public List<Result50> findResultByBabyId(int bid){
        List<Result50> resultList = new ArrayList<Result50>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public Result50 findResultByid(int rid){
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
