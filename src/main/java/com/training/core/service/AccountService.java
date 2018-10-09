package com.training.core.service;

import java.util.List;

import com.training.core.domain.Account;

public interface AccountService {
	public Account getAccount(String id);
	public List<Account>getAccount();
	public void insertAccount(Account account);
	public void removeAccount(String id);
	public void editAccount(Account account);
}