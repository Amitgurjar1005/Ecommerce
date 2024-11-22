package com;

import javax.persistence.Entity;

import javax.persistence.Id;

import lombok.Data;
@Data
@Entity
public class CustomerData {
   	@Id
   	
     private String customerid;
     private String cname;
     private String password;
     private String  email;
     private String address;
     private String  mobileno;
	
     @Override
	public String toString() {
		return "CustomerData [customerid=" + customerid + ", cname=" + cname + ", password=" + password + ", email="
				+ email + ", address=" + address + ", mobileno=" + mobileno + "]";
	}

	public String getCustomerid() {
		return customerid;
	}

	public void setCustomerid(String customerid) {
		this.customerid = customerid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
}
