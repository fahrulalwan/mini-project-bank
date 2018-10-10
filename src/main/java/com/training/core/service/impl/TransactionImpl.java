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

        Integer norek = deposit.getNorek();
        Account acc = accountDao.selectAccountByNorek(norek);
        acc.setBalance(acc.getBalance() + deposit.getAmount());
        accountDao.updateAccount(acc);

        History createHistory = new History();
        createHistory.setHid(historyDao.countHistory() + 1);
        createHistory.setActivity("Deposit");
        createHistory.setAmount(deposit.getAmount());
        createHistory.setNorek(norek);
        createHistory.setTipe(acc.getTipe());
        createHistory.setBalance(acc.getBalance());

        historyDao.insertHistory(createHistory);
        return acc;
    }

    @Transactional
    public Account kirimUang(Transfer transfer) {

        Integer norek1 = transfer.getNorek();
        Account acc1 = accountDao.selectAccountByNorek(norek1);

        Integer norek2 = transfer.getNorek();
        Account acc2 = accountDao.selectAccountByNorek(norek2);

        if (acc1.getBalance() >= transfer.getAmount() && acc1.getBalance() >= 50000) {
            acc1.setBalance(acc1.getBalance() - transfer.getAmount());
            acc2.setBalance(acc2.getBalance() + transfer.getAmount());

        } else {

            System.out.println("Insufficient Fund");

        }
        accountDao.updateAccount(acc1);
        accountDao.updateAccount(acc2);

        return acc1;
    }


    @Transactional
    public Account ambilUang(Withdraw withdraw) {
        Integer accId = withdraw.getCid();
        Account acc = accountDao.selectAccountById(accId);

        if (acc.getBalance() >= withdraw.getAmount() && acc.getBalance() >= 50000){
            acc.setBalance((int) (acc.getBalance() - withdraw.getAmount()));
        }
        accountDao.updateAccount(acc);
        return acc;
    }

//    @Transactional
//    public Account kirimUang(Transfer transfer) {
//        // TODO Auto-generated method stub
//		/StockGudangId sgId = new StockGudangId(transfer.getId_gudang_from(), transfer.getId_product(), transfer.getId_gudang_to());/
//        StockGudangId sgId = new StockGudangId(transfer.getId_gudang_from(), transfer.getId_product(), transfer.getId_gudang_to());
//        StockGudang sg = stockGudangDao.selectById(sgId);
//        StockGudang sgTo = stockGudangDao.selectByIdtransfer(sgId);
//        if (sg==null) {
//            // belum ada, buat baru
//            sg = new StockGudang();
//            sg.setId(sgId);
//            sg.setQty(transfer.getQty());
//        } else {
//            sg.setQty(sgTo.getQty()+transfer.getQty());
//        }
//        stockGudangDao.update(sg);
//        return sg;
//    }
//
//
//    @Transactional
//    public Account ambilUang(Withdraw withdraw) {
//        // TODO Auto-generated method stub
//        StockStoreId ssId = new StockStoreId(withdraw.getId_gudang(), withdraw.getId_product(), withdraw.getId_store());
//        StockStore ss = stockStoreDao.selectByIdout(ssId);
//
//        StockGudangId sgId = new StockGudangId(withdraw.getId_store(), withdraw.getId_product());
//        StockGudang sg = stockGudangDao.selectById(sgId);
//
//        if(ss==null) {
//            ss = new StockStore();
//            ss.setId(ssId);
//            ss.setQty(withdraw.getQty());
//        } else {
//            sg.setQty(ss.getQty()+withdraw.getQty());
//		/ss.setQty(ss.getQty()-sg.getQty());/
//        }
//        stockStoreDao.update(ss);
//        return ss;
//    }

}