package com.training.core.dao.impl;

import com.training.core.dao.HibernateBaseDao;
import com.training.core.dao.HistoryDao;
import com.training.core.domain.History;

import java.util.List;

public class HistoryDaoImpl extends HibernateBaseDao implements HistoryDao {


    public History selectHistoryById(Integer historyId) {
        return (History) getSessionFactory().getCurrentSession()
                .createQuery("from History where hid=:hid")
                .setParameter("hid", historyId)
                .uniqueResult();
    }

    public int countHistory() {
        return getSessionFactory().getCurrentSession()
                .createQuery("from History")
                .list().size();
    }

    @SuppressWarnings("unchecked")
    public List<History> selectHistory() {
        return getSessionFactory().getCurrentSession()
                .createQuery("from History")
                .list();
    }

    public void insertHistory(History history) {
        getSessionFactory().getCurrentSession()
                .save(history);
    }

    public void deleteHistoryById(Integer historyId) {
        History history = (History) getSessionFactory().getCurrentSession()
                .createQuery("from History where hid=:hid")
                .setParameter("hid", historyId)
                .uniqueResult();
        getSessionFactory().getCurrentSession().delete(history);
    }

    public void updateHistory(History history) {
        getSessionFactory().getCurrentSession()
                .saveOrUpdate(history);
    }
}
