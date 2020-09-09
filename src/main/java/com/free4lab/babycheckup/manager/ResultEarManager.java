package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultEarDAO;
import com.free4lab.babycheckup.model.ResultEar;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultEarManager {
    private static ResultEarDAO getResultEarDAOInstance() {
        return ResultEarDAO.getInstance();
    }

    public static void saveResult(ResultEar re){
        getResultEarDAOInstance().saveResult(re);
    }

    public static List<ResultEar> findResultBybid(int bid){
        return getResultEarDAOInstance().findResultByBabyid(bid);
    }
    public static ResultEar findResultByid(int rid){
        return getResultEarDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultEarDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultEarDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
