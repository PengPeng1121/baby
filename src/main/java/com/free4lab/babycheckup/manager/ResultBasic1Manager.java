package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBasic1DAO;
import com.free4lab.babycheckup.model.ResultBasic1;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBasic1Manager {
    private static ResultBasic1DAO getInstance() {
        return ResultBasic1DAO.getInstance();
    }

    public static void saveResult(ResultBasic1 re){
        getInstance().saveResult(re);
    }

    public static List<ResultBasic1> findResultBybid(int BabyId){
        return getInstance().findResultByBabyid(BabyId);
    }
    public static ResultBasic1 findResultByid(int id){
        // 拼装url 用虚拟路径
        ResultBasic1 resultBasic1 = getInstance().findResultByid(id);
        resultBasic1.setHeadImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultBasic1.getHeadImgUrl());
        return resultBasic1;
    }
    public static long countResultByHoid(int hoid) {return getInstance().countResultByHosId(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getInstance().countResultByHosIdAndTestId(hoid,testId);}

    public static ResultBasic1 update(ResultBasic1 resultBasic1) {
        return getInstance().update(resultBasic1);
    }

}
