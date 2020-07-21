package com.servlets;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.hibernate.Session;

import com.beans.Product;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class Uploaditem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName = request.getParameter("productName");
		String companyName = request.getParameter("companyName");
		double price = Double.parseDouble(request.getParameter("price"));
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		
		Product product = new Product(productName, companyName, price, description, category);
		Session session = com.hibernate.util.HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		int id = (Integer)session.save(product);
		session.getTransaction().commit();
		if(id>0){
			for(Part part : request.getParts()) {
			System.out.println(part.getContentType());
		    part.write("D:/Sneha JAVA Pgms/E-commerce/WebContent/images/"+id+".jpg");
		    //part.
			}
		}
		response.sendRedirect("addProduct.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}