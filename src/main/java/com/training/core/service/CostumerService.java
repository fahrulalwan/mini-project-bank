package com.training.core.service;

import java.util.List;

import com.training.core.domain.Costumer;

public interface CostumerService {
	public Costumer getCostumer(String id);
	public List<Costumer>getCostumer();
	public void insertCostumer(Costumer costumer);
	public void removeCostumer(String id);
	public void editCostumer(Costumer costumer);
}
