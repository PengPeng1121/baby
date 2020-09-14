package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFoodAllergyDAO;
import com.free4lab.babycheckup.model.ResultFoodAllergy;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultFoodAllergyManager {
    private static ResultFoodAllergyDAO getResultFoodAllergyDAOInstance() {
        return ResultFoodAllergyDAO.getInstance();
    }

    public static void saveResult(ResultFoodAllergy re){
        getResultFoodAllergyDAOInstance().saveResult(re);
    }

    public static List<ResultFoodAllergy> findResultBybid(int bid){
        return getResultFoodAllergyDAOInstance().findResultByBabyid(bid);
    }
    public static ResultFoodAllergy findResultByid(int rid){
        return getResultFoodAllergyDAOInstance().findResultByid(rid);
    }
    public static long countResultByHoid(int hoid) {return getResultFoodAllergyDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFoodAllergyDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
