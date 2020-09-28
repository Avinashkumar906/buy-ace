package com.buyace.core.servlets;

import com.buyace.core.beans.Customer;
import com.buyace.core.dao.CustomerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/signin")
public class SignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Customer customer = com.buyace.core.dao.CustomerDao.validateUser(new Customer(email,password));
		if(null != customer){
			request.getSession().setAttribute("role",customer.getRole());
			request.getSession().setAttribute("name",customer.getName());
			request.getSession().setAttribute("customer", customer);
			request.setAttribute("loginStatus","Logged In Successfully!");
			response.setHeader("Refresh", " 3 ; URL=/index.jsp");
			request.getRequestDispatcher("/userLogin.jsp").forward(request, response);
		} else {
			request.setAttribute("loginStatus","Invalid Credentials!");
			response.setHeader("Refresh", " 1 ; URL=/userLogin.jsp");
			request.getRequestDispatcher("/userLogin.jsp").forward(request, response);
		}
	}

}
