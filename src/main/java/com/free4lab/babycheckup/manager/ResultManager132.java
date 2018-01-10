package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDAO132;
import com.free4lab.babycheckup.model.Result132;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager132 {
    private static ResultDAO132 getResultDAOInstance() {
        return ResultDAO132.getInstance();
    }

    public static void saveResult(Result132 re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<Result132> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static Result132 findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
