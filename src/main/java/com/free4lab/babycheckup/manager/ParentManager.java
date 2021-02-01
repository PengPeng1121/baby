package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.ParentDAO;
import com.free4lab.babycheckup.model.Parent;
import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 *
 */
public class ParentManager {

    private static ParentDAO getDAOInstance() {
        return ParentDAO.getInstance();
    }


    public static Parent find(String tel) {
        List<Parent> parentList = getDAOInstance().findParentByParentTel(tel);
        if(!CollectionUtils.isEmpty(parentList)){
            return parentList.get(0);
        }
        return null;
    }

}
