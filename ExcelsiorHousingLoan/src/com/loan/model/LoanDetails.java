package com.loan.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Loan_Details")
public class LoanDetails {
	
	@Id
	private int userid;
	private float interestrate;
	private int tenure;
	private int loanamount;
	private int maxloan;
	
	public LoanDetails() {
	}

	public LoanDetails(int userid, float interestrate, int tenure, int loanamount, int maxloan) {
		super();
		this.userid = userid;
		this.interestrate = interestrate;
		this.tenure = tenure;
		this.loanamount = loanamount;
		this.maxloan = maxloan;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public float getInterestrate() {
		return interestrate;
	}

	public void setInterestrate(float interestrate) {
		this.interestrate = interestrate;
	}

	public int getTenure() {
		return tenure;
	}

	public void setTenure(int tenure) {
		this.tenure = tenure;
	}

	public int getLoanamount() {
		return loanamount;
	}

	public void setLoanamount(int loanamount) {
		this.loanamount = loanamount;
	}

	public int getMaxloan() {
		return maxloan;
	}

	public void setMaxloan(int maxloan) {
		this.maxloan = maxloan;
	}

	@Override
	public String toString() {
		return "LoanDetails [userid=" + userid + ", interestrate=" + interestrate + ", tenure=" + tenure
				+ ", loanamount=" + loanamount + ", maxloan=" + maxloan + "]";
	}
	
	
	
	
	
}
