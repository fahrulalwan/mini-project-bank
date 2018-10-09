package com.training.core.dao.impl;

	import java.util.List;

	import com.training.core.dao.HibernateBaseDao;
	import com.training.core.dao.AccountDao;
	import com.training.core.domain.Account;

	public class AccountDaoImpl extends HibernateBaseDao implements AccountDao {

		public Account selectAccountById(String accountId) {
			return (Account) getSessionFactory().getCurrentSession()
	                .createQuery("from Account where id=:id")
	                .setParameter("id", accountId)
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
		
		public void deleteAccountById(String accountId) {
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
