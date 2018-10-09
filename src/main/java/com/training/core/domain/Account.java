package com.training.core.domain;

import java.io.Serializable;

public class Account implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;
    private Integer cid;
    private String name;
    private String tipe;
    private Integer balance;
    private Integer norek;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getTipe() {
        return tipe;
    }


    public void setTipe(String tipe) {
        this.tipe = tipe;
    }


    public double getBalance() {
        return balance;
    }


    public void setBalance(Integer balance) {
        this.balance = balance;
    }


    public int getNorek() {
        return norek;
    }


    public void setNorek(Integer norek) {
        this.norek = norek;
    }


    @Override
    public String toString() {
        return "Account[Name=" + getName() + ", Type=" + getTipe() + ", NoRek=" + getNorek() + ", Balance=" + getBalance() + "]";
    }
}