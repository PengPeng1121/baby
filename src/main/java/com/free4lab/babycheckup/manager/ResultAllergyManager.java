package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultAllergyDAO;
import com.free4lab.babycheckup.model.ResultAllergy;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultAllergyManager {
    private static ResultAllergyDAO getInstance() {
        return ResultAllergyDAO.getInstance();
    }

    public static void saveResult(ResultAllergy re){
        getInstance().saveResult(re);
    }

    public static List<ResultAllergy> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultAllergy findResultByid(int id){
        return getInstance().findResultByid(id);
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static ResultAllergy update(ResultAllergy resultAllergy) {
        return getInstance().update(resultAllergy);
    }
}
