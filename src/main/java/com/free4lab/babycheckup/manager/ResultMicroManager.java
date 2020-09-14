package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultMicroDAO;
import com.free4lab.babycheckup.model.ResultMicro;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultMicroManager {
    private static ResultMicroDAO getResultMicroDAOInstance() {
        return ResultMicroDAO.getInstance();
    }

    public static void saveResult(ResultMicro re){
        getResultMicroDAOInstance().saveResult(re);
    }

    public static List<ResultMicro> findResultBybid(int bid){
        return getResultMicroDAOInstance().findResultByBabyid(bid);
    }
    public static ResultMicro findResultByid(int rid){
        return getResultMicroDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultMicroDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultMicroDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
