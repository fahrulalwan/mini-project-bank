package com.training.core.model;

public class Deposit {
    private Integer acid;
    private String tipe;
    private Double amount;

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

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }
}