package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultNeiDAO;
import com.free4lab.babycheckup.model.ResultNei;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultNeiManager {
    private static ResultNeiDAO getResultDAOInstance() {
        return ResultNeiDAO.getInstance();
    }

    public static void saveResult(ResultNei re){
        getResultDAOInstance().saveResult(re);
    }

    public static List<ResultNei> findResultBybid(int BabyId){
        return getResultDAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultNei findResultByid(int id){
        return getResultDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultDAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
