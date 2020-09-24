package com.buyace.core.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;

import com.buyace.core.beans.Product;

@WebServlet("/form/Uploaditem")
public class Uploaditem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String productName = request.getParameter("productName");
		String productLable = request.getParameter("productLabel");
		String mktText = request.getParameter("mktText");
		String companyName = request.getParameter("companyName");
		double price = Double.parseDouble(request.getParameter("price"));
		String description = request.getParameter("description");
		String image = request.getParameter("image");
		String category = request.getParameter("category");
		
		Product product = new Product(productName, productLable, mktText, companyName, price, description, image, category);
		Session session = com.buyace.core.hibernate.util.HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		int id = (Integer)session.save(product);
		session.getTransaction().commit();

		if(id>0){
			response.sendRedirect("/form/addproduct.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}