package com.bldbank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;

@Entity
@Table(name="donordetails")
public class DonorDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="DONORID")
	private int donorId;
	@Column(name="DONORNAME")
	@NotNull
	private String donorName;
	@Column(name="HOSPITALNAME")
	@NotNull
	private String hospitalName;
	@Column(name="MOBILENO")
	@NotNull
	//@Size(min=10)
	private long mobileNumber;
	@Column(name="GENDER")
	private String gender;
	@Column(name="EMAIL")
	@NotNull
	@Email(message = "Please enter a valid e-mail address")
	private String email;
	@Column(name="BLOODGROUP")
	private String bloodGroup;
	@Column(name="UNITS")
	@NotNull
	@NumberFormat
	private int units;
	@Column(name="ADDRESS")
	@NotNull
	private String address;
	
	public DonorDetails() {}
	
	public int getDonorId() {
		return donorId;
	}
	public void setDonorId(int donorId) {
		this.donorId = donorId;
	}
	public String getDonorName() {
		return donorName;
	}
	public void setDonorName(String donorName) {
		this.donorName = donorName;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public int getUnits() {
		return units;
	}
	public void setUnits(int units) {
		this.units = units;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
