package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Question;
import com.free4lab.babycheckup.model.ResultDDST;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultDDSTDAO extends AbstractDAO<ResultDDST> {
    private static class ResultDAOSingletonHolder {
        static ResultDDSTDAO instance = new ResultDDSTDAO();
    }

    public static ResultDDSTDAO getInstance() {
        return ResultDDSTDAO.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ResultDDST.class;
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

    public void saveResult(ResultDDST r) {
        super.save(r);
    }

    public List<ResultDDST> findResultByBabyId(int bid){
        List<ResultDDST> resultList = new ArrayList<ResultDDST>();
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("babyId",bid);
        resultList = findByProperty(params,null,null,"time",false);
        return resultList;
    }
    public ResultDDST findResultByid(int rid){
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


    public Integer findQuestions(int testId, int testType, int monthAge){
        List<Question> questions = new ArrayList<Question>();
        try{
            final String queryString = "SELECT model FROM Question model WHERE model.testid = :testId and model.type = :testType and model.month <= :monthAge";
            Query query = getEntityManager().createQuery(queryString);
            query.setParameter("testId", testId);
            query.setParameter("testType", testType);
            query.setParameter("monthAge", monthAge);
            questions = query.getResultList();
            if(questions!=null){
                return questions.size();
            }
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return 0;
    }

    public void deleteResult(int id) {
        super.deleteByPrimaryKey(id);
    }
}
