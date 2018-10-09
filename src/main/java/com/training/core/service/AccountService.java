package com.training.core.service;

import com.training.core.domain.Account;

import java.util.List;

public interface AccountService {
	public Account getAccount(Integer id);
	public List<Account>getAccount();
	public void insertAccount(Account account);
	public void removeAccount(Integer id);
	public void editAccount(Account account);
}