package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultUrineDAO;
import com.free4lab.babycheckup.model.ResultUrine;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultUrineManager {
    private static ResultUrineDAO getResultUrineDAOInstance() {
        return ResultUrineDAO.getInstance();
    }

    public static void saveResult(ResultUrine re){
        getResultUrineDAOInstance().saveResult(re);
    }

    public static List<ResultUrine> findResultBybid(int bid){
        return getResultUrineDAOInstance().findResultByBabyid(bid);
    }
    public static ResultUrine findResultByid(int rid){
        return getResultUrineDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultUrineDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultUrineDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
