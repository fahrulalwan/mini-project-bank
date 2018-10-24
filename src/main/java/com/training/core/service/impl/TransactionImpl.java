package com.training.core.service.impl;

import com.training.core.dao.AccountDao;
import com.training.core.dao.HistoryDao;
import com.training.core.domain.Account;
import com.training.core.domain.History;
import com.training.core.model.Deposit;
import com.training.core.model.Transfer;
import com.training.core.model.Withdraw;
import com.training.core.service.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("Transaction")
public class TransactionImpl implements Transaction {

    @Autowired
    private AccountDao accountDao;

    @Autowired
    private HistoryDao historyDao;

    @Transactional
    public Account simpanUang(Deposit deposit) {

        Integer account_Number = deposit.getAccount_Number();
        Account acc = accountDao.selectAccountByAccount_Number(account_Number);
        acc.setBalance(acc.getBalance() + deposit.getAmount());
        accountDao.updateAccount(acc);

        History createHistory = new History();
        createHistory.setHid(historyDao.countHistory() + 1);
        createHistory.setActivity("Deposit");
        createHistory.setAmount(deposit.getAmount());
        createHistory.setNorek(account_Number);
        createHistory.setTipe(acc.getType());

        historyDao.insertHistory(createHistory);

        return acc;
    }

    @Transactional
    public Account ambilUang(Withdraw withdraw) {

        Integer norek = withdraw.getAccount_Number();
        Account acc = accountDao.selectAccountByAccount_Number(norek);
        acc.setBalance(acc.getBalance() - withdraw.getAmount());
        accountDao.updateAccount(acc);

        History createHistory = new History();
        createHistory.setHid(historyDao.countHistory() + 1);
        createHistory.setActivity("Withdraw");
        createHistory.setAmount(withdraw.getAmount());
        createHistory.setNorek(norek);
        createHistory.setTipe(acc.getType());

        historyDao.insertHistory(createHistory);

        return acc;
    }

    @Transactional
    public Account kirimUang(Transfer transfer) {

        Integer norek1 = transfer.getAccount_Number();
        Account acc1 = accountDao.selectAccountByAccount_Number(norek1);

        Integer norek2 = transfer.getRekTujuan();
        Account acc2 = accountDao.selectAccountByAccount_Number(norek2);

        if (acc1.getBalance() >= transfer.getAmount() && acc1.getBalance() >= 50000) {

            acc1.setBalance(acc1.getBalance() - transfer.getAmount());
            acc2.setBalance(acc2.getBalance() + transfer.getAmount());

        } else {
            System.out.println("Insufficient Fund");
        }
        accountDao.updateAccount(acc1);
        accountDao.updateAccount(acc2);

        History createHistory = new History();

        createHistory.setHid(historyDao.countHistory() + 1);
        createHistory.setActivity("Transfer");
        createHistory.setAmount(transfer.getAmount());
        createHistory.setNorek(norek1);
        createHistory.setTipe(acc1.getType());
        createHistory.setRekTujuan(norek2);

        historyDao.insertHistory(createHistory);
        return acc1;
    }



}