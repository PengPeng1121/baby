package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.TestResultRecordDAO;
import com.free4lab.babycheckup.model.TestResultRecord;

/**
 * Created by yph on 17-6-23.
 */
public class TestResultRecordManager {

    private static TestResultRecordDAO getTestResultRecordDAOInstance() {
        return TestResultRecordDAO.getInstance();
    }

    public static void save(TestResultRecord record) {
        getTestResultRecordDAOInstance().save(record);
    }

    public static TestResultRecord update(TestResultRecord record) {
        return getTestResultRecordDAOInstance().update(record);
    }

    public static TestResultRecord find(Integer testId,Integer resultId) {
        return getTestResultRecordDAOInstance().find(testId,resultId);
    }

}
