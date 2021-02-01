package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFeedDAO;
import com.free4lab.babycheckup.model.ResultFeed;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultFeedManager {
    private static ResultFeedDAO getResultFeedDAOInstance() {
        return ResultFeedDAO.getInstance();
    }

    public static void saveResult(ResultFeed re){
        getResultFeedDAOInstance().saveResult(re);
    }

    public static List<ResultFeed> findResultBybid(int BabyId){
        return getResultFeedDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultFeed findResultByid(int id){
        return getResultFeedDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultFeedDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFeedDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static ResultFeed update(ResultFeed resultFeed) {
        return getResultFeedDAOInstance().update(resultFeed);
    }

    public static void deleteResult(int id){
        getResultFeedDAOInstance().deleteResult(id);
    }
}
