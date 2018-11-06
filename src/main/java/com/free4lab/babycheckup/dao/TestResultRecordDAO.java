package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.TestResultRecord;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;
import org.springframework.util.CollectionUtils;

import java.util.List;


/**
 * Created by Administrator on 2018/3/18.
 */
public class TestResultRecordDAO extends AbstractDAO<TestResultRecord> {
    private static class BabySchemaDAOSingletonHolder {
        static TestResultRecordDAO instance = new TestResultRecordDAO();
    }

    public static TestResultRecordDAO getInstance() {
        return TestResultRecordDAO.BabySchemaDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return TestResultRecord.class;
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

    public void save(TestResultRecord record) {
        super.save(record);
    }

    public TestResultRecord find(Integer testId,Integer resultId){
        List<TestResultRecord> list = findByProperty2("testId",testId,"resultId",resultId);
        if(!CollectionUtils.isEmpty(list)){
            TestResultRecord record = list.get(0);
            return record;
        }else {
            return null;
        }
    }

    public TestResultRecord update(TestResultRecord record) {
        return super.update(record);
    }
}
