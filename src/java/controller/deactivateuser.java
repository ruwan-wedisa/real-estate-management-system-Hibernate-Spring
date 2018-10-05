/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static controller.buy.session;
import java.util.List;
import model.ads;
import model.customer;
import model.login;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ruwan.wedisa
 */
public class deactivateuser {

    public static Session session;

    public static void updateActivateAdminDeativate(login u) {
        

        Session session = new Configuration().
        configure().buildSessionFactory().openSession();

        Transaction t = session.beginTransaction();
        u.setUserName("ruwan");
        u.setPassword("ruwan0150");

        u.setUserCategory(1);
        u.setActivated(0);

        session.update(u);
        t.commit();
        session.close();

    }
    
        public static void updateActivateCustomerDeativate(login u) {
        

        Session session = new Configuration().
        configure().buildSessionFactory().openSession();

        Transaction t = session.beginTransaction();
        u.setUserName("gisban");
        u.setPassword("gisban0150");

        u.setUserCategory(2);
        u.setActivated(0);

        session.update(u);
        t.commit();
        session.close();

    }

//    public static List<login> getUserDetailsWithid(login u) {
//        int id = u.getId();
//        SessionFactory sessionFactory = sessionFactory = new Configuration().configure().buildSessionFactory();
//        session = sessionFactory.openSession();
//        session.beginTransaction();
//
//        String SQL_QUERY = "from login where id='" + id + "'";
//        List<login> post = session.createQuery(SQL_QUERY).list();
//
//        session.close();
//        return post;
//    }

}
