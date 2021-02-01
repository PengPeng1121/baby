package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDDSTDAO;
import com.free4lab.babycheckup.model.Question;
import com.free4lab.babycheckup.model.ResultDDST;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultDDSTManager {
    private static ResultDDSTDAO getResultDAOInstance() {
        return ResultDDSTDAO.getInstance();
    }

    public static void saveResult(ResultDDST re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<ResultDDST> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultDDST findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
    public static Integer findQuestions(int testId, int testType, int monthAge){
        return getResultDAOInstance().findQuestions(testId,testType,monthAge);
    }

    public static void deleteResult(int id){
        getResultDAOInstance().deleteResult(id);
    }
}
