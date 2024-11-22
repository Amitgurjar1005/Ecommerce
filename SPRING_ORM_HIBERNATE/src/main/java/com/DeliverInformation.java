package com;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class DeliverInformation {
	
private String customerName;
private String	phoneNumber;
private  String email;
private  String	address; 
@Id
private	String sameAsBilling;
private	String specialInstructions;
public String getCustomerName() {
	return customerName;
}
public void setCustomerName(String customerName) {
	this.customerName = customerName;
}
public String getPhoneNumber() {
	return phoneNumber;
}
public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}
public String getEmail() {
	return email;
}
public DeliverInformation() {
	super();
}
public DeliverInformation(String customerName, String phoneNumber, String email, String address, String sameAsBilling,
		String specialInstructions) {
	super();
	this.customerName = customerName;
	this.phoneNumber = phoneNumber;
	this.email = email;
	this.address = address;
	this.sameAsBilling = sameAsBilling;
	this.specialInstructions = specialInstructions;
}
@Override
public String toString() {
	return "DeliverInformation [customerName=" + customerName + ", phoneNumber=" + phoneNumber + ", email=" + email
			+ ", address=" + address + ", sameAsBilling=" + sameAsBilling + ", specialInstructions="
			+ specialInstructions + "]";
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
public String getSameAsBilling() {
	return sameAsBilling;
}
public void setSameAsBilling(String sameAsBilling) {
	this.sameAsBilling = sameAsBilling;
}
public String getSpecialInstructions() {
	return specialInstructions;
}
public void setSpecialInstructions(String specialInstructions) {
	this.specialInstructions = specialInstructions;
}
}
