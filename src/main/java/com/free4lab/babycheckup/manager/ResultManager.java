package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultDAO;
import com.free4lab.babycheckup.model.Result;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager {
    private static ResultDAO getResultDAOInstance() {
        return ResultDAO.getInstance();
    }

    public static void saveResult(Result re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<Result> findResultBybid(int bid){
        return getResultDAOInstance().findResultByBabyid(bid);
    }
    public static Result findResultByid(int rid){
        return getResultDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
