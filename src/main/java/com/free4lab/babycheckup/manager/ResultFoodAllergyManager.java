package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFoodAllergyDAO;
import com.free4lab.babycheckup.model.ResultFoodAllergy;
import com.free4lab.babycheckup.utils.FileUtil;

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
        ResultFoodAllergy resultFoodAllergy = getResultFoodAllergyDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultFoodAllergy.setFoodAllergyImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultFoodAllergy.getFoodAllergyImgUrl());

        return resultFoodAllergy;
    }
    public static long countResultByHoid(int hoid) {return getResultFoodAllergyDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFoodAllergyDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultFoodAllergyDAOInstance().deleteResult(id);
    }
}
