package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.Result3_6;
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
public class ResultDAO3_6 extends AbstractDAO<Result3_6> {
    private static class ResultDAOSingletonHolder {
        static ResultDAO3_6 instance = new ResultDAO3_6();
    }

    public static ResultDAO3_6 getInstance() {
        return ResultDAO3_6.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Result3_6.class;
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

    public void saveResult(Result3_6 r) {
        super.save(r);
    }

    public List<Result3_6> findResultByBabyId(int bid){
        List<Result3_6> resultList = new ArrayList<Result3_6>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public Result3_6 findResultByid(int rid){
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
