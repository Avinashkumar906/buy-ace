package com.hibernate.util;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;

import com.beans.Product;
import com.beans.CartItem;
import com.beans.Customer;
import com.beans.OrderHistory;

public class HibernateUtil {
	private static final SessionFactory sessionFactory;
	static {
		try {
			sessionFactory = new Configuration()
					.configure("hibernate.cfg.xml")
					.addAnnotatedClass(Customer.class)
					.addAnnotatedClass(Product.class)
					.addAnnotatedClass(OrderHistory.class)
					.addAnnotatedClass(CartItem.class)
					.buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}