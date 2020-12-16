package com.buyace.core.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.buyace.core.beans.OrderHistory;
import com.buyace.core.mail.util.*;
@WebServlet("/confirmation")
public class Confirmation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrderHistory order = (OrderHistory)request.getAttribute("order");
		Mailer.sendMail(order.getUserEmail(), order.getOrderId());
		response.getWriter().print("<script>alert('order placed! <br>check your mail.!');</script>");
		response.sendRedirect("/orderhistory.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
