package com.training.core.service;

import com.training.core.domain.Account;
import com.training.core.model.Deposit;
import com.training.core.model.Transfer;
import com.training.core.model.Withdraw;

public interface Transaction {

    public Account simpanUang(Deposit deposit);
    public Account kirimUang(Transfer transfer);
    public Account ambilUang(Withdraw withdraw);
}