package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultTooth20DAO;
import com.free4lab.babycheckup.model.ResultTooth20;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultTooth20Manager {
    private static ResultTooth20DAO getResultTooth20DAOInstance() {
        return ResultTooth20DAO.getInstance();
    }

    public static void saveResult(ResultTooth20 re){
        getResultTooth20DAOInstance().saveResult(re);
    }

    public static List<ResultTooth20> findResultBybid(int BabyId){
        return getResultTooth20DAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultTooth20 findResultByid(int id){
        return getResultTooth20DAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultTooth20DAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultTooth20DAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultTooth20DAOInstance().deleteResult(id);
    }
}
