package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.Account;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;

import java.util.List;

/**
 * Created by yph on 17-6-23.
 */
public class AccountDAO extends AbstractDAO<Account> {

    private static class AccountDAOSingletonHolder {
        static AccountDAO instance = new AccountDAO();
    }

    public static AccountDAO getInstance() {
        return AccountDAO.AccountDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return Account.class;
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

    public void saveAccount(Account account) {
        super.save(account);
    }

    public Account updateAccount(Account account) {
        return super.update(account);
    }

    public void deleteAccount(int userid) {
        super.deleteByPrimaryKey(findByProperty("userid", userid).get(0).getId());
    }

    public Account findAccountByUserid(int userid) {
        return super.findByProperty("userid", userid).get(0);
    }

    public List<Account> findAccountListByTel(String tel) {
        return super.findByProperty("tel", tel);
    }

}
