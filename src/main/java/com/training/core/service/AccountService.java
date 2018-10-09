package com.training.core.service;

import java.util.List;

import com.training.core.domain.Account;
import com.training.core.domain.Accountid;

public interface AccountService {
	public Account getAccount(Accountid id);
	public List<Account>getAccount();
	public void insertAccount(Account account);
	public void removeAccount(String id);
	public void editAccount(Account account);
}