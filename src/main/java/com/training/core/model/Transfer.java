package com.training.core.model;

import com.training.core.domain.Account;

public class Transfer {
    private Integer acid;
    private String tipe;
    private Integer norek;
    private Integer amount;
    private Integer rekTujuan;
    private String namaTujuan;
    private Account account;

    public Integer getNorek() {
        return norek;
    }

    public void setNorek(Integer norek) {
        this.norek = norek;
    }

    public String getNamaTujuan() {
        return namaTujuan;
    }

    public void setNamaTujuan(String namaTujuan) {
        this.namaTujuan = namaTujuan;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Integer getRekTujuan() {
        return rekTujuan;
    }

    public void setRekTujuan(Integer rekTujuan) {
        this.rekTujuan = rekTujuan;
    }

    public int getAcid() {
        return acid;
    }

    public void setAcid(int acid) {
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