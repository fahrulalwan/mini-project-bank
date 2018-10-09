package com.training.core.domain;

import java.io.Serializable;

public class Accountid implements Serializable {
    private static final long serialVersionUID = -3674022336529310738L;
    private Integer acid;

    public Accountid() {
    }

    public Accountid(Integer acid) {
        this.acid = acid;
    }

    public Integer getAcid() {
        return acid;
    }

    public void setAcid(Integer acid) {
        this.acid = acid;
    }
}