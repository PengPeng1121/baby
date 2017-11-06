package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.HospitalDAO;
import com.free4lab.babycheckup.model.Hospital;

/**
 * Created by yph on 17-6-23.
 */
public class HospitalManager {

    private static HospitalDAO getHospitalDAOInstance() {
        return HospitalDAO.getInstance();
    }

    public static void save(Hospital hospital) {
        getHospitalDAOInstance().saveHospital(hospital);
    }

    public static Hospital update(Hospital hospital) {
        return getHospitalDAOInstance().updateHospital(hospital);
    }

    public static Hospital findByHoid(int hoid) {
        return getHospitalDAOInstance().findHospitalByHoid(hoid);
    }
    public static Hospital findHospitalByIdString(String id){
        return getHospitalDAOInstance().findHospitalByidString(id);
    }
}
