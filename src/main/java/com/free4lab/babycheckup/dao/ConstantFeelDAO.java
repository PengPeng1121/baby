package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.ConstantFeel;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;
import org.springframework.util.CollectionUtils;

import java.util.List;

public class ConstantFeelDAO extends AbstractDAO<ConstantFeel> {

    private static class ConstantFeelDAOSingletonHolder {
        static ConstantFeelDAO instance = new ConstantFeelDAO();
    }

    public static ConstantFeelDAO getInstance() {
        return ConstantFeelDAO.ConstantFeelDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return ConstantFeel.class;
    }

    private static final String PU_NAME = "BabyCheckup_PU";

    @Override
    public String getPUName() {
        return PU_NAME;
    }

    @Override
    public IEntityManagerHelper getEntityManagerHelper() {
        return new NoCacheEntityManagerHelper();
    }


    //根据前庭失衡计算
    public ConstantFeel findConstantsByVestibule(Integer value, Integer monthRange){
        List<ConstantFeel> constantFeels = super.findByProperty2("originalVestibuleScore",value,"monthRange",monthRange);
        if(CollectionUtils.isEmpty(constantFeels)){
            return null;
        }
        return constantFeels.get(0);
    }

    //根据触觉防御
    public ConstantFeel findConstantsByTouch(Integer value, Integer monthRange){
        List<ConstantFeel> constantFeels = super.findByProperty2("originalTouchScore",value,"monthRange",monthRange);
        if(CollectionUtils.isEmpty(constantFeels)){
            return null;
        }
        return constantFeels.get(0);
    }

    //根据本体感失调
    public ConstantFeel findConstantsByBody(Integer value, Integer monthRange){
        List<ConstantFeel> constantFeels = super.findByProperty2("originalBodyScore",value,"monthRange",monthRange);
        if(CollectionUtils.isEmpty(constantFeels)){
            return null;
        }
        return constantFeels.get(0);
    }

    //根据学习能力
    public ConstantFeel findConstantsByLearn(Integer value, Integer monthRange){
        List<ConstantFeel> constantFeels = super.findByProperty2("originalLearnScore",value,"monthRange",monthRange);
        if(CollectionUtils.isEmpty(constantFeels)){
            return null;
        }
        return constantFeels.get(0);
    }
}
