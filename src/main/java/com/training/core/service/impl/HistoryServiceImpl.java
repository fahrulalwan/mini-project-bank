package com.training.core.service.impl;

import com.training.core.dao.HistoryDao;
import com.training.core.domain.History;
import com.training.core.service.HistoryService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class HistoryServiceImpl implements HistoryService {

    private HistoryDao historyDao;

    public void setHistoryDao(HistoryDao historyDao) {
        this.historyDao = historyDao;
    }

    @Transactional
    public History getHistory(Integer hid) {
        return historyDao.selectHistoryById(hid);
    }

    @Transactional
    public List<History> getHistory() {
        return historyDao.selectHistory();
    }

    @Transactional
    public void insertHistory(History history) {
        historyDao.insertHistory(history);
    }

    @Transactional
    public void removeHistory(Integer hid) {
        historyDao.deleteHistoryById(hid);
    }

    @Transactional
    public void editHistory(History history) {
        historyDao.updateHistory(history);
    }
}
