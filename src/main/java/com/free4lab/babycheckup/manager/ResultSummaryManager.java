package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultSummaryDAO;
import com.free4lab.babycheckup.model.ResultSummary;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultSummaryManager {
    private static ResultSummaryDAO getInstance() {
        return ResultSummaryDAO.getInstance();
    }

    public static void saveResult(ResultSummary re){
        getInstance().saveResult(re);
    }

    public static List<ResultSummary> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultSummary findResultByid(int id){
        return getInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static ResultSummary update(ResultSummary resultSummary) {
        return getInstance().update(resultSummary);
    }

    public static void deleteResult(int id){
        getInstance().deleteResult(id);
    }
}
