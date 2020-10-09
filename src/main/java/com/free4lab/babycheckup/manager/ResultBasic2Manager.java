package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBasic2DAO;
import com.free4lab.babycheckup.model.ResultBasic1;
import com.free4lab.babycheckup.model.ResultBasic2;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBasic2Manager {
    private static ResultBasic2DAO getInstance() {
        return ResultBasic2DAO.getInstance();
    }

    public static void saveResult(ResultBasic2 re){
        getInstance().saveResult(re);
    }

    public static List<ResultBasic2> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultBasic2 findResultByid(int id){
        return getInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static ResultBasic2 update(ResultBasic2 resultBasic2) {
        return getInstance().update(resultBasic2);
    }

}
