package com.buyace.core.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import com.buyace.core.beans.Product;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 10, // 10MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class Updateitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName = request.getParameter("productName");
		String companyName = request.getParameter("companyName");
		double price = Double.parseDouble(request.getParameter("price"));
		int id = Integer.parseInt(request.getParameter("productId"));
		String description = request.getParameter("description");
		String category = request.getParameter("category");
		
		Product product = new Product(productName, companyName, price, description, category);
		product.setProductId(id);
		Session session = com.buyace.core.hibernate.util.HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		session.update(product);
		session.getTransaction().commit();
		session.close();
		/*if(id>0){
			for(Part part : request.getParts()) {
			System.out.println(part.getContentType());
		    part.write("D:/Sneha JAVA Pgms/E-commerce/WebContent/images/"+id+".jpg");
			}
		}*/
		response.sendRedirect("updateitem.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}