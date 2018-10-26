package com.training.core.dao.impl;

import com.training.core.dao.AccountDao;
import com.training.core.dao.HibernateBaseDao;
import com.training.core.domain.Account;

import java.util.List;

public class AccountDaoImpl extends HibernateBaseDao implements AccountDao {

    public Account selectAccountById(Integer accountId) {
        return (Account) getSessionFactory().getCurrentSession()
                .createQuery("from Account where id=:id")
                .setParameter("id", accountId)
                .uniqueResult();
    }

    public Account selectAccountByAccountNumber(Integer accountNumber) {
        return (Account) getSessionFactory().getCurrentSession()
                .createQuery("from Account where account_Number=:accountNumber")
                .setParameter("accountNumber", accountNumber)
                .uniqueResult();
    }

    @SuppressWarnings("unchecked")
    public List<Account> selectAccount() {
        return getSessionFactory().getCurrentSession()
                .createQuery("from Account")
                .list();
    }

    public void insertAccount(Account account) {
        getSessionFactory().getCurrentSession()
                .save(account);
    }

    public void deleteAccountById(Integer accountId) {
        Account account = (Account) getSessionFactory().getCurrentSession()
                .createQuery("from Account where id=:id")
                .setParameter("id", accountId)
                .uniqueResult();
        getSessionFactory().getCurrentSession().delete(account);
    }

    public void updateAccount(Account account) {
        getSessionFactory().getCurrentSession()
                .saveOrUpdate(account);
    }

}
