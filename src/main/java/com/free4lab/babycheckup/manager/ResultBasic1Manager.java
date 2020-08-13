package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBasic1DAO;
import com.free4lab.babycheckup.model.ResultBasic1;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBasic1Manager {
    private static ResultBasic1DAO getInstance() {
        return ResultBasic1DAO.getInstance();
    }

    public static void saveResult(ResultBasic1 re){
        getInstance().saveResult(re);
    }

    public static List<ResultBasic1> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultBasic1 findResultByid(int id){
        return getInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}
}
