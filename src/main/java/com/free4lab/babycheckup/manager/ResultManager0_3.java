package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDAO0_3;
import com.free4lab.babycheckup.model.Result0_3;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager0_3 {
    private static ResultDAO0_3 getResultDAOInstance() {
        return ResultDAO0_3.getInstance();
    }

    public static void saveResult(Result0_3 re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<Result0_3> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static Result0_3 findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
