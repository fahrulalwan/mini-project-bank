package com.training.core.service.impl;

import com.training.core.dao.AccountDao;
import com.training.core.domain.Account;
import com.training.core.model.Deposit;
import com.training.core.model.Transfer;
import com.training.core.model.Withdraw;
import com.training.core.service.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("Transaction")
public class TransactionImpl implements Transaction {

    private AccountDao accountDao;


    @Transactional
    public Account simpanUang(Deposit deposit) {
        // check apakah sudah pernah ada barang tersebut di gudang tersebut
        Integer accId = deposit.getAcid();
        Account acc = accountDao.selectAccountById(accId);
        acc.setBalance((int) (acc.getBalance() + deposit.getAmount()));
        accountDao.updateAccount(acc);
        return acc;
    }

    @Transactional
    public Account kirimUang(Transfer transfer) {
        Integer accId = transfer.getAcid();
        Account acc = accountDao.selectAccountById(accId);
        if (acc.getBalance() >= transfer.getAmount() && acc.getBalance() >= 50000) {
            acc.setBalance((int) (acc.getBalance() - transfer.getAmount()));
        } else{
            System.out.println("Insufficient Fund");
        }
        accountDao.updateAccount(acc);
        return acc;
    }


    @Transactional
    public Account ambilUang(Withdraw withdraw) {
        Integer accId = withdraw.getAcid();
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