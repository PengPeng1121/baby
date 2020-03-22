package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultADHDDAO;
import com.free4lab.babycheckup.model.ResultADHD;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultADHDManager {
    private static ResultADHDDAO getResultADHDDAOInstance() {
        return ResultADHDDAO.getInstance();
    }

    public static void saveResult(ResultADHD re){
        getResultADHDDAOInstance().saveResult(re);
    }

    public static List<ResultADHD> findResultBybid(int BabyId){
        return getResultADHDDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultADHD findResultByid(int id){
        return getResultADHDDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultADHDDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultADHDDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

}
