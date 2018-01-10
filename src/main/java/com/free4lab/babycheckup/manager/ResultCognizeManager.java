package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultCognizeDAO;
import com.free4lab.babycheckup.model.ResultCognize;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultCognizeManager {
    private static ResultCognizeDAO getResultDAOInstance() {
        return ResultCognizeDAO.getInstance();
    }

    public static void saveResult(ResultCognize re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<ResultCognize> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultCognize findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
