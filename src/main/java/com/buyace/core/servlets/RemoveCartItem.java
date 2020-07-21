package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.*;
import javax.servlet.http.*;

import com.beans.CartItem;
import com.beans.Product;



public class RemoveCartItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		List<CartItem> cartItem = new ArrayList<CartItem>();
		cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
			int found = -1;
			for (int i = 0; i < cartItem.size(); i++) {
				if(cartItem.get(i).getProductId()==Integer.parseInt(request.getParameter("id"))){
					found=i;
					break;
				}
			}
			if(found>=0){
				int currentquantity = cartItem.get(found).getQuantity();
				if(currentquantity!=1){
					currentquantity--;
					cartItem.get(found).setQuantity(currentquantity);
				}
				else
					cartItem.remove(found);
			}	
		session.setAttribute("cartitem", cartItem);
		response.sendRedirect("checkout.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
