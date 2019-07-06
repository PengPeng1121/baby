package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Result2016;
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
public class Result2016DAO extends AbstractDAO<Result2016> {
    private static class ResultDAOSingletonHolder {
        static Result2016DAO instance = new Result2016DAO();
    }

    public static Result2016DAO getInstance() {
        return Result2016DAO.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Result2016.class;
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

    public void saveResult(Result2016 r) {
        super.save(r);
    }

    public List<Result2016> findResultByBabyid(int bid){
        List<Result2016> resultList = new ArrayList<Result2016>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyid",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public Result2016 findResultByid(int rid){
        return findByPrimaryKey(rid);
    }

    public long countResultByHoid(int Hoid) {
        String hoid="hoid";
        return super.countByProperty(hoid,Hoid);}

    public long countResultByHosIdAndTestId(int hosid,int testId) {
        String hoid="hoid";
        String testid="testid";
        return super.countByProperty(hoid,hosid,testid,testId);}
}
