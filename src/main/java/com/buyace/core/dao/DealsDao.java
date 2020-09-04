package com.buyace.core.dao;

import java.util.*;
import org.hibernate.*;
import com.buyace.core.beans.*;
import com.buyace.core.hibernate.util.*;

public class DealsDao {
	
	public static List<Deals> fetchDeals() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		
		session.beginTransaction();
		List<Deals> rs = session.createQuery("from Deals").list();
		System.out.print(rs);
		if(rs.size() != 0)
		{
			return rs;
		}
		session.getTransaction().commit();
		return rs;
	}
	public static List<Deals> fetchDeals(String item) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		
		session.beginTransaction();
		List<Deals> rs = session.createQuery("from Deals where item='"+item+"'").list();
		
		if(rs.size() != 0)
		{
			return rs;
		}
		session.getTransaction().commit();
		return rs;
	}
	
	public static Deals getDeals(int itemId){
		List<Deals> rs = fetchDeals();
		Iterator<Deals> itr = rs.iterator();
		while(itr.hasNext()){
			Deals deals = itr.next();
			if(deals.getItemId()==itemId)
				return deals;
		}
		return new Deals();
	}
	
	public static void removeDeals(int itemId){
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		Deals deals = getDeals(itemId);
		session.beginTransaction();
		session.delete(deals);
		session.getTransaction().commit();
	}
}
