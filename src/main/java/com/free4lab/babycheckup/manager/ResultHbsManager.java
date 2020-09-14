package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultHbsDAO;
import com.free4lab.babycheckup.model.ResultHbs;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultHbsManager {
    private static ResultHbsDAO getResultHbsDAOInstance() {
        return ResultHbsDAO.getInstance();
    }

    public static void saveResult(ResultHbs re){
        getResultHbsDAOInstance().saveResult(re);
    }

    public static List<ResultHbs> findResultBybid(int bid){
        return getResultHbsDAOInstance().findResultByBabyid(bid);
    }
    public static ResultHbs findResultByid(int rid){
        return getResultHbsDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultHbsDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultHbsDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
