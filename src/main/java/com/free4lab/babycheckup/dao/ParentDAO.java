package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Parent;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

public class ParentDAO extends AbstractDAO<Parent> {

    private static class ParentDAOSingletonHolder {
        static ParentDAO instance = new ParentDAO();
    }

    public static ParentDAO getInstance() {
        return ParentDAO.ParentDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Parent.class;
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

    public void saveParent(Parent parent) {
        super.save(parent);
    }

    public Parent updateParent(Parent parent) {
        return super.update(parent);
    }

    public Parent findParentByParentid(int parentid) {
        return super.findByPrimaryKey(parentid);
    }

}
