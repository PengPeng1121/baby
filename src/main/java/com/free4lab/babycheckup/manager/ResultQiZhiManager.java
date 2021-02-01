package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultQiZhiDAO;
import com.free4lab.babycheckup.model.ResultQiZhi;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultQiZhiManager {
    private static ResultQiZhiDAO getResultQiZhiDAOInstance() {
        return ResultQiZhiDAO.getInstance();
    }

    public static void saveResult(ResultQiZhi re){
        getResultQiZhiDAOInstance().saveResult(re);
    }

    public static List<ResultQiZhi> findResultBybid(int BabyId){
        return getResultQiZhiDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultQiZhi findResultByid(int id){
        return getResultQiZhiDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultQiZhiDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultQiZhiDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultQiZhiDAOInstance().deleteResult(id);
    }
}
