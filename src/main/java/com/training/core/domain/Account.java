	package com.training.core.domain;

import java.io.Serializable;

    public class Account implements Serializable {

        private static final long serialVersionUID = 1L;
        private Integer id;
        private Integer cid;
        private String name;
        private String type;
        private Integer balance;
        private Integer accountNumber;



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



        public String getType() {
            return type;
        }



        public void setType(String type) {
            this.type = type;
        }



        public Integer getBalance() {
            return balance;
        }



        public void setBalance(Integer balance) {
            this.balance = balance;
        }



        public Integer getAccountNumber() {
            return accountNumber;
        }



        public void setAccountNumber(Integer accountNumber) {
            this.accountNumber = accountNumber;
        }



        @Override
        public String toString() {
            return "Account[Name=" + getName() + ", Type=" + getType() + ", Account_Number=" + getAccountNumber() + ", Balance=" + getBalance() + "]";
        }
    }