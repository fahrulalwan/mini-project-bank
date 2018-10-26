package com.training.core.model;

import com.training.core.domain.Account;

public class Transfer {
    private Integer cid;
    private String type;
    private Integer accountNumber;
    private String nama;
    private Integer amount;
    private Integer rekTujuan;
    private String namaTujuan;
    private Account account;

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public Integer getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(Integer norek) {
        this.accountNumber = norek;
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

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

}