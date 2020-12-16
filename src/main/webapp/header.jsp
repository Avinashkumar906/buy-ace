<%@page import="java.util.*"%>
<%@page import="com.buyace.core.beans.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
    <%
    	String welcome = "<a class='btn btn-light ml-1' href='/userLogin.jsp'><b>Login</b></a>";
    	if(session.getAttribute("role")!=null){
    		welcome = "<a class='btn btn-light ml-1' href='/viewprofile.jsp'><b>HI! "+session.getAttribute("name").toString()+"</b></a>";
    	}
    %>
    <!-- Login defination ends here  -->
    <% 	int itemInCart = 0;
    	if(session.getAttribute("cartitem")!=null){
    		List<CartItem> cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
    		for(int i = 0; i < cartItem.size();i++){
    			itemInCart = itemInCart+cartItem.get(i).getQuantity();
    		}
       }  
    %>
    
	<nav class="navbar navbar-expand-md navbar-dark bg-dark" style="min-height:10vh;">
  	    <a class="navbar-brand" href="/index.jsp"><h3 class="h3">BuyAce</h3></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav mr-auto w-100">
                <li class="nav-item">
                    <a class="nav-link" href="/phone.jsp">Phone</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/plan.jsp">Plan</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/deal.jsp">Deal</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/accessory.jsp">Accessory</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact.jsp">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/about.jsp">About us</a>
                </li>
                <li class="nav-item alignment-custom">
                    <a class="btn btn-light" href="checkout.jsp">
                        <i class="fas fa-shopping-cart">
                        <%= itemInCart > 0 ? "<span class='badge badge-light ml-1'>"+itemInCart+"</span>" : "" %>
                        </i>
                    </a>
                    <%
                    if(null != session.getAttribute("role")  && session.getAttribute("role").equals("admin")){
                      out.print("<a class='btn btn-light ml-1' href='/adminHome.jsp'><b>Admin</b></a>");
                      }
                    %>
                    <% out.print(welcome); %>
                </li>
            </ul>
        </div>
    </nav>
  <!--Nav bar ends here   -->