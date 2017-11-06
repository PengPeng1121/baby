package com.free4lab.babycheckup.manager;

import com.free4lab.babycheckup.dao.AccountDAO;
import com.free4lab.babycheckup.dao.UserDAO;
import com.free4lab.babycheckup.model.Account;
import com.free4lab.babycheckup.model.User;

import java.util.List;

/**
 * Created by yph on 17-6-23.
 */
public class AccountManager {

    private static AccountDAO getAccountDAOInstance() {
        return AccountDAO.getInstance();
    }
    private static UserDAO getUserDAOInstance() {
        return UserDAO.getInstance();
    }

    public static User login(String tel, String psw) {
        List<Account> accountList = getAccountDAOInstance().findAccountListByTel(tel);
        if(accountList.size() == 1) {
            if(accountList.get(0).getPsw().equals(psw)) {
                return getUserDAOInstance().findUserByUserid(accountList.get(0).getUserid());
            }
        }
        return null;
    }

    public static void save(User user, String PSW) {
        Account account = new Account();
        getUserDAOInstance().saveUser(user);
        account.setUserid(user.getUserid());
        account.setTel(user.getTel());
        account.setPsw(PSW);
        getAccountDAOInstance().saveAccount(account);
    }

    public static void delete(int userid) {
        getUserDAOInstance().deleteUser(userid);
        getAccountDAOInstance().deleteAccount(userid);
    }

    public static Account changePsw(int userid, String newPsw,String oldPsw) {
        Account account = getAccountDAOInstance().findAccountByUserid(userid);
        if(oldPsw.equals(account.getPsw())){
            account.setPsw(newPsw);
            return getAccountDAOInstance().updateAccount(account);
        }else {
            return null;
        }

    }
    public static Account resetPsw(int userid,String newPSW) {
        Account account = getAccountDAOInstance().findAccountByUserid(userid);
        if(account!=null){
            account.setPsw(newPSW);
            return getAccountDAOInstance().updateAccount(account);
        }else {
            return null;
        }

    }
    public static List<User> findByHoid(int hoid) {
        return getUserDAOInstance().findUserListByHoid(hoid);
    }

    public static User cancelAdmin(int uid){
        User user = getUserDAOInstance().findUserByUserid(uid);
        Byte notAdmin = 0;
        user.setAuthority(notAdmin);
        getUserDAOInstance().updateUser(user);
        return user;
    }
    public static User setAdmin(int uid){
        User user = getUserDAOInstance().findUserByUserid(uid);
        Byte isAdmin = 1;
        user.setAuthority(isAdmin);
        getUserDAOInstance().updateUser(user);
        return user;
    }
//号码存在即返回true，不存在返回false
    public static Boolean findtel(String tel){
        List<User> users = getUserDAOInstance().findTelExisit(tel);
        if(users.size() != 0){
            return true;
        }else {
            return false;
        }
    }
}
