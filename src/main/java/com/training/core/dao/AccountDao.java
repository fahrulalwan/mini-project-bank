package com.training.core.dao;

import java.util.List;

import com.training.core.domain.Account;

public interface AccountDao {
	  Account selectAccountById(String accountId);
	  List<Account> selectAccount();
	  void insertAccount(Account account);
	  void deleteAccountById(String accountId);
	  void updateAccount(Account account);
} 
