package com;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;




@Controller
public class searchservlet2 {
    productmethods m= new productmethods();
    @RequestMapping("/verification")
    public void  productsave(@RequestParam("a1") String customerid,@RequestParam("a2") String password,@RequestParam("a3") String select,HttpServletResponse response) throws IOException {
        	if(select.equals("EMPLOYEE")) {
        		 Configuration con = new Configuration().configure().addAnnotatedClass(EmplyoeeData.class);
        	        SessionFactory sessionFactory = con.buildSessionFactory();
        	        Session session = sessionFactory.openSession();

        	        
        	        Transaction transaction = null;

        	        try {
        	            // Start a transaction
        	            transaction = session.beginTransaction();

        	            // HQL query with parameters for employee ID and password
        	            String hql = "FROM EmplyoeeData WHERE empid = :customerid and emppassword = :password";
        	            Query<com.EmplyoeeData> query = session.createQuery(hql,EmplyoeeData.class);

        	            // Set query parameters
        	            query.setParameter("customerid", customerid);
        	            query.setParameter("password", password);

        	            // Execute the query and get results
        	            List<com.EmplyoeeData> results = query.getResultList();

        	            // Check if results are not empty
        	            if (results != null && !results.isEmpty()) {
        	                // Commit transaction only if there are results
        	                transaction.commit();
        	                
        	                // Redirect to search.jsp
        	                response.sendRedirect("search.jsp");
        	            } else {
        	                // Handle case when no results are found
        	                PrintWriter out = response.getWriter();
        	                out.println("Please Check Employee ID and Password");
        	            }

        	        } catch (Exception e) {
        	            // Rollback transaction in case of an error
        	            if (transaction != null) {
        	                transaction.rollback();
        	            }
        	            
        	            // Log the exception (you can replace this with a logger in production)
        	            e.printStackTrace();
        	            
        	            // Optionally, send an error message to the user
        	            try {
        	                PrintWriter out = response.getWriter();
        	                out.println("An error occurred, please try again later.");
        	            } catch (IOException ioException) {
        	                ioException.printStackTrace();
        	            }

        	        } finally {
        	            // Ensure session is closed in the finally block
        	            if (session != null && session.isOpen()) {
        	                session.close();
        	            }
        	        }

        		
        		
        		
        	}else if(select.equals("USERS"))
        	{Configuration con = new Configuration().configure().addAnnotatedClass(CustomerData.class);
	        SessionFactory sessionFactory = con.buildSessionFactory();
	        Session session = sessionFactory.openSession();

	      
	        Transaction transaction = null;

	        try {
	            transaction = session.beginTransaction();

	            // HQL query with a parameter
	            String hql = "FROM CustomerData WHERE customerid = :customerid and password=:password";
	            Query<CustomerData> query = session.createQuery(hql,CustomerData.class);
	            query.setParameter("customerid",customerid);
	            query.setParameter("password",password);
	            // Execute the query and get results
	            List<CustomerData> results = query.getResultList();
	            for (CustomerData data : results) {
	                System.out.println(data); // or handle the result as needed
	            }
	            if (results != null && !results.isEmpty()) {
	            	  
	            	transaction.commit();
	            response.sendRedirect("customerinterface.jsp?customerid=" + customerid);
                       
                }else {
                    PrintWriter out=response.getWriter();
                    out.println("Please Check Customerid And Password ");
                }
	        } catch (Exception e) {
	            if (transaction != null) transaction.rollback();
	            e.printStackTrace(); // Handle exception
	        } finally {
	            session.close();
	        }
        		
        		
        		
        		
        	}else if(select.equals("MANAGER")&& password.equals("12345")&& customerid.equals("@Manager1234")){
        		   PrintWriter out=response.getWriter();
        		  response.sendRedirect("managerinterface2.jsp");
        	}
        	else{
        		 PrintWriter out = response.getWriter();
        		    out.println("Please provide an appropriate ");
        	}
        	
          }
    
    
    
    
	 @RequestMapping("/productsave")
     public ModelAndView  productsave(@ModelAttribute("p") productdata product) {
         	productdata nm=m.save(product);
        	System.out.println(nm);
        	ModelAndView mv=new ModelAndView("searchpage.jsp");
        return mv;
           }
	 @RequestMapping("/productsave2")
     public ModelAndView  productsave2(@ModelAttribute("p") productdata product,@RequestParam("ecode") int ecode) {
         	System.out.println(ecode);
         	productdata nm=m.save(product);
        	System.out.println(nm);
        	ModelAndView mv=new ModelAndView("redirect:productall");
        return mv;
           }
	 @RequestMapping("/customersave")
	 public ModelAndView  customersave(@ModelAttribute("p") CustomerData customer) {
	    
	         System.out.println("CustomerData is null");
	    	CustomerData nm=m.customersave(customer);
     	System.out.println(nm);
	     ModelAndView mv=new ModelAndView("response2.jsp");
	 	return mv;    
	 }

	 @RequestMapping("/productdetails")
	 public ModelAndView  productdetails() {
	    
	         System.out.println("CustomerData is null");
	    	int  nm=m.count();
     	System.out.println(nm);
	     ModelAndView mv=new ModelAndView("managerinterface2.jsp");
	     mv.addObject("productcount",nm);
	 	return mv;    
	 }

	 
	 
	 @RequestMapping("/productdelete")
	   public  ModelAndView productdeletedone(@RequestParam("ecode") String ecode) {
       	productdata product=m.productdelete(ecode);
       	System.out.println(product);
       	ModelAndView mv=new ModelAndView();
       	mv.setViewName("delete.jsp");
       	mv.addObject("p",product);
       	return mv;
	
	   }
	 @RequestMapping("/productall")
	   public  ModelAndView productall() {
       List<productdata> product=m.getproduct();
     	ModelAndView mv=new ModelAndView("listjsp.jsp");
     	mv.addObject("product",product);
     	return mv;
	
	   } 
	 
	 
	
	
	         @RequestMapping("/search")
        public  ModelAndView product(@RequestParam("ecode") String ecode) {
            	productdata product=m.search(ecode);
            	System.out.println(product);
            	ModelAndView mv=new ModelAndView();
            	mv.setViewName("searchpage.jsp");
            	mv.addObject("p",product);
            return mv;
              }    @RequestMapping("/searchbyproduct")
              public  ModelAndView product3(@RequestParam("ecode") String ecode) {
              	productdata product=m.search(ecode);
              	System.out.println(product);
              	ModelAndView mv=new ModelAndView();
              	mv.setViewName("response.jsp");
              	mv.addObject("p",product);
              return mv;
                }
	       
	         @RequestMapping("/update")
	         public  ModelAndView productupdateshow(@RequestParam("ecode") String ecode) {
	             	productdata product=m.search(ecode);
	             	System.out.println(product);
	             	ModelAndView mv=new ModelAndView("update.jsp");
	             
	             	mv.addObject("p",product);
	             return mv;
	               }
	         @RequestMapping("/customesearch")
	         public  ModelAndView productsearch(@RequestParam("customerid") String customerid) {
	             	CustomerData product=m.search2(customerid);
	                   System.out.println(product);
	             	ModelAndView mv=new ModelAndView("suceess");
	             
	             	mv.addObject("p",product);
	             return mv;
	               }
	         @RequestMapping("/customerupdate2")
	    	 public ModelAndView  customersave(@ModelAttribute("p") CustomerData customer,@RequestParam("customerid") String customerid) {
	    	    
	    	         System.out.println("CustomerData is null");
	    	    	CustomerData nm=m.customersave(customer);
	         	System.out.println(nm);
	    	     ModelAndView mv=new ModelAndView("response2.jsp");
	    	 	return mv;    
	    	 }
	         @RequestMapping("/customerdata")
	         public  ModelAndView productupdateshow2(@RequestParam("customerid") String customerid) {
	             	CustomerData product=m.search2(customerid);
	             	System.out.println(product);
	             	ModelAndView mv=new ModelAndView("CustomerDashBoard.jsp");
	             
	             	mv.addObject("p",product);
	             return mv;
	               }
	         @RequestMapping("/customerprofile")
	         public  ModelAndView productupdateshow3(@RequestParam("customerid") String customerid) {
	             	CustomerData product=m.search2(customerid);
	             	System.out.println(product);
	             	ModelAndView mv=new ModelAndView("customerprofile.jsp");
	             
	             	mv.addObject("p",product);
	             return mv;
	               }
	         @RequestMapping("/EmplyoeeData")
	    	 public ModelAndView  EmplyoeeData(@ModelAttribute("p") EmplyoeeData emplyoee) {
	    	    
	    	         System.out.println("CustomerData is null");
	    	     EmplyoeeData nm=m.EmplyoeeData(emplyoee);
	         	System.out.println(nm);
	    	     ModelAndView mv=new ModelAndView("response3.jsp");
	    	 	return mv;    
	    	 }
	         @RequestMapping("/Deliverinfo")
	         public ModelAndView EmplyoeeData3(@ModelAttribute("p") DeliverInformation deliver, @RequestParam("customerName") String customername) {
	             
	        
	             DeliverInformation nm = m.Deliverinfo(deliver);
	             
	             // Check if the result is null
	             if (nm != null) {
	                 System.out.println("DeliverInformation saved/updated successfully");
	             } else {
	                 System.out.println("Failed to save/update DeliverInformation");
	             }
	             
	             // Prepare the ModelAndView
	             ModelAndView mv = new ModelAndView();
	             
	             // Add the updated 'DeliverInformation' object to the model (if needed in the view)
	             mv.addObject("deliverInfo", nm);
	             
	             // You need to specify the view name for this ModelAndView (e.g., 'response3.jsp')
	             mv.setViewName("QR.jsp");
	             
	             return mv;
	         }
	         
	        
			
	        	  
	         }
	        
	      

	         
