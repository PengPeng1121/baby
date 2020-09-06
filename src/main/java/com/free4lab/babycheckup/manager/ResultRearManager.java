package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultRearDAO;
import com.free4lab.babycheckup.model.ResultRear;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultRearManager {
    private static ResultRearDAO getInstance() {
        return ResultRearDAO.getInstance();
    }

    public static void saveResult(ResultRear re){
        getInstance().saveResult(re);
    }

    public static List<ResultRear> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultRear findResultByid(int id){
        return getInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}
}
