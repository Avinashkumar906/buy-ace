package com.buyace.core.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

import com.buyace.core.beans.CartItem;
import com.buyace.core.beans.Product;



public class ShoppingCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		List<CartItem> cartItem = new ArrayList<CartItem>();
		cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
		Product product = com.buyace.core.dao.ProductDao.getProduct(Integer.parseInt(request.getParameter("id")));
		if(cartItem==null){
			cartItem = new ArrayList<CartItem>();
			cartItem.add(new CartItem(product.getProductId(), product.getProductName(), product.getCompanyName(), product.getPrice()));
		}
		else{
			int found = -1;
			for (int i = 0; i < cartItem.size(); i++) {
				if(cartItem.get(i).getProductId()==product.getProductId()){
					found=i;
					break;
				}
			}
			if(found>=0){
				int currentquantity = cartItem.get(found).getQuantity();
				currentquantity++;
				cartItem.get(found).setQuantity(currentquantity);
			}
			else
				cartItem.add(new CartItem(product.getProductId(), product.getProductName(), product.getCompanyName(), product.getPrice()));		
		}
		session.setAttribute("cartitem", cartItem);
		response.sendRedirect("home.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
