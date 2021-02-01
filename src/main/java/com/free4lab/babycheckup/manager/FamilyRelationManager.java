package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.FamilyRelationDAO;
import com.free4lab.babycheckup.model.FamilyRelation;
import org.springframework.util.CollectionUtils;

import java.util.List;

/**
 *
 */
public class FamilyRelationManager {

    private static FamilyRelationDAO getDAOInstance() {
        return FamilyRelationDAO.getInstance();
    }


    public static FamilyRelation findByParentId(int parentId) {
        List<FamilyRelation> list = getDAOInstance().findByParentId(parentId);
        if(!CollectionUtils.isEmpty(list)){
            return list.get(0);
        }
        return null;
    }

}
