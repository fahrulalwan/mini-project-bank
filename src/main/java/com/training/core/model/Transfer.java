package com.training.core.model;

import com.training.core.domain.Account;

public class Transfer {
    private Integer acid;
    private String tipe;
    private Integer amount;
    private Integer rekTujuan;
    private String namaTujuan;
    private Account account;

    private objek = new Transfer();

    public String getNamaTujuan(String namaTujuan) {
        return namaTujuan;
    }

    public void setNamaTujuan(String namaTujuan) {
        String fetchNama = account.getName(getRekTujuan().toString());
        namaTujuan = fetchNama;
        this.namaTujuan = namaTujuan;
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