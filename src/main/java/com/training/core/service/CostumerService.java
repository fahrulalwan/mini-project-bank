package com.training.core.service;

import com.training.core.domain.Costumer;

import java.util.List;

public interface CostumerService {
	public Costumer getCostumer(Integer id);
	public List<Costumer>getCostumer();
	public void insertCostumer(Costumer costumer);
	public void removeCostumer(Integer id);
	public void editCostumer(Costumer costumer);
}
