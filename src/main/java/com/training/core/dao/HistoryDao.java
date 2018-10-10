package com.training.core.dao;

import com.training.core.domain.History;

import java.util.List;

public interface HistoryDao {

    History selectHistoryById(Integer historyId);
    List<History> selectHistory();
    void insertHistory(History history);
    void deleteHistoryById(Integer historyId);
    void updateHistory(History history);
    int countHistory();
}
