package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBloodDAO;
import com.free4lab.babycheckup.model.ResultBlood;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBloodManager {
    private static ResultBloodDAO getResultBloodDAOInstance() {
        return ResultBloodDAO.getInstance();
    }

    public static void saveResult(ResultBlood re){
        getResultBloodDAOInstance().saveResult(re);
    }

    public static List<ResultBlood> findResultBybid(int bid){
        return getResultBloodDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBlood findResultByid(int rid){
        ResultBlood resultBlood = getResultBloodDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultBlood.setBloodImgUrl(FileUtil.FILE_VIRTUAL_PATH + resultBlood.getBloodImgUrl());
        return resultBlood;
    }
    public static long countResultByHoid(int hoid) {return getResultBloodDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBloodDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
