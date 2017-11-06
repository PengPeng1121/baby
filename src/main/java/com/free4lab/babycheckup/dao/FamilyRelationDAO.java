package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.FamilyRelation;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.List;

public class FamilyRelationDAO extends AbstractDAO<FamilyRelation> {

    private static class FamilyRelationDAOSingletonHolder {
        static FamilyRelationDAO instance = new FamilyRelationDAO();
    }

    public static FamilyRelationDAO getInstance() {
        return FamilyRelationDAO.FamilyRelationDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return FamilyRelation.class;
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

    public void saveFamilyRelation(FamilyRelation familyRelation) {
        super.save(familyRelation);
    }

    public FamilyRelation updateFamilyRelation(FamilyRelation familyRelation) {
        return super.update(familyRelation);
    }

    public FamilyRelation findFamilyRelationByBabyAndRelation(Baby baby, String relation) {
        List<FamilyRelation> familyRelationList =  super.findByProperty2("babyid", baby.getBabyid(), "relation", relation);
        if(familyRelationList != null && familyRelationList.size() == 1) {
            return familyRelationList.get(0);
        } else {
            return null;
        }
    }

}
