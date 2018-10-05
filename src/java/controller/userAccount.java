/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.util.List;
import model.admin;
import model.customer;
import model.login;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ruwan.wedisa
 */
public class userAccount {
    
    public static Session session ;
    public static List<admin> getUserDetailsAdmin(admin user) {

        SessionFactory sessionFactory = sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();
        
        String SQL_QUERY = "from admin";
        List<admin> post = session.createQuery(SQL_QUERY).list();
        
        session.close();
        return post;
    }
    public static List<customer> getUserDetailsCustomer(customer user) {

        SessionFactory sessionFactory = sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();
        
        String SQL_QUERY = "from customer";
        List<customer> post = session.createQuery(SQL_QUERY).list();
        
        session.close();
        return post;
    }
    
    public static List<login> getUserDetailsLogin(login user) {

        SessionFactory sessionFactory = sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();
        
        String SQL_QUERY = "from login";
        List<login> post = session.createQuery(SQL_QUERY).list();
        
        session.close();
        return post;
    }
    
}
