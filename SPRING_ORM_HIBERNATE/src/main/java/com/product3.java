package com;

import java.sql.Blob;

import javax.persistence.Entity;

import javax.persistence.Id;

import lombok.Data;
@Data
@Entity
public class product3 {
  @Id
	private int code;
  private  String name;
  private String price;
  private Blob picture;
public product3(int code, String name, String price) {
	super();
	this.code = code;
	this.name = name;
	this.price = price;
}
public int getCode() {
	return code;
}
@Override
public String toString() {
	return "product3 [code=" + code + ", name=" + name + ", price=" + price + "]";
}
public void setCode(int code) {
	this.code = code;
}
public String getName() {
	return name;
}
public product3() {
	super();
}
public void setName(String name) {
	this.name = name;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
}
