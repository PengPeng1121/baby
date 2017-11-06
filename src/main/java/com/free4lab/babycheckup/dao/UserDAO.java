package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.User;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;

/**
 * Created by yph on 17-6-23.
 */
public class UserDAO extends AbstractDAO<User> {

    private static class UserDAOSingletonHolder {
        static UserDAO instance = new UserDAO();
    }

    public static UserDAO getInstance() {
        return UserDAO.UserDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return User.class;
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

    public void saveUser(User user) {
        super.save(user);
    }

    public User updateUser(User user) {
        return super.update(user);
    }

    public void deleteUser(int userid) {
        super.deleteByPrimaryKey(userid);
    }

    public User findUserByUserid(int userid) {
        return super.findByPrimaryKey(userid);
    }

    public List<User> findUserListByHoid(int hoid) {
        return super.findByProperty("hoid", hoid);
    }

    public List<Integer> findUserIdListByHoid(int hoid) {
        List<User> userList = super.findByProperty("hoid", hoid);
        List<Integer> userIdList = new ArrayList<Integer>();
        Iterator<User> userListIterator = userList.iterator();
        while (userListIterator.hasNext()) {
            userIdList.add(userListIterator.next().getUserid());
        }
        return userIdList;
    }
    public List<User> findTelExisit(String tel){
        List<User> users = new ArrayList<User>();
        try {
            final String queryString = "SELECT model FROM User model WHERE model.tel = :tel";
            Query query = getEntityManager().createQuery(queryString);
            query.setParameter("tel", tel);
            users = query.getResultList();
        } catch (Exception e) {
            this.log(e.getMessage(), Level.SEVERE, e);
        }
        return users;
    }
}
