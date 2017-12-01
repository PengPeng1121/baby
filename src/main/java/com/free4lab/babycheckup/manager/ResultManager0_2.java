package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDAO0_2;
import com.free4lab.babycheckup.model.Result0_2;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager0_2 {
    private static ResultDAO0_2 getResultDAOInstance() {
        return ResultDAO0_2.getInstance();
    }

    public static void saveResult(Result0_2 re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<Result0_2> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static Result0_2 findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
