package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

/**
 * Created by yph on 17-6-23.
 */
public class HospitalDAO extends AbstractDAO<Hospital> {

    private static class HospitalDAOSingletonHolder {
        static HospitalDAO instance = new HospitalDAO();
    }

    public static HospitalDAO getInstance() {
        return HospitalDAO.HospitalDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Hospital.class;
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

    public void saveHospital(Hospital hospital) {
        super.save(hospital);
    }

    public Hospital updateHospital(Hospital hospital) {
        return super.update(hospital);
    }

    public Hospital findHospitalByHoid(int hoid) {
        return super.findByPrimaryKey(hoid);
    }

    public Hospital findHospitalByidString(String id){
        List<Hospital> hospitals = new ArrayList<Hospital>();
        try {
            final String queryString = "SELECT model FROM Hospital model WHERE model.name = :name";
            Query query = getEntityManager().createQuery(queryString);
            query.setParameter("name", id);
            hospitals = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        if(hospitals.size() == 1){
            return hospitals.get(0);
        }else {
            return null;
        }
    }

}
