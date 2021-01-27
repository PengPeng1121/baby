package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultTooth20;
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
public class ResultTooth20DAO extends AbstractDAO<ResultTooth20> {
    private static class ResultToothDAOSingletonHolder {
        static ResultTooth20DAO instance = new ResultTooth20DAO();
    }

    public static ResultTooth20DAO getInstance() {
        return ResultTooth20DAO.ResultToothDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultTooth20.class;
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

    public void saveResult(ResultTooth20 r) {
        super.save(r);
    }

    public List<ResultTooth20> findResultByBabyId(int bid){
        List<ResultTooth20> resultList = new ArrayList<ResultTooth20>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultTooth20 findResultByid(int rid){
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
