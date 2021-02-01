package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBMDDAO;
import com.free4lab.babycheckup.model.ResultBMD;
import com.free4lab.babycheckup.utils.FileUtil;
import org.apache.commons.lang.StringUtils;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBMDManager {
    private static ResultBMDDAO getResultBMDDAOInstance() {
        return ResultBMDDAO.getInstance();
    }

    public static void saveResult(ResultBMD re){
        getResultBMDDAOInstance().saveResult(re);
    }

    public static List<ResultBMD> findResultBybid(int bid){
        return getResultBMDDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBMD findResultByid(int rid){
        ResultBMD resultBMD = getResultBMDDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        if(StringUtils.isNotEmpty(resultBMD.getBmdImgUrl())){
            resultBMD.setBmdImgUrl(FileUtil.FILE_VIRTUAL_PATH + resultBMD.getBmdImgUrl());
        }

        return resultBMD;
    }
    public static long countResultByHoid(int hoid) {return getResultBMDDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBMDDAOInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static void deleteResult(int id){
        getResultBMDDAOInstance().deleteResult(id);
    }
}
