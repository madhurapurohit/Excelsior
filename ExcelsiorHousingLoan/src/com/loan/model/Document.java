package com.loan.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Document_Details")
public class Document {

	@Id
	private int userid;
	private String pan;
	private String aadhar;
	private String voterid;
	private String docpath;
	
	
	public Document() {
		super();
	}


	public Document(int userid, String pan, String aadhar, String voterid, String docpath) {
		super();
		this.userid = userid;
		this.pan = pan;
		this.aadhar = aadhar;
		this.voterid = voterid;
		this.docpath = docpath;
	}


	public double getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getPan() {
		return pan;
	}


	public void setPan(String pan) {
		this.pan = pan;
	}


	public String getAadhar() {
		return aadhar;
	}


	public void setAadhar(String aadhar) {
		this.aadhar = aadhar;
	}


	public String getVoterid() {
		return voterid;
	}


	public void setVoterid(String voterid) {
		this.voterid = voterid;
	}


	public String getDocpath() {
		return docpath;
	}


	public void setDocpath(String docpath) {
		this.docpath = docpath;
	}


	@Override
	public String toString() {
		return "Document [userid=" + userid + ", pan=" + pan + ", aadhar=" + aadhar + ", voterid=" + voterid
				+ ", docpath=" + docpath + "]";
	}
	
	
	
	
}
