package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultPhysical;
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
public class ResultPhysicalDAO extends AbstractDAO<ResultPhysical> {
    private static class ResultDAOSingletonHolder {
        static ResultPhysicalDAO instance = new ResultPhysicalDAO();
    }

    public static ResultPhysicalDAO getInstance() {
        return ResultPhysicalDAO.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultPhysical.class;
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

    public void saveResult(ResultPhysical r) {
        super.save(r);
    }

    public List<ResultPhysical> findResultByBabyid(int bid){
        List<ResultPhysical> resultList = new ArrayList<ResultPhysical>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",true);
        return resultList;
    }
    public ResultPhysical findResultByid(int rid){
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
