package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Question;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import java.util.List;
import java.util.logging.Level;

/**
 * Created by yph on 17-6-29.
 */
public class QuestionDAO extends AbstractDAO<Question> {

    private static class QuestionDAOSingletonHolder {
        static QuestionDAO instance = new QuestionDAO();
    }

    public static QuestionDAO getInstance() {
        return QuestionDAO.QuestionDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Question.class;
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

    public List<Question> findQuestionListByTestid(int testid) {
        return super.findByProperty("testid", testid);
    }

    public List<Integer> findQuestionTypeListByTestid(int testid) {
        try {
            String queryString = "SELECT DISTINCT model.type FROM " + this.getClassName() + " model WHERE model.testid=:testid ORDER BY model.type ASC";
            Query query = this.getEntityManager().createQuery(queryString);
            query.setParameter("testid", testid);
            return query.getResultList();
        } catch (Exception e) {
            this.log("find question type list by testid failed", Level.SEVERE, e);
            return null;
        }
    }

    public List<Integer> findQuestionMonthListByTestid(int testid) {
        try {
            String queryString = "SELECT DISTINCT model.month FROM " + this.getClassName() + " model WHERE model.testid=:testid ORDER BY model.month ASC";
            Query query = this.getEntityManager().createQuery(queryString);
            query.setParameter("testid", testid);
            return query.getResultList();
        } catch (Exception e) {
            this.log("find question month list by testid failed", Level.SEVERE, e);
            return null;
        }
    }

    public List<Question> findQuestionListByTestIdAndMonth(int testId,int month) {
        return super.findByProperty2("testid", testId,"month",month);
    }
}
