package com.free4lab.babycheckup.manager;


import com.free4lab.babycheckup.dao.TestInstructionDAO;
import com.free4lab.babycheckup.model.TestInstruction;

import java.util.List;

/**
 * Created by asus on 2018/3/18.
 */
public class TestInstructionManager {

    private static TestInstructionDAO getTestInstructionConfigDAOInstance() {
        return TestInstructionDAO.getInstance();
    }
    public static List<TestInstruction> findInstructionByTestIdAndMonthAge(Integer testId,Integer monthAge){
        if(monthAge>12){
            if(monthAge<15){
                monthAge = 12;
            }else if(monthAge<18){
                monthAge = 15;
            }else if(monthAge<21){
                monthAge = 18;
            }else if(monthAge<24){
                monthAge = 21;
            }else if(monthAge<30){
                monthAge = 24;
            }else if(monthAge<36){
                monthAge = 30;
            }else if(monthAge<42){
                monthAge = 36;
            }else if(monthAge<48){
                monthAge = 42;
            }else if(monthAge<54){
                monthAge = 48;
            }else if(monthAge<60){
                monthAge = 54;
            }else if(monthAge<66){
                monthAge = 60;
            }else if(monthAge<72){
                monthAge = 66;
            }else if(monthAge<84){
                monthAge = 72;
            }else {
                monthAge = 84;
            }
        }
        return getTestInstructionConfigDAOInstance().findInstructionByTestIdAndMonthAge(testId,monthAge);
    }

}
