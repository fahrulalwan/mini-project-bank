package com.training.core.model;

import com.training.core.domain.Account;

public class Withdraw {
    private Integer acid;
    private String tipe;
    private Integer amount;
    private Integer norek;
    private Account account;

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

    public Integer getAcid() {
        return acid;
    }

    public void setAcid(Integer acid) {
        this.acid = acid;
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