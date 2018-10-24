package com.training.core.domain;

import java.io.Serializable;
import java.util.Collection;

public class Costumer implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer id;
	private String address;
	private String name;
	private Integer id_Number;
	private String mother_Name;
	private String birth_Date;
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId_Number() {
		return id_Number;
	}

	public void setId_Number(Integer id_Number) {
		this.id_Number = id_Number;
	}

	public String getMother_Name() {
		return mother_Name;
	}

	public void setMother_Name(String mother_Name) {
		this.mother_Name = mother_Name;
	}

	public String getBirth_Date() {
		return birth_Date;
	}

	public void setBirth_Date(String birth_Date) {
		this.birth_Date = birth_Date;
	}

	@Override
	public String toString() {
		return "Costumer[Name="+getName()+", NIK="+getId_Number()+", Mother_Name="+getMother_Name()+", Alamat="+getAddress()+", Ttl="+getBirth_Date()+"]";
	}
}