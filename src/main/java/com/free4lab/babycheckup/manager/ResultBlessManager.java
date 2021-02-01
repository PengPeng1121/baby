package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBlessDAO;
import com.free4lab.babycheckup.model.ResultBless;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBlessManager {
    private static ResultBlessDAO getResultBlessDAOInstance() {
        return ResultBlessDAO.getInstance();
    }

    public static void saveResult(ResultBless re){
        getResultBlessDAOInstance().saveResult(re);
    }

    public static List<ResultBless> findResultBybid(int BabyId){
        return getResultBlessDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultBless findResultByid(int id){
        return getResultBlessDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultBlessDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBlessDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultBlessDAOInstance().deleteResult(id);
    }
}
