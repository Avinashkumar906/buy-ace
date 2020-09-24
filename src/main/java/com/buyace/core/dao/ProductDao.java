package com.buyace.core.dao;

import java.util.*;
import org.hibernate.*;
import com.buyace.core.beans.*;
import com.buyace.core.hibernate.util.*;

public class ProductDao {
	
	public static List<Product> fetchProduct() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		
		session.beginTransaction();
		List<Product> rs = session.createQuery("from Product").list();
		System.out.print(rs);
		if(rs.size() != 0)
		{
			return rs;
		}
		session.getTransaction().commit();
		return rs;
	}
	public static List<Product> fetchProduct(String category) {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		
		session.beginTransaction();
		List<Product> rs = session.createQuery("from Product where category='"+category+"'").list();
		
		if(rs.size() != 0)
		{
			return rs;
		}
		session.getTransaction().commit();
		return rs;
	}
	
	public static Product getProduct(int productId){
		List<Product> rs = fetchProduct();
		Iterator<Product> itr = rs.iterator();
		while(itr.hasNext()){
			Product product = itr.next();
			if(product.getProductId()==productId)
				return product;
		}
		return new Product();
	}

	public static Product getProductById(int productId){
		try {
			SessionFactory factory = HibernateUtil.getSessionFactory();
			Session session = factory.getCurrentSession();
			Product product = (Product)session.get(Product.class,productId);
			return product;
		} catch (Exception e){
			return new Product();
		}
	}

	public static void removeProduct(int productId){
		SessionFactory factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		Product product = getProduct(productId);
		session.beginTransaction();
		session.delete(product);
		session.getTransaction().commit();
	}
}
