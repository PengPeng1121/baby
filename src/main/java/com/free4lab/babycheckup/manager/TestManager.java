package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.TestDAO;
import com.free4lab.babycheckup.model.Result;
import com.free4lab.babycheckup.model.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/7/11.
 */
public class TestManager {
    private static TestDAO getTestDAOInstance() {
        return TestDAO.getInstance();
    }

    public void saveTest(Test t){
        getTestDAOInstance().saveTest(t);
    }

    public Test findTestByid(int tid){
        return getTestDAOInstance().findTestByid(tid);
    }

    public static List<Result> findResultListBySearch(byte babySex, String birthday1, String birthday2, String checkday1, String checkday2, int dqRange, String dqStart, String dqEnd, int hoid) {
        Date birthdayStart = null;
        Date birthdayEnd = null;
        if(birthday1 != null && !birthday1.equals("")) {
            birthdayStart = parse(birthday1);
            if(birthday2 != null && !birthday2.equals("")) {
                birthdayEnd = parseAndAddOneDay(birthday2);
            } else {
                birthdayEnd = parseAndAddOneDay(birthday1);
            }
        }
        Date checkdayStart = null;
        Date checkdayEnd = null;
        if(checkday1 != null && !checkday1.equals("")) {
            checkdayStart = parse(checkday1);
            if(checkday2 != null && !checkday2.equals("")) {
                checkdayEnd = parseAndAddOneDay(checkday2);
            } else {
                checkdayEnd = parseAndAddOneDay(checkday1);
            }
        }
        double growthMin = -1;
        double growthMax = -1;
        if(dqRange != 0) {
            switch (dqRange) {
                case 1:
                    growthMin = 130;
                    growthMax = -1;
                    break;
                case 2:
                    growthMin = 115;
                    growthMax = 130;
                    break;
                case 3:
                    growthMin = 85;
                    growthMax = 115;
                    break;
                case 4:
                    growthMin = 70;
                    growthMax = 85;
                    break;
                case 5:
                    growthMin = -1;
                    growthMax = 70;
                    break;
            }
        } else if(dqStart != null && !dqStart.equals("") && dqEnd != null && !dqEnd.equals("")) {
            growthMin = Double.parseDouble(dqStart);
            growthMax = Double.parseDouble(dqEnd);
        }
        List<Result> resultList = getTestDAOInstance().findResultListBySearch(1, babySex, birthdayStart, birthdayEnd, checkdayStart, checkdayEnd, growthMin, growthMax, hoid);
        for(Result result : resultList) {
            result.setBaby(BabyManager.findById(result.getBabyid()));
        }
        return resultList;
    }

    private static Date parse(String string) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(string);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static Date parseAndAddOneDay(String string) {
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(string);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.DATE, 1);
            return calendar.getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }
}
