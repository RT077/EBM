package com.cs.ebm.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Registration {

	@Id
	private String selectuseer;
	private String fullname;
	private String emailid;
	private String password;
	public Registration() {
		// TODO Auto-generated constructor stub
	}
	public Registration(String selectuseer, String fullname, String emailid, String password) {
		super();
		this.selectuseer = selectuseer;
		this.fullname = fullname;
		this.emailid = emailid;
		this.password = password;
	}
	public String getSelectuseer() {
		return selectuseer;
	}
	public void setSelectuseer(String selectuseer) {
		this.selectuseer = selectuseer;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	
}
