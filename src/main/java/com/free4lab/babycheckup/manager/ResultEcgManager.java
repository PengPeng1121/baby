package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultEcgDAO;
import com.free4lab.babycheckup.model.ResultEcg;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultEcgManager {
    private static ResultEcgDAO getResultEcgDAOInstance() {
        return ResultEcgDAO.getInstance();
    }

    public static void saveResult(ResultEcg re){
        getResultEcgDAOInstance().saveResult(re);
    }

    public static List<ResultEcg> findResultBybid(int bid){
        return getResultEcgDAOInstance().findResultByBabyid(bid);
    }
    public static ResultEcg findResultByid(int rid){
        ResultEcg resultEcg = getResultEcgDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultEcg.setECGImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultEcg.getECGImgUrl());

        return resultEcg;
    }
    public static long countResultByHoid(int hoid) {return getResultEcgDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultEcgDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
