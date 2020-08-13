package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultQiZhi2020DAO;
import com.free4lab.babycheckup.model.ResultQiZhi2020;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultQiZhi2020Manager {
    private static ResultQiZhi2020DAO getResultQiZhiDAOInstance() {
        return ResultQiZhi2020DAO.getInstance();
    }

    public static void saveResult(ResultQiZhi2020 re){
        getResultQiZhiDAOInstance().saveResult(re);
    }

    public static List<ResultQiZhi2020> findResultBybid(int BabyId){
        return getResultQiZhiDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultQiZhi2020 findResultByid(int id){
        return getResultQiZhiDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultQiZhiDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultQiZhiDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
