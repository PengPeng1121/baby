package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.QuestionDAO;
import com.free4lab.babycheckup.model.Question;

import java.util.List;

/**
 * Created by yph on 17-6-23.
 */
public class QuestionManager {

    private static QuestionDAO getQuestionDAOInstance() {
        return QuestionDAO.getInstance();
    }

    public static List<Question> findByTestid(int testid) {
        return getQuestionDAOInstance().findQuestionListByTestid(testid);
    }

    public static List<Integer> findTypeByTestid(int testid) {
        return getQuestionDAOInstance().findQuestionTypeListByTestid(testid);
    }

    public static List<Integer> findMonthByTestid(int testid) {
        return getQuestionDAOInstance().findQuestionMonthListByTestid(testid);
    }

    public static Question findQuestion(int qid){
        List<Question> questions = getQuestionDAOInstance().findByProperty("ordinal",qid);
        if(questions.size() == 1){
            Question question = questions.get(0);
            return question;
        }else {
            return null;
        }
    }

    public static List<Question> findQuestionListByTestIdAndMonth(int testId,int month) {
        return getQuestionDAOInstance().findQuestionListByTestIdAndMonth(testId,month);
    }
}
