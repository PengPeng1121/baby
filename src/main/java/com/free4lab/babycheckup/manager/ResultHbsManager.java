package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultHbsDAO;
import com.free4lab.babycheckup.model.ResultHbs;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultHbsManager {
    private static ResultHbsDAO getResultHbsDAOInstance() {
        return ResultHbsDAO.getInstance();
    }

    public static void saveResult(ResultHbs re){
        getResultHbsDAOInstance().saveResult(re);
    }

    public static List<ResultHbs> findResultBybid(int bid){
        return getResultHbsDAOInstance().findResultByBabyid(bid);
    }
    public static ResultHbs findResultByid(int rid){
        ResultHbs resultHBs = getResultHbsDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultHBs.setHbsImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultHBs.getHbsImgUrl());
        return resultHBs;
    }
    public static long countResultByHoid(int hoid) {return getResultHbsDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultHbsDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
