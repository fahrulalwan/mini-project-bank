package com.training.core.service;

import com.training.core.domain.History;

import java.util.List;

public interface HistoryService {

    public History getHistory(Integer id);
    public List<History> getHistory();
    public void insertHistory(History history);
    public void removeHistory(Integer id);
    public void editHistory(History history);

}
