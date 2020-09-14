package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBoneDAO;
import com.free4lab.babycheckup.model.ResultBone;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBoneManager {
    private static ResultBoneDAO getResultBoneDAOInstance() {
        return ResultBoneDAO.getInstance();
    }

    public static void saveResult(ResultBone re){
        getResultBoneDAOInstance().saveResult(re);
    }

    public static List<ResultBone> findResultBybid(int bid){
        return getResultBoneDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBone findResultByid(int rid){
        return getResultBoneDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultBoneDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBoneDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
