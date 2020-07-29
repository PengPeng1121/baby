package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultPhysicalDAO;
import com.free4lab.babycheckup.model.ResultPhysical;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultPhysicalManager {
    private static ResultPhysicalDAO getInstance() {
        return ResultPhysicalDAO.getInstance();
    }

    public static void saveResult(ResultPhysical re){
        getInstance().saveResult(re);
    }

    public static List<ResultPhysical> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultPhysical findResultByid(int id){
        return getInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}
}
