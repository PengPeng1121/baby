package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ResultEarDAO;
import com.free4lab.babycheckup.model.ResultEar;
import com.free4lab.babycheckup.utils.FileUtil;
import org.apache.commons.lang.StringUtils;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class ResultEarManager {
    private static ResultEarDAO getResultEarDAOInstance() {
        return ResultEarDAO.getInstance();
    }

    public static void saveResult(ResultEar re){
        getResultEarDAOInstance().saveResult(re);
    }

    public static List<ResultEar> findResultBybid(int bid){
        return getResultEarDAOInstance().findResultByBabyid(bid);
    }
    public static ResultEar findResultByid(int rid){
        ResultEar resultEar = getResultEarDAOInstance().findResultByid(rid);
        // 拼装url 用虚拟路径
        if(StringUtils.isNotEmpty(resultEar.getEarImgUrlFirst())){
            resultEar.setEarImgUrlFirst(FileUtil.FILE_VIRTUAL_PATH +resultEar.getEarImgUrlFirst());
        }
        if(StringUtils.isNotEmpty(resultEar.getEarImgUrlSecond())){
            resultEar.setEarImgUrlSecond(FileUtil.FILE_VIRTUAL_PATH +resultEar.getEarImgUrlSecond());
        }

        return resultEar;
    }
    public static long countResultByHoid(int hoid) {return getResultEarDAOInstance().countResultByHoid(hoid);}
    public static long countResultByHosIdAndTestId(int hoid,int testId) {return getResultEarDAOInstance().countResultByHosIdAndTestId(hoid,testId);}
}
