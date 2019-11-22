package com.loan.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Income")
public class Income {

	@Id
	private int userid;
	private String propertyloc;
	private String propertyname;
	private double propertyvalue;
	private String employementtype;
	private String orgtype;
	private String employername;
	private double monthlyincome;
	
	
	public Income() {
		
	}
	
	
	public Income(int userid, String propertyloc, String propertyname, double propertyvalue, String employementtype,
			String orgtype, String employername, double monthlyincome) {
		super();
		this.userid = userid;
		this.propertyloc = propertyloc;
		this.propertyname = propertyname;
		this.propertyvalue = propertyvalue;
		this.employementtype = employementtype;
		this.orgtype = orgtype;
		this.employername = employername;
		this.monthlyincome = monthlyincome;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getPropertyloc() {
		return propertyloc;
	}
	public void setPropertyloc(String propertyloc) {
		this.propertyloc = propertyloc;
	}
	public String getPropertyname() {
		return propertyname;
	}
	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}
	public double getPropertyvalue() {
		return propertyvalue;
	}
	public void setPropertyvalue(double propertyvalue) {
		this.propertyvalue = propertyvalue;
	}
	public String getEmployementtype() {
		return employementtype;
	}
	public void setEmployementtype(String employementtype) {
		this.employementtype = employementtype;
	}
	public String getOrgtype() {
		return orgtype;
	}
	public void setOrgtype(String orgtype) {
		this.orgtype = orgtype;
	}
	public String getEmployername() {
		return employername;
	}
	public void setEmployername(String employername) {
		this.employername = employername;
	}
	public double getMonthlyincome() {
		return monthlyincome;
	}
	public void setMonthlyincome(double monthlyincome) {
		this.monthlyincome = monthlyincome;
	}


	@Override
	public String toString() {
		return "Income [userid=" + userid + ", propertyloc=" + propertyloc + ", propertyname=" + propertyname
				+ ", propertyvalue=" + propertyvalue + ", employementtype=" + employementtype + ", orgtype=" + orgtype
				+ ", employername=" + employername + ", monthlyincome=" + monthlyincome + "]";
	}
	
	
	
	
}
