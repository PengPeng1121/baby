package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.BabyTestRecordDAO;
import com.free4lab.babycheckup.model.BabyTestRecord;

/**
 * Created by yph on 17-6-23.
 */
public class BabyTestRecordManager {

    private static BabyTestRecordDAO getTestResultRecordDAOInstance() {
        return BabyTestRecordDAO.getInstance();
    }

    public static void save(BabyTestRecord record) {
        getTestResultRecordDAOInstance().save(record);
    }


}
