package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFeel2020DAO;
import com.free4lab.babycheckup.model.ResultFeel2020;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultFeel2020Manager {
    private static ResultFeel2020DAO getResultFeel2020DAOInstance() {
        return ResultFeel2020DAO.getInstance();
    }

    public static void saveResult(ResultFeel2020 re){
        getResultFeel2020DAOInstance().saveResult(re);
    }

    public static List<ResultFeel2020> findResultBybid(int BabyId){
        return getResultFeel2020DAOInstance().findResultByBabyId(BabyId);
    }
    public static ResultFeel2020 findResultByid(int id){
        return getResultFeel2020DAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultFeel2020DAOInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFeel2020DAOInstance().countResultByHosIdAndTestId(hoid,testId);}

}
