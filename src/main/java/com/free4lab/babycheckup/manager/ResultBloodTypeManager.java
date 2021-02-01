package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBloodTypeDAO;
import com.free4lab.babycheckup.model.ResultBloodType;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBloodTypeManager {
    private static ResultBloodTypeDAO getResultBloodTypeDAOInstance() {
        return ResultBloodTypeDAO.getInstance();
    }

    public static void saveResult(ResultBloodType re){
        getResultBloodTypeDAOInstance().saveResult(re);
    }

    public static List<ResultBloodType> findResultBybid(int bid){
        return getResultBloodTypeDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBloodType findResultByid(int rid){
        ResultBloodType resultBloodType = getResultBloodTypeDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultBloodType.setBloodTypeImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultBloodType.getBloodTypeImgUrl());
        return resultBloodType;
    }
    public static long countResultByHoid(int hoid) {return getResultBloodTypeDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBloodTypeDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultBloodTypeDAOInstance().deleteResult(id);
    }
}
