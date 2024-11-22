package com;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class EmplyoeeData {
	@Id
   private String empid;
   private String emppassword;
   private String Address;
   private String contactno ;
   private String email;
   private String empname;
public String getEmpname() {
	return empname;
}
public void setEmpname(String empname) {
	this.empname = empname;
}
public String getEmpid() {
	return empid;
}
public void setEmpid(String empid) {
	this.empid = empid;
}
public String getEmppassword() {
	return emppassword;
}
@Override
public String toString() {
	return "EmplyoeeData [empid=" + empid + ", emppassword=" + emppassword + ", Address=" + Address + ", contactno="
			+ contactno + ", email=" + email + ", empname=" + empname + "]";
}
public void setEmppassword(String emppassword) {
	this.emppassword = emppassword;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
}
