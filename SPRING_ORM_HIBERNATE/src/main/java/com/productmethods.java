package com;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

public class productmethods implements specification {
	Configuration con=new  Configuration().configure().addAnnotatedClass(productdata.class);
	Configuration mn=new  Configuration().configure().addAnnotatedClass(CustomerData.class);
	@Override
	public productdata search(String ecode) {
		Configuration con=new  Configuration().configure().addAnnotatedClass(productdata.class);
		   SessionFactory context=con.buildSessionFactory();
		   Session context3=context.openSession();
		  productdata c=context3.get(productdata.class,ecode);
		return c;
		
	}
	@Override
	public productdata save(productdata product) {
		Configuration con=new  Configuration().configure().addAnnotatedClass(productdata.class);
		   SessionFactory context=con.buildSessionFactory();
		   Session context3=context.openSession();
		   Transaction tr=context3.beginTransaction();
		      context3.saveOrUpdate(product);
		  	tr.commit();
		  	context3.close();
		  	System.out.println("data save successfully");
		return product;
	
	}
	@Override
	public productdata productdelete(String ecode) {
		Configuration con=new  Configuration().configure().addAnnotatedClass(productdata.class);
		   SessionFactory context=con.buildSessionFactory();
		   Session context3=context.openSession();
		  productdata c=context3.get(productdata.class,ecode);
		  Transaction tr=context3.beginTransaction();
		  context3.delete(c);
		  tr.commit();
		  context3.close();
		  System.out.println("delete suc");
		return c;
	}
	@Override
	public List<productdata> getproduct() {
		Configuration con=new  Configuration().configure().addAnnotatedClass(productdata.class);
		   SessionFactory context=con.buildSessionFactory();
		   Session context3=context.openSession();
		   Criteria cr=context3.createCriteria(productdata.class);
		   List<productdata> products=cr.list();
		   context3.close();
		   return products;
		   
	}
	@Override
	public CustomerData customersave(CustomerData customer) {
		Configuration mn=new  Configuration().configure().addAnnotatedClass(CustomerData.class);
		   SessionFactory context=mn.buildSessionFactory();
		   Session context3=context.openSession();
		   Transaction tr=context3.beginTransaction();
		      context3.saveOrUpdate(customer);
		  	tr.commit();
		  	context3.close();
		  	System.out.println("data save successfully");
		return customer;
		
	}
	public CustomerData search2(String ecode) {
		Configuration con=new  Configuration().configure().addAnnotatedClass(CustomerData.class);
		   SessionFactory context=con.buildSessionFactory();
		   Session context3=context.openSession();
		  CustomerData c=context3.get(CustomerData.class,ecode);
		return c;
		
	}
	@Override
	public com.EmplyoeeData EmplyoeeData(EmplyoeeData emplyoee) {
		Configuration mn=new  Configuration().configure().addAnnotatedClass(EmplyoeeData.class);
		   SessionFactory context=mn.buildSessionFactory();
		   Session context3=context.openSession();
		   Transaction tr=context3.beginTransaction();
		      context3.saveOrUpdate(emplyoee);
		  	tr.commit();
		  	context3.close();
		  	System.out.println("data save successfully");
		return emplyoee;
	}
	@Override
	public int  count() {
		
          
          Configuration con = new Configuration().configure().addAnnotatedClass(productdata.class);
          SessionFactory context = con.buildSessionFactory();
          Session context3 = context.openSession();  

          // Step 2: Write the HQL query for counting the rows
          String hql = "SELECT COUNT(*) FROM productdata";  // This query will count the number of rows in productdata

          // Step 3: Create the query object and specify Long.class since COUNT returns a Long value
          Query<Long> query = context3.createQuery(hql, Long.class);  // Use Long.class because COUNT returns a Long

          // Step 4: Execute the query and retrieve the result (which is a Long)
          Long result = query.getSingleResult();  // Executes the query and gets the count (as a Long)

          // Step 5: Commit the transaction (good practice, though not necessary for SELECT queries)
          Transaction tr = context3.beginTransaction();
          tr.commit();

          // Step 6: Return the result as an int (convert from Long to int)
          return result.intValue();  // Convert Long to int
         
	}
	@Override
	public int emplyoeecount() {
		  Configuration con = new Configuration().configure().addAnnotatedClass(EmplyoeeData.class);
          SessionFactory context = con.buildSessionFactory();
          Session context3 = context.openSession();  

          // Step 2: Write the HQL query for counting the rows
          String hql = "SELECT COUNT(*) FROM  EmplyoeeData";  // This query will count the number of rows in productdata

          // Step 3: Create the query object and specify Long.class since COUNT returns a Long value
          Query<Long> query = context3.createQuery(hql, Long.class);  // Use Long.class because COUNT returns a Long

          // Step 4: Execute the query and retrieve the result (which is a Long)
          Long result = query.getSingleResult();  // Executes the query and gets the count (as a Long)

          // Step 5: Commit the transaction (good practice, though not necessary for SELECT queries)
          Transaction tr = context3.beginTransaction();
          tr.commit();

          // Step 6: Return the result as an int (convert from Long to int)
          return result.intValue();
	}
	@Override
	public DeliverInformation Deliverinfo(DeliverInformation deliver) {
	       Configuration con=new Configuration().configure().addAnnotatedClass(DeliverInformation.class);
	       SessionFactory context=con.buildSessionFactory();
	       Session context3=context.openSession();
	      Transaction tr=context3.beginTransaction();
	      context3.saveOrUpdate(deliver);
	      tr.commit();
	      context3.close();
	      
				return deliver;
	}
	@Override
	public int order() {
		 Configuration con = new Configuration().configure().addAnnotatedClass(DeliverInformation.class);
        SessionFactory context = con.buildSessionFactory();
        Session context3 = context.openSession();  

        // Step 2: Write the HQL query for counting the rows
        String hql = "SELECT COUNT(*) FROM DeliverInformation";  // This query will count the number of rows in productdata

        // Step 3: Create the query object and specify Long.class since COUNT returns a Long value
        Query<Long> query = context3.createQuery(hql, Long.class);  // Use Long.class because COUNT returns a Long

        // Step 4: Execute the query and retrieve the result (which is a Long)
        Long result = query.getSingleResult();  // Executes the query and gets the count (as a Long)

        // Step 5: Commit the transaction (good practice, though not necessary for SELECT queries)
        Transaction tr = context3.beginTransaction();
        tr.commit();

        // Step 6: Return the result as an int (convert from Long to int)
        return result.intValue();  // Convert Long to int

	}
	


}
