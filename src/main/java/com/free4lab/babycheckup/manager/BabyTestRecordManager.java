package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.constant.CommonIsEnum;
import com.free4lab.babycheckup.dao.BabyTestRecordDAO;
import com.free4lab.babycheckup.model.BabyTestRecord;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;

/**
 * Created by yph on 17-6-23.
 */
public class BabyTestRecordManager {

    private static BabyTestRecordDAO getTestResultRecordDAOInstance() {
        return BabyTestRecordDAO.getInstance();
    }

    public static void save(BabyTestRecord record) {
        getTestResultRecordDAOInstance().save(record);
    }

    public static void delete(Integer testId,Integer resultId,Integer babyId) {
        try {
            BabyTestRecord record = getTestResultRecordDAOInstance().findByCondition(testId, resultId, babyId);
            if(record != null){
                record.setUpdateTime(new Date());
                record.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
                record.setIsDelete(CommonIsEnum.IS_YES.getCode());
                getTestResultRecordDAOInstance().update(record);
            }
        }catch (Exception e){

        }
    }
}
