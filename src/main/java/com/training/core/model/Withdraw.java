package com.training.core.model;

import com.training.core.domain.Account;

public class Withdraw {
    private Integer cid;
    private String tipe;
    private Integer amount;
    private Integer norek;
    private String nama;
    private Account account;


    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public Integer getNorek() {
        return norek;
    }

    public void setNorek(Integer norek) {
        this.norek = norek;
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