package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultFastAllergyDAO;
import com.free4lab.babycheckup.model.ResultFastAllergy;
import com.free4lab.babycheckup.utils.FileUtil;

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
        ResultFastAllergy resultFastAllergy = getResultFastAllergyDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultFastAllergy.setFastAllergyImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultFastAllergy.getFastAllergyImgUrl());
        return resultFastAllergy;
    }
    public static long countResultByHoid(int hoid) {return getResultFastAllergyDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultFastAllergyDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultFastAllergyDAOInstance().deleteResult(id);
    }
}
