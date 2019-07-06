package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.Result2016DAO;
import com.free4lab.babycheckup.model.Result2016;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultManager2016 {
    private static Result2016DAO getResult2016DAOInstance() {
        return Result2016DAO.getInstance();
    }

    public static void saveResult(Result2016 re){
        getResult2016DAOInstance().saveResult(re);
    }

    public static List<Result2016> findResultBybid(int bid){
        return getResult2016DAOInstance().findResultByBabyid(bid);
    }
    public static Result2016 findResultByid(int rid){
        return getResult2016DAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResult2016DAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResult2016DAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
