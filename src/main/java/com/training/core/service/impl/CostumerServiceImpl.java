package com.training.core.service.impl;

import com.training.core.dao.CostumerDao;
import com.training.core.domain.Costumer;
import com.training.core.service.CostumerService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class CostumerServiceImpl implements CostumerService {

    private CostumerDao costumerDao;

    public void setCostumerDao(CostumerDao costumerDao) {
        this.costumerDao = costumerDao;
    }

    @Transactional
    public Costumer getCostumer(Integer id) {
        return costumerDao.selectCostumerById(id);
    }

    @Transactional
    public List<Costumer> getCostumer() {
        return costumerDao.selectCostumer();
    }

    @Transactional
    public void insertCostumer(Costumer costumer) {
        costumerDao.insertCostumer(costumer);
    }

    @Transactional
    public void removeCostumer(Integer id) {
        costumerDao.deleteCostumerById(id);
    }

    @Transactional
    public void editCostumer(Costumer costumer) {
        costumerDao.updateCostumer(costumer);
    }
}
