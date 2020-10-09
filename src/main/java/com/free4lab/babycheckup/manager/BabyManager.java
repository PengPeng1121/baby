package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.BabyDAO;
import com.free4lab.babycheckup.dao.BabySchemaDAO;
import com.free4lab.babycheckup.dao.FamilyRelationDAO;
import com.free4lab.babycheckup.dao.ParentDAO;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.BabySchema;
import com.free4lab.babycheckup.model.FamilyRelation;
import com.free4lab.babycheckup.model.Parent;

import java.util.*;

/**
 * Created by yph on 17-6-23.
 */
public class BabyManager {

    private static BabyDAO getBabyDAOInstance() {
        return BabyDAO.getInstance();
    }
    private static ParentDAO getParentDAOInstance() {
        return ParentDAO.getInstance();
    }
    private static FamilyRelationDAO getFamilyRelationDAOInstance() {
        return FamilyRelationDAO.getInstance();
    }
    private static BabySchemaDAO getBabySchemaDAOInstance() {
        return BabySchemaDAO.getInstance();
    }

    public static void save(Baby baby, Parent father, Parent mother) {
        getBabyDAOInstance().saveBaby(baby);
        getParentDAOInstance().saveParent(father);
        getParentDAOInstance().saveParent(mother);
        FamilyRelation fatherFamilyRelation = new FamilyRelation();
        fatherFamilyRelation.setBabyid(baby.getBabyid());
        fatherFamilyRelation.setParentid(father.getParentid());
        fatherFamilyRelation.setRelation("父亲");
        getFamilyRelationDAOInstance().saveFamilyRelation(fatherFamilyRelation);
        FamilyRelation motherFamilyRelation = new FamilyRelation();
        motherFamilyRelation.setBabyid(baby.getBabyid());
        motherFamilyRelation.setParentid(mother.getParentid());
        motherFamilyRelation.setRelation("母亲");
        getFamilyRelationDAOInstance().saveFamilyRelation(motherFamilyRelation);
    }

    public static void saveBabyAndFather(Baby baby, Parent father) {
        getBabyDAOInstance().saveBaby(baby);
        getParentDAOInstance().saveParent(father);
        FamilyRelation fatherFamilyRelation = new FamilyRelation();
        fatherFamilyRelation.setBabyid(baby.getBabyid());
        fatherFamilyRelation.setParentid(father.getParentid());
        fatherFamilyRelation.setRelation("父亲");
        getFamilyRelationDAOInstance().saveFamilyRelation(fatherFamilyRelation);
    }

    public static void saveBabyAndMother(Baby baby, Parent mother) {
        getBabyDAOInstance().saveBaby(baby);
        getParentDAOInstance().saveParent(mother);
        FamilyRelation motherFamilyRelation = new FamilyRelation();
        motherFamilyRelation.setBabyid(baby.getBabyid());
        motherFamilyRelation.setParentid(mother.getParentid());
        motherFamilyRelation.setRelation("母亲");
        getFamilyRelationDAOInstance().saveFamilyRelation(motherFamilyRelation);
    }

    public static Baby findById(int babyid) {
        Baby baby = getBabyDAOInstance().findBabyByBabyid(babyid);
        baby.setFather(getParentByBabyAndRelation(baby, "父亲"));
        baby.setMother(getParentByBabyAndRelation(baby, "母亲"));
        return baby;
    }

    public static List<Baby> findBySearch(String babyName, String parentName, String parentTel, Date birthday, int hoid,int page,int pageSize,boolean unionFlag){
        Map<String, Object> babyParams = new HashMap<String, Object>();
        if(babyName != null && !babyName.equals("")) {
            babyParams.put("name", babyName);
        }
        if(birthday != null ) {
            babyParams.put("birthday", birthday);
        }
        Map<String, Object> parentParams = new HashMap<String, Object>();
        if(parentName != null && !parentName.equals("")) {
            parentParams.put("name", parentName);
        }
        if(parentTel != null && !parentTel.equals("")) {
            parentParams.put("tel", parentTel);
        }
        List<Baby> babyList = new ArrayList<Baby>();
        babyList = getBabyDAOInstance().findBabyList(babyParams, parentParams, hoid,page,pageSize);
        if(unionFlag){
            for(Baby baby : babyList) {
                baby.setFather(getParentByBabyAndRelation(baby, "父亲"));
                baby.setMother(getParentByBabyAndRelation(baby, "母亲"));
            }
        }
        return babyList;
    }

    public static List<Baby> findBySearchWithTestId(String babyName, String parentName, String parentTel, Date birthday, int hoid,Integer testId,int page,int pageSize,boolean unionFlag){
        Map<String, Object> babyParams = new HashMap<String, Object>();
        if(babyName != null && !babyName.equals("")) {
            babyParams.put("name", babyName);
        }
        if(birthday != null ) {
            babyParams.put("birthday", birthday);
        }
        Map<String, Object> parentParams = new HashMap<String, Object>();
        if(parentName != null && !parentName.equals("")) {
            parentParams.put("name", parentName);
        }
        if(parentTel != null && !parentTel.equals("")) {
            parentParams.put("tel", parentTel);
        }
        List<Baby> babyList = new ArrayList<Baby>();
        babyList =  getBabyDAOInstance().findBabyListBySearch(babyParams, parentParams, hoid,testId,page,pageSize);
        if(unionFlag){
            for(Baby baby : babyList) {
                baby.setFather(getParentByBabyAndRelation(baby, "父亲"));
                baby.setMother(getParentByBabyAndRelation(baby, "母亲"));
            }
        }
        return babyList;
    }

    private static Parent getParentByBabyAndRelation(Baby baby, String relation) {
        FamilyRelation familyRelation = getFamilyRelationDAOInstance().findFamilyRelationByBabyAndRelation(baby, relation);
        return getParentDAOInstance().findParentByParentid(familyRelation.getParentid());
    }

    public static BabySchema findBsByHoid(int hoid){
        return getBabySchemaDAOInstance().findSchemaByHoid(hoid);
    }
    public static void updateBabySchema(BabySchema bs){ getBabySchemaDAOInstance().updateBabySchema(bs);}
    public static void saveBabySchema(BabySchema bs){ getBabySchemaDAOInstance().saveBabySchema(bs);}
    public static long countBabyByHoid(int hoid) {return getBabyDAOInstance().countBabyByHoid(hoid);}

    public static List<Baby> findAllBaby(int hoid,int page,int pagesize){
        List<Baby> babyList = getBabyDAOInstance().findBabyByHoid(hoid,page,pagesize);
        return babyList;
    }

    public static int findallBabyNumber(int hoid){
        List<Baby> babyList = getBabyDAOInstance().findAllBabyByHoid(hoid);
        return babyList.size();
    }

    public static void update(Baby baby, Parent father, Parent mother) {
        getBabyDAOInstance().update(baby);
        if(father!=null){
            getParentDAOInstance().update(father);
        }
        if(mother!=null){
            getParentDAOInstance().update(mother);
        }

    }
}
