package com;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
@Data
@Entity
@Table(name="project2")
public class productdata {
	  @Id
	    private String ecode;

	    @Override
	public String toString() {
		return "productdata [ecode=" + ecode + ", pname=" + pname + ", price=" + price + ", discount=" + discount + "]";
	}

		@Column(name = "pname", length = 255, nullable = false)
	    private String pname;

	    @Column(name = "price", nullable = false)
	    private int price;

	    @Column(name = "discount", nullable = false)
	    private int discount;

	    // Default constructor
	    public productdata() {
	        super();
	    }

	    // Parameterized constructor
	    public productdata(String ecode, String pname, int price, int discount) {
	        this.ecode = ecode;
	        this.pname = pname;
	        this.price = price;
	        this.discount = discount;
	    }

		public String getEcode() {
			return ecode;
		}

		public void setEcode(String ecode) {
			this.ecode = ecode;
		}

	
		public String getPname() {
			return pname;
		}

		public void setPname(String pname) {
			this.pname = pname;
		}

		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

		public int getDiscount() {
			return discount;
		}

		public void setDiscount(int discount) {
			this.discount = discount;
		}

	    // Getters and Setters (Lombok generates these)

	    // Custom toString() - avoid printing the binary blob data directly
	   
}
