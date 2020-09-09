package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBMDDAO;
import com.free4lab.babycheckup.model.ResultBMD;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBMDManager {
    private static ResultBMDDAO getResultBMDDAOInstance() {
        return ResultBMDDAO.getInstance();
    }

    public static void saveResult(ResultBMD re){
        getResultBMDDAOInstance().saveResult(re);
    }

    public static List<ResultBMD> findResultBybid(int bid){
        return getResultBMDDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBMD findResultByid(int rid){
        return getResultBMDDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultBMDDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBMDDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
