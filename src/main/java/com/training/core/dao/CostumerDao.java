package com.training.core.dao;

import java.util.List;

import com.training.core.domain.Costumer;

public interface CostumerDao {
	  Costumer selectCostumerById(String costumerId);
	  List<Costumer> selectCostumer();
	  void insertCostumer(Costumer costumer);
	  void deleteCostumerById(String costumerId);
	  void updateCostumer(Costumer costumer);
} 
