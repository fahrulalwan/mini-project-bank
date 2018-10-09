package com.training.core.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.training.core.dao.AccountDao;
import com.training.core.domain.Account;
import com.training.core.service.AccountService;

public class AccountServiceImpl implements AccountService {

		private AccountDao accountDao;
	
		public void setAccountDao(AccountDao accountDao) {
		  this.accountDao = accountDao;
		}

		@Transactional
		public Account getAccount(String id) {
			  return accountDao.selectAccountById(id);
		}

		@Transactional
		public List<Account>getAccount() {
		  return accountDao.selectAccount();
		}
		
		@Transactional
		public void insertAccount(Account account) {
			accountDao.insertAccount(account);
		}

		@Transactional
		public void removeAccount(String id) {
			  accountDao.deleteAccountById(id);
		}

		@Transactional
		public void editAccount(Account account) {
			accountDao.updateAccount(account);
		}
}
