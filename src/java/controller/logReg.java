/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author ruwan.wedisa
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import model.admin;
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
 * @author
 */
public class logReg {

    public static Session session;

    public static List<login> getLoginStatus(login user) {

        SessionFactory sessionFactory = sessionFactory = new Configuration().configure().buildSessionFactory();
        session = sessionFactory.openSession();
        session.beginTransaction();
        String un = user.getUserName();
        String pw = user.getPassword();
        int id = user.getId();
        int userCategory = user.getUserCategory();
        String SQL_QUERY = "from login where userName='" + un + "' AND password='" + pw + "'";
        List<login> admin = session.createQuery(SQL_QUERY).list();

        session.close();
        return admin;
    }

    public static int registerUserTable(login u, customer k) {

        int i = 0;
        int j = 0;

        u.setUserCategory(2);

        Session session = new Configuration().
                configure().buildSessionFactory().openSession();

        Transaction t = session.beginTransaction();

        i = (Integer) session.save(u);
        k.setId(u.getId());
        if (i > 0) {

            j = (Integer) session.save(k);
        }

        t.commit();
        session.close();

        return i;

    }

    public static int registerUserTableAdminUser(login u, admin k) {

        int i = 0;
        int j = 0;

        u.setUserCategory(1);

        Session session = new Configuration().
                configure().buildSessionFactory().openSession();

        Transaction t = session.beginTransaction();

        i = (Integer) session.save(u);
        k.setId(u.getId());
        if (i > 0) {

            j = (Integer) session.save(k);
        }

        t.commit();
        session.close();

        return i;

    }

}
