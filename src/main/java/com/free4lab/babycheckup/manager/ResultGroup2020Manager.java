package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultGroup2020DAO;
import com.free4lab.babycheckup.model.ResultGroup2020;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultGroup2020Manager {
    private static ResultGroup2020DAO getResultDAOInstance() {
        return ResultGroup2020DAO.getInstance();
    }

    public static void saveResult(ResultGroup2020 re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<ResultGroup2020> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyid(BabyId);
    }
    public static ResultGroup2020 findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static ResultGroup2020 update(ResultGroup2020 resultGroup2020) {
        return getResultDAOInstance().update(resultGroup2020);
    }

    public static void deleteResult(int id){
        getResultDAOInstance().deleteResult(id);
    }
}
