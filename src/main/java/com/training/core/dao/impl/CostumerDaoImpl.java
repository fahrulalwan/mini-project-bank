package com.training.core.dao.impl;

import com.training.core.dao.CostumerDao;
import com.training.core.dao.HibernateBaseDao;
import com.training.core.domain.Costumer;

import java.util.List;

public class CostumerDaoImpl extends HibernateBaseDao implements CostumerDao {

	public Costumer selectCostumerById(Integer costumerId) {
		return (Costumer) getSessionFactory().getCurrentSession()
                .createQuery("from Costumer where id=:id")
                .setParameter("id", costumerId)
                .uniqueResult();
	}

	@SuppressWarnings("unchecked")
	public List<Costumer> selectCostumer() {
		return getSessionFactory().getCurrentSession()
                .createQuery("from Costumer")
                .list();
	}

	public void insertCostumer(Costumer costumer) {
		getSessionFactory().getCurrentSession()
                .save(costumer);
	}
	
	public void deleteCostumerById(Integer costumerId) {
		Costumer costumer = (Costumer) getSessionFactory().getCurrentSession()
                .createQuery("from Costumer where id=:id")
                .setParameter("id", costumerId)
                .uniqueResult();
		getSessionFactory().getCurrentSession().delete(costumer);		
	}
	
	public void updateCostumer(Costumer costumer) {
		getSessionFactory().getCurrentSession()
                .saveOrUpdate(costumer);	
	}
	
}
