package com.buyace.core.hibernate.util;

import org.hibernate.SessionFactory;

import org.hibernate.cfg.Configuration;

import com.buyace.core.beans.Product;
import com.buyace.core.beans.CartItem;
import com.buyace.core.beans.Customer;
import com.buyace.core.beans.OrderHistory;

public class HibernateUtil {
	private static final SessionFactory sessionFactory;
	static {
		System.out.println("creating pool connection.!");
		try {
			sessionFactory = new Configuration()
					.configure()
					.addAnnotatedClass(Customer.class)
					.addAnnotatedClass(Product.class)
					.addAnnotatedClass(OrderHistory.class)
					.addAnnotatedClass(CartItem.class)
					.buildSessionFactory();
		} catch (Throwable ex) {
			ex.printStackTrace();
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}