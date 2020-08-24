package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultPlanDAO;
import com.free4lab.babycheckup.model.ResultPlan;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultPlanManager {
    private static ResultPlanDAO getResultPlanDAOInstance() {
        return ResultPlanDAO.getInstance();
    }

    public static void saveResult(ResultPlan re){
        getResultPlanDAOInstance().saveResult(re);
    }

    public static List<ResultPlan> findResultBybid(int BabyId){
        return getResultPlanDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultPlan findResultByid(int id){
        return getResultPlanDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultPlanDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultPlanDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

}
