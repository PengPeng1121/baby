package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Result132;
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
public class ResultDAO132 extends AbstractDAO<Result132> {
    private static class ResultDAOSingletonHolder {
        static ResultDAO132 instance = new ResultDAO132();
    }

    public static ResultDAO132 getInstance() {
        return ResultDAO132.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Result132.class;
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

    public void saveResult(Result132 r) {
        super.save(r);
    }

    public List<Result132> findResultByBabyId(int bid){
        List<Result132> resultList = new ArrayList<Result132>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public Result132 findResultByid(int rid){
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
