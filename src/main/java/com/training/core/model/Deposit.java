package com.training.core.model;

import com.training.core.domain.Account;

import java.util.Collection;

public class Deposit {
    private Integer cid;
    private String tipe;
    private Integer amount;
    private Integer account_Number;
    private String name;
    private Collection<Account> colAccount;


    public String getNama() {
        return name;
    }

    public void setNama(String name) {
        this.name = name;
    }

    public Collection<Account> getColAccount() {
        return colAccount;
    }

    public void setColAccount(Collection<Account> colAccount) {
        this.colAccount = colAccount;
    }

    private Account account;

    public Integer getAccount_Number() {
        return account_Number;
    }

    public void setAccount_Number(Integer account_Number) {
        this.account_Number = account_Number;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getTipe() {
        return tipe;
    }

    public void setTipe(String tipe) {
        this.tipe = tipe;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}