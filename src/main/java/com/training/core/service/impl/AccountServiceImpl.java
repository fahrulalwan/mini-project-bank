package com.training.core.service.impl;

import com.training.core.dao.AccountDao;
import com.training.core.domain.Account;
import com.training.core.service.AccountService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Random;

public class AccountServiceImpl implements AccountService {

    private AccountDao accountDao;

    private Logger log = LoggerFactory.getLogger(getClass());

    public void setAccountDao(AccountDao accountDao) {
        this.accountDao = accountDao;
    }

    @Transactional
    public Account getAccount(Integer id) {
        return accountDao.selectAccountById(id);
    }

    @Transactional
    public List<Account> getAccount() {
        return accountDao.selectAccount();
    }

    @Transactional
    public void insertAccount(Account account) {

        Random rand = new Random();
        int randomNumber = rand.nextInt(900000000) + 10000000;
        while (accountDao.selectAccountByAccountNumber(randomNumber) != null) {
            randomNumber = rand.nextInt(900000000) + 10000000;

        }
        account.setAccountNumber(randomNumber);
        accountDao.insertAccount(account);
        log.info("Insert Success");
    }

    @Transactional
    public void removeAccount(Integer id) {
        accountDao.deleteAccountById(id);
    }

    @Transactional
    public void editAccount(Account account) {
        accountDao.updateAccount(account);
    }
}
