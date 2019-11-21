package com.loan.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Account {
	@Id
	private String accountno;
	private double balance;
	
	public Account(String accountno, double balance) {
		super();
		this.accountno = accountno;
		this.balance = balance;
	}
	public Account() {
		
	}
	public String getAccountno() {
		return accountno;
	}
	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "Account [accountno=" + accountno + ", balance=" + balance + "]";
	}
	
	
	
	
}
