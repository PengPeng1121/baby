package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDAO;
import com.free4lab.babycheckup.dao.ResultDAO3_6;
import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.Result3_6;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager3_6 {
    private static ResultDAO3_6 getResultDAOInstance() {
        return ResultDAO3_6.getInstance();
    }

    public static void saveResult(Result3_6 re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<Result3_6> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static Result3_6 findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
