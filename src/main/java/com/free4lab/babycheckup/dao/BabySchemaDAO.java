package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.BabySchema;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class BabySchemaDAO extends AbstractDAO<BabySchema> {
    private static class BabySchemaDAOSingletonHolder {
        static BabySchemaDAO instance = new BabySchemaDAO();
    }

    public static BabySchemaDAO getInstance() {
        return BabySchemaDAO.BabySchemaDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return BabySchema.class;
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

    public void saveBabySchema(BabySchema babySchema) {
        super.save(babySchema);
    }

    public void updateBabySchema(BabySchema babySchema){ super.update(babySchema);

    }

    public BabySchema findSchemaByHoid(int hoid){
        List<BabySchema> listbs = findByProperty("hoid",hoid);
        if(listbs.size() == 1){
            BabySchema bs = listbs.get(0);
            return bs;
        }else {
            return null;
        }
    }
}
