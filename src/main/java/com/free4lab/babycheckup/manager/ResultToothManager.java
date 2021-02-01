package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultToothDAO;
import com.free4lab.babycheckup.model.ResultTooth;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultToothManager {
    private static ResultToothDAO getResultToothDAOInstance() {
        return ResultToothDAO.getInstance();
    }

    public static void saveResult(ResultTooth re){
        getResultToothDAOInstance().saveResult(re);
    }

    public static List<ResultTooth> findResultBybid(int BabyId){
        return getResultToothDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultTooth findResultByid(int id){
        return getResultToothDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultToothDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultToothDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultToothDAOInstance().deleteResult(id);
    }
}
