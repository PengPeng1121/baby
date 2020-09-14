package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBloodDAO;
import com.free4lab.babycheckup.model.ResultBlood;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBloodManager {
    private static ResultBloodDAO getResultBloodDAOInstance() {
        return ResultBloodDAO.getInstance();
    }

    public static void saveResult(ResultBlood re){
        getResultBloodDAOInstance().saveResult(re);
    }

    public static List<ResultBlood> findResultBybid(int bid){
        return getResultBloodDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBlood findResultByid(int rid){
        return getResultBloodDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultBloodDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBloodDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
