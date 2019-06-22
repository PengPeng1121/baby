package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ConstantFeelDAO;
import com.free4lab.babycheckup.model.ConstantFeel;

public class ConstantFeelManager {

    private static ConstantFeelDAO getConstantFeelDAOInstance() {
        return ConstantFeelDAO.getInstance();
    }

    //根据前庭失衡计算--最小值是10
   public static String findConstantsByVestibule(Integer value, Integer monthRange){
       ConstantFeel constantFeel = getConstantFeelDAOInstance().findConstantsByVestibule(value, monthRange);
       if(constantFeel!=null){
           return constantFeel.getStandardScore().toString();
       }
       return "10";
   }

    //根据触觉防御--最小值是10
    public static String findConstantsByTouch(Integer value, Integer monthRange){
        ConstantFeel constantFeel = getConstantFeelDAOInstance().findConstantsByTouch(value, monthRange);
        if(constantFeel!=null){
            return constantFeel.getStandardScore().toString();
        }
        return "10";
    }

    //根据本体感失调--最小值是10
    public static String findConstantsByBody(Integer value, Integer monthRange){
        ConstantFeel constantFeel = getConstantFeelDAOInstance().findConstantsByBody(value, monthRange);
        if(constantFeel!=null){
            return constantFeel.getStandardScore().toString();
        }
        return "10";
    }

    //根据学习能力--最小值是10
    public static String findConstantsByLearn(Integer value, Integer monthRange) {
        ConstantFeel constantFeel = getConstantFeelDAOInstance().findConstantsByLearn(value, monthRange);
        if(constantFeel!=null){
            return constantFeel.getStandardScore().toString();
        }
        return "10";
    }
}
