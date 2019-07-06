package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFeelDAO;
import com.free4lab.babycheckup.model.ResultFeel;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultFeelManager {
    private static ResultFeelDAO getResultFeelDAOInstance() {
        return ResultFeelDAO.getInstance();
    }

    public static void saveResult(ResultFeel re){
        getResultFeelDAOInstance().saveResult(re);
    }

    public static List<ResultFeel> findResultBybid(int BabyId){
        return getResultFeelDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultFeel findResultByid(int id){
        return getResultFeelDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultFeelDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFeelDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void saveAdvice(ResultFeel re){
        getResultFeelDAOInstance().saveAdvice(re);
    }
}
