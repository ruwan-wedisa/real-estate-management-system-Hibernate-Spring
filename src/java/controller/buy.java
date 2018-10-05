/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import model.ads;
import model.customer;
import model.login;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


/**
 *
 * @author ruwan.wedisa
 */
public class buy {
    public static Session session ;
    public static List<ads> getSellingDetails(ads ad) {

        SessionFactory sessionFactory = sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();
        
        String SQL_QUERY = "from ads";
        List<ads> post = session.createQuery(SQL_QUERY).list();
        
        session.close();
        return post;
    }
    
}
