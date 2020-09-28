package com.buyace.core.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buyace.core.beans.*;
import org.hibernate.Session;

@WebServlet("/updateproduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId = Integer.parseInt(request.getParameter("id"));
		Product product = com.buyace.core.dao.ProductDao.getProduct(productId);
		request.setAttribute("product", product);
		request.getRequestDispatcher("/form/addproduct.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId = Integer.parseInt(request.getParameter("id"));
		String productName = request.getParameter("productName");
		String productLable = request.getParameter("productLabel");
		String mktText = request.getParameter("mktText");
		String companyName = request.getParameter("companyName");
		double price = Double.parseDouble(request.getParameter("price"));
		String description = request.getParameter("description");
		String image = request.getParameter("image");
		String category = request.getParameter("category");

		Product product = new Product(productName, productLable, mktText, companyName, price, description, image, category);
		Session session = com.buyace.core.hibernate.util.HibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();

		product.setProductId(productId);
		session.update(product);
		session.getTransaction().commit();
		session.close();
		response.sendRedirect("/admin/productlist.jsp");
	}

}
