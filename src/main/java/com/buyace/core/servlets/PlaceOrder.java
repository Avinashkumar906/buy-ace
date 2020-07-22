package com.buyace.core.servlets;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import com.buyace.core.beans.*;

public class PlaceOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		List<CartItem> cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
		OrderHistory orderHistory = new OrderHistory(customer.getName(), customer.getUserid(), request.getParameter("address"), customer.getEmail(),cartItem );
		orderHistory.setOrderDate(new Date());
		orderHistory.setTotal(Double.parseDouble(request.getParameter("total")));
		Session sesion = com.buyace.core.hibernate.util.HibernateUtil.getSessionFactory().openSession();
		sesion.beginTransaction();
		int orderId = (Integer) sesion.save(orderHistory);
		sesion.getTransaction().commit();
		orderHistory.setOrderId(orderId);
		if(orderId>=0) {
			session.removeAttribute("cartitem");
			request.setAttribute("order", orderHistory);
			request.getRequestDispatcher("Confirmation").forward(request, response);
		}
		else {
			response.getWriter().print("<script>alert('Order not Placed.! <br> TRY AGAIN..');(</script>");
			response.sendRedirect("checkout.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
