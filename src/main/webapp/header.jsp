<%@page import="java.util.*"%>
<%@page import="com.beans.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
    <%
    	String welcome = "<a class=\"btn btn-warning\" href=\"userLogin.jsp\"><b class=\"text-light\">Login/Signup</b></a>";
    	if(session.getAttribute("role")!=null){
    		welcome = "<a class=\"btn btn-warning\" href=\"viewprofile.jsp\"><b class='text-light'>HI! "+session.getAttribute("name").toString()+"</b></a>";
    	}
    %>
    <!-- Login defination ends here  -->
    <%-- <%
    	if(session.getAttribute("cartitem")!=null){
        		List<CartItem> cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
    	itemInCart = cartItem.size();
        	}
    %> --%>
    <% 	int itemInCart = 0;
    	if(session.getAttribute("cartitem")!=null){
    		List<CartItem> cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
    		for(int i = 0; i < cartItem.size();i++){
    			itemInCart = itemInCart+cartItem.get(i).getQuantity();
    		}
       }  
    %>
    
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
  	<a class="navbar-brand" href="index.jsp"><h3>E-commerce</h3></a>
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  	<div class="collapse navbar-collapse" id="navbarText">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
         <a class="nav-link" href="home.jsp">Products</a>
        </li>
        <li class="nav-item">
         <a class="nav-link" href="adminHome.jsp">Admin</a>
        </li>
        <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Category
         </a>
       <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="categoryView.jsp?category=sport">Sports</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="categoryView.jsp?category=mobile">Mobiles</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="categoryView.jsp?category=book">Books</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="categoryView.jsp?category=computer">Computers</a>
           <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="categoryView.jsp?category=cloth">Clothes</a>
       </div>
       </li>
        <li class="nav-item">
         <a class="nav-link" href="about.jsp">About</a>
       </li>
     </ul>
         <a class="btn btn-warning" href="checkout.jsp"><i class="fas fa-shopping-cart">
         	<span class="badge badge-light"><%=itemInCart%></span></i>
         </a>
        &#160 <% out.print(welcome); %> 
  	</div>
  </nav>
  <!--Nav bar ends here   -->
	<div class="container my-3" style='min-height:62vh;'>
		<div class="row">