package com.bldbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name="USERDETAILS")
public class AdminUser {

	@Id
	@Column(name="USRID")
	int UsrId;
	@Column(name="USERNAME")
	String username;
	@Column(name="PASSWORD")
	String password;
	@Column(name="ROLE")
	String role;

	public AdminUser() {
	}

	
	
	public int getUsrId() {
		return UsrId;
	}

	public void setUsrId(int usrId) {
		UsrId = usrId;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}

	

}
