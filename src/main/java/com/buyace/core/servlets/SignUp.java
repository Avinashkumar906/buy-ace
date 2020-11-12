package com.buyace.core.servlets;

import com.buyace.core.beans.Customer;
import com.buyace.core.dao.CustomerDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/signup")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String gender = request.getParameter("gender");

		int result = CustomerDao.register(new Customer(name,email,mobile,password,gender));
		if(0 != result){
			request.setAttribute("SignupStatus","Registered Successfully!");
			request.getRequestDispatcher("/userSignup.jsp").forward(request, response);
		} else {
			request.setAttribute("SignupStatus","Already exist!");
			request.getRequestDispatcher("/userSignup.jsp").forward(request, response);
		}
	}
}
