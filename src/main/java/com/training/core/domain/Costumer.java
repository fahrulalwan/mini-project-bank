package com.training.core.domain;

import java.io.Serializable;
import java.util.Collection;

public class Costumer implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;
	private String alamat;
	private String name;
	private String ttl;
	private Collection<Account> daftaracc;
	private Account account;

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Collection<Account> getDaftaracc() {
		return daftaracc;
	}

	public void setDaftaracc(Collection<Account> daftaracc) {
		this.daftaracc = daftaracc;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getTtl() {
		return ttl;
	}

	public void setTtl(String ttl) {
		this.ttl = ttl;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	@Override
	public String toString() {
		return "Costumer[Name="+getName()+", Alamat="+getAlamat()+", Ttl="+getTtl()+"]";
	}
}