package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFastAllergyDAO;
import com.free4lab.babycheckup.model.ResultFastAllergy;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultFastAllergyManager {
    private static ResultFastAllergyDAO getResultFastAllergyDAOInstance() {
        return ResultFastAllergyDAO.getInstance();
    }

    public static void saveResult(ResultFastAllergy re){
        getResultFastAllergyDAOInstance().saveResult(re);
    }

    public static List<ResultFastAllergy> findResultBybid(int bid){
        return getResultFastAllergyDAOInstance().findResultByBabyid(bid);
    }
    public static ResultFastAllergy findResultByid(int rid){
        return getResultFastAllergyDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultFastAllergyDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFastAllergyDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
