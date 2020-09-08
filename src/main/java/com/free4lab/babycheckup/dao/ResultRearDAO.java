package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultRear;
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
public class ResultRearDAO extends AbstractDAO<ResultRear> {
    private static class ResultRearDAOSingletonHolder {
        static ResultRearDAO instance = new ResultRearDAO();
    }

    public static ResultRearDAO getInstance() {
        return ResultRearDAO.ResultRearDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultRear.class;
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

    public void saveResult(ResultRear r) {
        super.save(r);
    }

    public List<ResultRear> findResultByBabyid(int bid){
        List<ResultRear> resultList = new ArrayList<ResultRear>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",true);
        return resultList;
    }
    public ResultRear findResultByid(int rid){
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

    public ResultRear update(ResultRear rear) {
        return super.update(rear);
    }
}
