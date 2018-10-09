package com.training.core.domain;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Account implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String cid;
	private String name;
	private String tipe;
	private Double balance;
	private Integer norek;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
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



	public void setBalance(double balance) {
		this.balance = balance;
	}



	public int getNorek() {
		return norek;
	}



	public void setNorek(int norek) {
		this.norek = norek;
	}



	@Override
	public String toString() {
		return "Account[Name="+getName()+", Type="+getTipe() + ", NoRek="+getNorek()+", Balance="+getBalance()+"]";
	}
}