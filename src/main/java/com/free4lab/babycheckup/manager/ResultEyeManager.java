package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultEyeDAO;
import com.free4lab.babycheckup.model.ResultEye;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultEyeManager {
    private static ResultEyeDAO getResultEyeDAOInstance() {
        return ResultEyeDAO.getInstance();
    }

    public static void saveResult(ResultEye re){
        getResultEyeDAOInstance().saveResult(re);
    }

    public static List<ResultEye> findResultBybid(int bid){
        return getResultEyeDAOInstance().findResultByBabyid(bid);
    }
    public static ResultEye findResultByid(int rid){
        return getResultEyeDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultEyeDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultEyeDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
