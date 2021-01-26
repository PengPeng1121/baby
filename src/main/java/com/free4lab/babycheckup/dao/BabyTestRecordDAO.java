package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.BabyTestRecord;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;
import org.springframework.util.CollectionUtils;

import java.util.List;


/**
 * Created by Administrator on 2018/3/18.
 */
public class BabyTestRecordDAO extends AbstractDAO<BabyTestRecord> {
    private static class BabySchemaDAOSingletonHolder {
        static BabyTestRecordDAO instance = new BabyTestRecordDAO();
    }

    public static BabyTestRecordDAO getInstance() {
        return BabyTestRecordDAO.BabySchemaDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return BabyTestRecord.class;
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

    public void save(BabyTestRecord record) {
        super.save(record);
    }

}
