package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ResultFeel;
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
public class ResultFeelDAO extends AbstractDAO<ResultFeel> {
    private static class ResultDAOSingletonHolder {
        static ResultFeelDAO instance = new ResultFeelDAO();
    }

    public static ResultFeelDAO getInstance() {
        return ResultFeelDAO.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultFeel.class;
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

    public void saveResult(ResultFeel r) {
        super.save(r);
    }

    public List<ResultFeel> findResultByBabyId(int bid){
        List<ResultFeel> resultList = new ArrayList<ResultFeel>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultFeel findResultByid(int rid){
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

    public void saveAdvice(ResultFeel r){
        super.update(r);
    }

    public void deleteResult(int id) {
        super.deleteByPrimaryKey(id);
    }
}
