package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultAttentionDAO;
import com.free4lab.babycheckup.model.ResultAttention;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultAttentionManager {
    private static ResultAttentionDAO getResultAttentionDAOInstance() {
        return ResultAttentionDAO.getInstance();
    }

    public static void saveResult(ResultAttention re){
        getResultAttentionDAOInstance().saveResult(re);
    }

    public static List<ResultAttention> findResultBybid(int BabyId){
        return getResultAttentionDAOInstance().findResultByBabyid(BabyId);
    }
    public static ResultAttention findResultByid(int id){
        return getResultAttentionDAOInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getResultAttentionDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultAttentionDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

}
