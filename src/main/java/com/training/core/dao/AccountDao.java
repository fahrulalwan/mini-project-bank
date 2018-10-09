package com.training.core.dao;

import java.util.List;

import com.training.core.domain.Account;
import com.training.core.domain.Accountid;

public interface AccountDao {
	  Account selectAccountById(Accountid accId);
	  List<Account> selectAccount();
	  void insertAccount(Account account);
	  void deleteAccountById(String accountId);
	  void updateAccount(Account account);
} 
