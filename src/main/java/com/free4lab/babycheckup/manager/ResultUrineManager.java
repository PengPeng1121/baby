package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultUrineDAO;
import com.free4lab.babycheckup.model.ResultUrine;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultUrineManager {
    private static ResultUrineDAO getResultUrineDAOInstance() {
        return ResultUrineDAO.getInstance();
    }

    public static void saveResult(ResultUrine re){
        getResultUrineDAOInstance().saveResult(re);
    }

    public static List<ResultUrine> findResultBybid(int bid){
        return getResultUrineDAOInstance().findResultByBabyid(bid);
    }
    public static ResultUrine findResultByid(int rid){
        ResultUrine resultUrine = getResultUrineDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultUrine.setUrineImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultUrine.getUrineImgUrl());
        return resultUrine;
    }
    public static long countResultByHoid(int hoid) {return getResultUrineDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {
        return getResultUrineDAOInstance().countResultByHosIdAndTestId(hoid,testId);
    }

    public static void deleteResult(int id){
        getResultUrineDAOInstance().deleteResult(id);
    }

}
