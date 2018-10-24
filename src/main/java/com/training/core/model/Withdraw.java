package com.training.core.model;

import com.training.core.domain.Account;

public class Withdraw {
    private Integer cid;
    private String tipe;
    private Integer amount;
    private Integer account_Number;
    private String nama;
    private Account account;


    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

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