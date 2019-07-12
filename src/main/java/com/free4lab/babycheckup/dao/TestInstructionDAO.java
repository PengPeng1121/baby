package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.TestInstruction;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.List;

/**
 * Created by Administrator on 2018/3/18.
 */
public class TestInstructionDAO extends AbstractDAO<TestInstruction> {
    private static class TestInstructionDAOSingletonHolder {
        static TestInstructionDAO instance = new TestInstructionDAO();
    }

    public static TestInstructionDAO getInstance() {
        return TestInstructionDAO.TestInstructionDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return TestInstruction.class;
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


    public List<TestInstruction> findInstructionByTestIdAndMonthAge(Integer testId,Integer monthAge){
        List<TestInstruction> list = findByProperty2("testId",testId,"monthAge",monthAge);
       return list;
    }
}
