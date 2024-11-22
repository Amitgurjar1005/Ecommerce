package com;

import java.util.List;

import org.hibernate.query.Query;

public interface specification {
    
     public productdata save(productdata  product);
     public  List<productdata> getproduct();
     public CustomerData customersave(CustomerData  customer);
     public EmplyoeeData EmplyoeeData(EmplyoeeData emplyoee);
	productdata productdelete(String ecode);
	productdata search(String ecode);
	  int  count();
	  int emplyoeecount();
	int order();
	  public  DeliverInformation  Deliverinfo(DeliverInformation deliver);
}
