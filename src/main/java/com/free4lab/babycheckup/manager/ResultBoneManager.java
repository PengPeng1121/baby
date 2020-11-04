package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultBoneDAO;
import com.free4lab.babycheckup.model.ResultBone;
import com.free4lab.babycheckup.utils.FileUtil;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultBoneManager {
    private static ResultBoneDAO getResultBoneDAOInstance() {
        return ResultBoneDAO.getInstance();
    }

    public static void saveResult(ResultBone re){
        getResultBoneDAOInstance().saveResult(re);
    }

    public static List<ResultBone> findResultBybid(int bid){
        return getResultBoneDAOInstance().findResultByBabyid(bid);
    }
    public static ResultBone findResultByid(int rid){
        ResultBone resultBone = getResultBoneDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        resultBone.setBoneImgUrl(FileUtil.FILE_VIRTUAL_PATH +resultBone.getBoneImgUrl());

        return resultBone;
    }
    public static long countResultByHoid(int hoid) {return getResultBoneDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultBoneDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
