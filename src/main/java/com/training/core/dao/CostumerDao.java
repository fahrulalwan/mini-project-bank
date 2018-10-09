package com.training.core.dao;

import com.training.core.domain.Costumer;

import java.util.List;

public interface CostumerDao {
	  Costumer selectCostumerById(Integer costumerId);
	  List<Costumer> selectCostumer();
	  void insertCostumer(Costumer costumer);
	  void deleteCostumerById(Integer costumerId);
	  void updateCostumer(Costumer costumer);
} 
