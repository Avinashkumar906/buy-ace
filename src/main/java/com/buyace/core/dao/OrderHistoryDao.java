package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.beans.CartItem;
import com.beans.OrderHistory;
import com.beans.Product;
import com.hibernate.util.HibernateUtil;

public class OrderHistoryDao {
	public static List<OrderHistory> fetchOrderHistory(int userId) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		List<OrderHistory> rs = session.createQuery("from OrderHistory where userid='"+userId+"'").list();
		
		if(rs.size() != 0)
		{
			return rs;
		}
		session.getTransaction().commit();
		session.close();
		return rs;
	}

	public static OrderHistory fetchOrderDetail(int orderId) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.openSession();
		
		session.beginTransaction();
		//List<OrderHistory> rs = session.createQuery("from OrderHistory where orderId='"+orderId+"'").list();
		OrderHistory rs = (OrderHistory) session.get(OrderHistory.class, orderId);
		session.getTransaction().commit();
		//session.close();
		return rs;
	}
}
