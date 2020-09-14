package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Baby;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import java.util.*;
import java.util.logging.Level;

/**
 * Created by yph on 17-6-23.
 */
public class BabyDAO extends AbstractDAO<Baby> {

    private static class BabyDAOSingletonHolder {
        static BabyDAO instance = new BabyDAO();
    }

    public static BabyDAO getInstance() {
        return BabyDAO.BabyDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Baby.class;
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

    public void saveBaby(Baby baby) {
        super.save(baby);
    }

    public Baby updateBaby(Baby baby) {
        return super.update(baby);
    }

    public Baby findBabyByBabyid(int babyid) {
        return super.findById(babyid);
    }

    public long countBabyByHoid(int Hoid) {
        String hoid="hoid";
        return super.countByProperty(hoid,Hoid);}

    public List<Baby> findBabyListBySearch(Map<String, Object> babyParams, Map<String, Object> parentParams, int hoid, Integer testId) {
        String queryString = "";
        try {
            if(testId==1){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyid";
            }else if(testId==2){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result3_6 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==16){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result0_2 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==17){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result50 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==18){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result132 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==19){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultCognize result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==20){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result0_3 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==21){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultDDST result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==22){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultNei result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==23){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultGroup result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==24){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultQiZhi result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==25){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultFeel result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==26){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,Result2016 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyid";
            }else if(testId==27){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultADHD result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==28){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultFeel2020 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==29){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultGroup2020 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==30){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultPhysical result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==31){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultSummary result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==32){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultAllergy result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==33){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBasic1 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==34){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBasic2 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==35){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultQiZhi2020 result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==36){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultTooth result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==37){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultFeed result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            } else if(testId==38){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultPlan result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==39){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBless result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==40){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultRear result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==41){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultEye result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==42){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultEar result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==43){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBMD result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==44){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBlood result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==45){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultMicro result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==46){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBone result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==47){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultUrine result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==48){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultHbs result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==49){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultFastAllergy result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==50){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultFoodAllergy result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else if(testId==51){
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family,ResultBloodType result WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid AND baby.babyid = result.babyId";
            }else{
                queryString= "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid";
            }

            if (hoid != 0) {
                queryString += " AND baby.hoid = " + hoid;
                if(testId==1 || testId==26 ){
                    queryString += " AND result.hoid = " + hoid;
                }else if(testId!=0){
                    queryString += " AND result.hosId = " + hoid;
                }

            }
            if (babyParams != null && babyParams.size() > 0) {
                for (Map.Entry<String, Object> entry : babyParams.entrySet()) {
                    queryString += " AND baby." + entry.getKey() + " = :baby" + entry.getKey();
                }
            }
            if (parentParams != null && parentParams.size() > 0) {
                for (Map.Entry<String, Object> entry : parentParams.entrySet()) {
                    queryString += " AND parent." + entry.getKey() + " = :parent" + entry.getKey();
                }
            }
            //如果testid 为空 不查询测试表
            if(testId!=null){
                if(testId!=0){
                    queryString += " order by  result.time desc";
                }
            }
            Query query = this.getEntityManager().createQuery(queryString);
            if (babyParams != null && babyParams.size() > 0) {
                for (Map.Entry<String, Object> entry : babyParams.entrySet()) {
                    query.setParameter("baby" + entry.getKey(), entry.getValue());
                }
            }
            if (parentParams != null && parentParams.size() > 0) {
                for (Map.Entry<String, Object> entry : parentParams.entrySet()) {
                    query.setParameter("parent" + entry.getKey(), entry.getValue());
                }
            }
            return query.getResultList();
        } catch (Exception e) {
            this.log("sql 语句"+queryString, Level.SEVERE,e);
            this.log("testId   是   ---------："+ testId, Level.SEVERE,e);
            this.log("find baby list by search failed", Level.SEVERE, e);
            return null;
        }
    }

    public List<Baby> findBabyList(Map<String, Object> babyParams, Map<String, Object> parentParams, int hoid) {
        try {
            String queryString = "SELECT DISTINCT baby FROM Baby baby, Parent parent, FamilyRelation family WHERE family.babyid = baby.babyid AND family.parentid = parent.parentid";
            if (hoid != 0) {
                queryString += " AND baby.hoid = " + hoid;
            }
            if (babyParams != null && babyParams.size() > 0) {
                for (Map.Entry<String, Object> entry : babyParams.entrySet()) {
                    queryString += " AND baby." + entry.getKey() + " = :baby" + entry.getKey();
                }
            }
            if (parentParams != null && parentParams.size() > 0) {
                for (Map.Entry<String, Object> entry : parentParams.entrySet()) {
                    queryString += " AND parent." + entry.getKey() + " = :parent" + entry.getKey();
                }
            }
            Query query = this.getEntityManager().createQuery(queryString);
            if (babyParams != null && babyParams.size() > 0) {
                for (Map.Entry<String, Object> entry : babyParams.entrySet()) {
                    query.setParameter("baby" + entry.getKey(), entry.getValue());
                }
            }
            if (parentParams != null && parentParams.size() > 0) {
                for (Map.Entry<String, Object> entry : parentParams.entrySet()) {
                    query.setParameter("parent" + entry.getKey(), entry.getValue());
                }
            }
            return query.getResultList();
        } catch (Exception e) {
            this.log("find baby list by search failed", Level.SEVERE, e);
            return null;
        }
    }

    public List<Baby> findBabyByHoid(int hoid,int page,int pageSize){
        List<Baby> babies = new ArrayList<Baby>();
        try{
            final String queryString = "SELECT model FROM Baby model WHERE model.hoid = :hoid";
            Query query = getEntityManager().createQuery(queryString);
            query.setParameter("hoid", hoid);
            query.setMaxResults(pageSize).setFirstResult((page-1 ) * pageSize);
            babies = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return babies;
    }

    public List<Baby> findAllBabyByHoid(int hoid){
        List<Baby> babies = new ArrayList<Baby>();
        try{
            final String queryString = "SELECT model FROM Baby model WHERE model.hoid = :hoid";
            Query query = getEntityManager().createQuery(queryString);
            query.setParameter("hoid", hoid);
            babies = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return babies;
    }
}
