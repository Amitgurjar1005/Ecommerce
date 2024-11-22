package com;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CreateProductTableData {
    public static void main(String[] args) {
        // Create a SessionFactory
        Configuration con = new Configuration().configure().addAnnotatedClass(product3.class);
        SessionFactory sessionFactory = con.buildSessionFactory();
        Session session = null;
        Transaction transaction = null;

        try {
            // Open a session and begin a transaction
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            // Create a new product data instance
            product3 product = new product3(112, "pname","2233");

            // Save the product
            session.save(product);
            System.out.println("Data stored");

            // Commit the transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback(); // Rollback in case of error
            }
            e.printStackTrace(); // Log the exception
        } finally {
            if (session != null) {
                session.close(); // Ensure session is closed
            }
            sessionFactory.close(); // Close the session factory
        }
    }
}
