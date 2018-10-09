package com.training.core.service.impl;

import com.training.core.dao.AccountDao;
import com.training.core.domain.Account;
import com.training.core.service.AccountService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class AccountServiceImpl implements AccountService {

		private AccountDao accountDao;
	
		public void setAccountDao(AccountDao accountDao) {
		  this.accountDao = accountDao;
		}

		@Transactional
		public Account getAccount(Integer id) {
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
		public void removeAccount(Integer id) {
			  accountDao.deleteAccountById(id);
		}

		@Transactional
		public void editAccount(Account account) {
			accountDao.updateAccount(account);
		}
}
