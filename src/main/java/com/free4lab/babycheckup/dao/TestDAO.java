package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.Test;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import javax.persistence.TemporalType;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;

/**
 * Created by Administrator on 2017/7/11.
 */
public class TestDAO extends AbstractDAO<Test> {
    private static class TestDAOSingletonHolder {
        static TestDAO instance = new TestDAO();
    }

    public static TestDAO getInstance() {
        return TestDAO.TestDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Test.class;
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

    public void saveTest(Test t) {
        super.save(t);
    }

    public Test findTestByid(int tid){
        Test test = findByPrimaryKey(tid);
        return test;
    }

    public List<Result> findResultListBySearch(int testid, byte babySex, Date birthdayStart, Date birthdayEnd, Date checkdayStart, Date checkdayEnd, double growthMin, double growthMax, int hoid) {
        try {
            String queryString = "SELECT DISTINCT result FROM Result result, Baby baby WHERE result.babyid = baby.babyid AND result.testid = :testid";
            if(hoid != 0) {
                queryString += " AND result.hoid = " + hoid;
            }
            if(babySex != -1) {
                queryString += " AND baby.gender = :babySex";
            }
            if(birthdayStart != null && birthdayEnd != null) {
                queryString += " AND baby.birthday >= :birthdayStart AND baby.birthday < :birthdayEnd";
            }
            if(checkdayStart != null && checkdayEnd != null) {
                queryString += " AND result.time >= :checkdayStart AND result.time < :checkdayEnd";
            }
            if(growthMin > 0) {
                queryString += " AND result.growth >= :growthMin";
            }
            if(growthMax > 0) {
                queryString += " AND result.growth < :growthMax";
            }
            queryString += " ORDER BY result.time DESC";
            Query query = this.getEntityManager().createQuery(queryString);
            query.setParameter("testid", testid);
            if(babySex != -1) {
                query.setParameter("babySex", babySex);
            }
            if(birthdayStart != null && birthdayEnd != null) {
                query.setParameter("birthdayStart", birthdayStart, TemporalType.DATE);
                query.setParameter("birthdayEnd", birthdayEnd, TemporalType.DATE);
            }
            if(checkdayStart != null && checkdayEnd != null) {
                query.setParameter("checkdayStart", checkdayStart, TemporalType.DATE);
                query.setParameter("checkdayEnd", checkdayEnd, TemporalType.DATE);
            }
            if(growthMin > 0) {
                query.setParameter("growthMin", growthMin);
            }
            if(growthMax > 0) {
                query.setParameter("growthMax", growthMax);
            }
            return query.getResultList();
        } catch (Exception e) {
            this.log("find result list by search failed", Level.SEVERE, e);
            return null;
        }
    }

}
