package com.training.core.dao;

import com.training.core.domain.Account;

import java.util.List;

public interface AccountDao {

    Account selectAccountById(Integer accountId);
    Account selectAccountByNorek(Integer norek);
    List<Account> selectAccount();
    void insertAccount(Account account);
    void deleteAccountById(Integer accountId);
    void updateAccount(Account account);
} 
