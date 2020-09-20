package com.buyace.core.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.buyace.core.beans.Deals;

@WebServlet("/form/Dealsitem")
public class Dealsitem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String lable = request.getParameter("lable");
		String category = request.getParameter("category");
		String image = request.getParameter("image");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String buttonText = request.getParameter("buttonText");
		String buttonUrl = request.getParameter("buttonUrl");
		String textColour = request.getParameter("textColour");

		Deals deals = new Deals(image, category, lable, title, description, buttonText, buttonUrl, textColour);
		int result = com.buyace.core.dao.DealsDao.addDeal(deals);
		response.setStatus(201);
		response.sendRedirect("/form/deal.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}