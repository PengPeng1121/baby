package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDAO50;
import com.free4lab.babycheckup.model.Result50;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager50 {
    private static ResultDAO50 getResultDAOInstance() {
        return ResultDAO50.getInstance();
    }

    public static void saveResult(Result50 re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<Result50> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static Result50 findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
