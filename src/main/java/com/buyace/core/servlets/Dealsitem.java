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

import com.buyace.core.beans.Deals;

//import com.buyace.core.beans.Deals;

@WebServlet("/form/Dealsitem")
public class Dealsitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itemName = request.getParameter("itemName");
		System.out.println(itemName);
		String lable = request.getParameter("lable");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String buttonText = request.getParameter("buttonText");
		String buttonUrl = request.getParameter("buttonUrl");
		String textColour = request.getParameter("textColour");

		System.out.println(itemName);
		System.out.println(itemName + " and " + lable + " and " + title + " and " + description + " and " + buttonText + " and " + buttonUrl + " and " + textColour);
		
		Deals deals = new Deals(itemName, lable, title, description, buttonText, buttonUrl, textColour);
		Session session = com.buyace.core.hibernate.util.HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		int id = (Integer)session.save(deals);
		System.out.println(id);
		session.getTransaction().commit();
		response.setStatus(201);
		response.sendRedirect("/form/deal.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}