package com.loan.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name="user_registration")
@SequenceGenerator(name="user_seq", sequenceName="seq1", initialValue=1, allocationSize=1)
public class UserRegistration {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="user_seq" )
	@Column(name="userid")
	private int userid;
	@Column(name="firstname")
	private String fname;
	@Column(name="middlename")
	private String mname;
	@Column(name="lastname")
	private String lname;
	@Column(name="emailid")
	private String email;
	@Column(name="password")
	private String pwd;
	@Column(name="mobilenumber")
	private String mob;
	@Column(name="nationality")
	private String nationality;
	@Column(name="dob")
	private Date dob;
	@Column(name="gender")
	private String gender;
	
	
	public UserRegistration() {
		
	}
	
	public UserRegistration(int userid, String fname, String mname, String lname, String email, String pwd, String mob,
			String nationality, Date dob, String gender) {
		super();
		this.userid=userid;
		this.fname = fname;
		this.mname = mname;
		this.lname = lname;
		this.email = email;
		this.pwd = pwd;
		this.mob = mob;
		this.nationality = nationality;
		this.dob = dob;
		this.gender = gender;
		
	}

	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}	
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "UserRegistration [userid=" + userid + ", fname=" + fname + ", mname=" + mname + ", lname=" + lname
				+ ", email=" + email + ", pwd=" + pwd + ", mob=" + mob + ", nationality=" + nationality + ", dob=" + dob
				+ ", gender=" + gender + "]";
	}





}
