package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.ResultEye;
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
public class ResultEyeDAO extends AbstractDAO<ResultEye> {
    private static class ResultEyeDAOSingletonHolder {
        static ResultEyeDAO instance = new ResultEyeDAO();
    }

    public static ResultEyeDAO getInstance() {
        return ResultEyeDAO.ResultEyeDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultEye.class;
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

    public void saveResult(ResultEye r) {
        super.save(r);
    }

    public List<ResultEye> findResultByBabyid(int bid){
        List<ResultEye> resultList = new ArrayList<ResultEye>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,0,Integer.MAX_VALUE,"time",false);
        return resultList;
    }
    public ResultEye findResultByid(int rid){
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
