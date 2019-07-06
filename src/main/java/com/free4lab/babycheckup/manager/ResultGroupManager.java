package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultGroupDAO;
import com.free4lab.babycheckup.model.ResultGroup;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultGroupManager {
    private static ResultGroupDAO getResultDAOInstance() {
        return ResultGroupDAO.getInstance();
    }

    public static void saveResult(ResultGroup re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<ResultGroup> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyid(BabyId);
    }
    public static ResultGroup findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
