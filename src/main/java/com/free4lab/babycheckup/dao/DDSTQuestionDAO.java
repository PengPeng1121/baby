package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.DDSTQuestion;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class DDSTQuestionDAO extends AbstractDAO<DDSTQuestion> {
    private static class ResultDAOSingletonHolder {
        static DDSTQuestionDAO instance = new DDSTQuestionDAO();
    }

    public static DDSTQuestionDAO getInstance() {
        return DDSTQuestionDAO.ResultDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return DDSTQuestion.class;
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

    public List<DDSTQuestion> findQuestionsByMonthAgeAndType(int monthAge,int type) {
        String monthAgeStr="month_age";
        String typeStr="type";
        return super.findByProperty2(monthAgeStr,monthAge,typeStr,type);
    }

    public List<DDSTQuestion> findQuestionsByMonthAge(String monthAge) {
        String monthAgeStr="monthAge";
        return super.findByProperty(monthAgeStr,monthAge);
    }
}
