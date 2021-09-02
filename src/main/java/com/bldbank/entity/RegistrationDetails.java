package com.bldbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;




@Entity
@Table(name="USERDETAILS")
public class RegistrationDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="USRID")
	private int usrId;
	
	@Column(name="FIRSTNAME")
	@NotNull
	private String firstName;
	
	@Column(name="LASTNAME")
	@NotNull
	private String lastName;
	
	@Column(name="EMAIL")
	@NotNull
	@Email(message = "Please enter a valid e-mail address")
	private String email;
	
	@Column(name="MOBILENO")
	@NotNull
	@Size(min=5, max=10)
	private String mobileNo;
	
	@Column(name="ADDRESS")
	@NotNull
	private String address;
	
	@Column(name="USERNAME")
	@NotNull
	private String userName;
	
	@Column(name="PASSWORD")
	@NotNull
	@Size(min = 5, max = 15)
	private String password;
	
	public RegistrationDetails() {}

	public int getUsrId() {
		return usrId;
	}

	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "RegistrationDetails [usrId=" + usrId + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", mobileNo=" + mobileNo + ", address=" + address + ", userName=" + userName
				+ ", password=" + password + "]";
	}
	

}
