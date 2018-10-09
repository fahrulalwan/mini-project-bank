package com.training.core.service.impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.training.core.dao.CostumerDao;
import com.training.core.domain.Costumer;
import com.training.core.service.CostumerService;

public class CostumerServiceImpl implements CostumerService {

		private CostumerDao costumerDao;
	
		public void setCostumerDao(CostumerDao costumerDao) {
		  this.costumerDao = costumerDao;
		}

		@Transactional
		public Costumer getCostumer(String id) {
			  return costumerDao.selectCostumerById(id);
		}

		@Transactional
		public List<Costumer>getCostumer() {
		  return costumerDao.selectCostumer();
		}
		
		@Transactional
		public void insertCostumer(Costumer costumer) {
			costumerDao.insertCostumer(costumer);
		}

		@Transactional
		public void removeCostumer(String id) {
			  costumerDao.deleteCostumerById(id);
		}

		@Transactional
		public void editCostumer(Costumer costumer) {
			costumerDao.updateCostumer(costumer);
		}
}
