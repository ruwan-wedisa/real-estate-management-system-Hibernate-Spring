/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import model.admin;
import model.customer;
import model.login;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import model.ads;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ruwan.wedisa
 */
public class sellAdd {
    public static Session session ;
        public static int postAddSell(ads u,login k) {
        
        int i = 0;


        //u.setUserCategory(2);
        
        Session session = new Configuration().
                configure().buildSessionFactory().openSession();

        Transaction t = session.beginTransaction();
        u.setImagename("2.jpg");
        u.setUn("dasd");
      
        k.setId(u.getId());

        i = (Integer) session.save(u);
        t.commit();
        session.close();

        return i;
        
    }
    
}
