package com.training.core.service.impl;

import com.training.core.domain.Account;
import com.training.core.model.Deposit;
import com.training.core.model.Transfer;
import com.training.core.model.Withdraw;
import com.training.core.service.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TransactionImpl implements Transaction {

    @Autowired
    private GudangDao gudangDao;

    @Autowired
    private StoreDao storeDao;

    @Autowired
    private StockGudangDao stockGudangDao;

    @Autowired
    private StockStoreDao stockStoreDao;

    @Transactional
    public Account simpanUang(Deposit deposit) {
        // check apakah sudah pernah ada barang tersebut di gudang tersebut
        StockGudangId sgId = new StockGudangId(deposit.getId_gudang(), deposit.getId_product());
        StockGudang sg = stockGudangDao.selectById(sgId);
        if (amount==null) {
            // belum ada, buat baru
            sg = new StockGudang();
            sg.setId(sgId);
            sg.setQty(deposit.getQty());
        } else {
            sg.setQty(sg.getQty()+deposit.getQty());
        }
        stockGudangDao.update(sg);
        return sg;
    }

    @Transactional
    public Account kirimUang(Transfer transfer) {
        // TODO Auto-generated method stub
		/StockGudangId sgId = new StockGudangId(transfer.getId_gudang_from(), transfer.getId_product(), transfer.getId_gudang_to());/
        StockGudangId sgId = new StockGudangId(transfer.getId_gudang_from(), transfer.getId_product(), transfer.getId_gudang_to());
        StockGudang sg = stockGudangDao.selectById(sgId);
        StockGudang sgTo = stockGudangDao.selectByIdtransfer(sgId);
        if (sg==null) {
            // belum ada, buat baru
            sg = new StockGudang();
            sg.setId(sgId);
            sg.setQty(transfer.getQty());
        } else {
            sg.setQty(sgTo.getQty()+transfer.getQty());
        }
        stockGudangDao.update(sg);
        return sg;
    }


    @Transactional
    public Account ambilUang(Withdraw withdraw) {
        // TODO Auto-generated method stub
        StockStoreId ssId = new StockStoreId(withdraw.getId_gudang(), withdraw.getId_product(), withdraw.getId_store());
        StockStore ss = stockStoreDao.selectByIdout(ssId);

        StockGudangId sgId = new StockGudangId(withdraw.getId_store(), withdraw.getId_product());
        StockGudang sg = stockGudangDao.selectById(sgId);

        if(ss==null) {
            ss = new StockStore();
            ss.setId(ssId);
            ss.setQty(withdraw.getQty());
        } else {
            sg.setQty(ss.getQty()+withdraw.getQty());
		/ss.setQty(ss.getQty()-sg.getQty());/
        }
        stockStoreDao.update(ss);
        return ss;
    }

}