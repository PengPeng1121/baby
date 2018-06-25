package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.DDSTQuestionDAO;
import com.free4lab.babycheckup.model.DDSTQuestion;

import java.util.List;

/**
 * Created by yph on 17-6-23.
 */
public class DDSTQuestionManager {

    private static DDSTQuestionDAO getQuestionDAOInstance() {
        return DDSTQuestionDAO.getInstance();
    }

    public static List<DDSTQuestion> findQuestions(int monthAge,int type) {
        return getQuestionDAOInstance().findQuestionsByMonthAgeAndType(monthAge,type);
    }

    public static List<DDSTQuestion> findQuestions(String monthAge) {
        return getQuestionDAOInstance().findQuestionsByMonthAge(monthAge);
    }
}
