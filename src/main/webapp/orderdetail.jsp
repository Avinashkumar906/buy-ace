<%@page import="com.buyace.core.dao.OrderHistoryDao"%>
<%@page import="com.buyace.core.dao.CustomerDao"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.buyace.core.dao.ProductDao"%>
<%@page import="com.buyace.core.beans.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 	<style>body{background-image: linear-gradient(rgba(22,22,22,.4), rgba(22,22,22,.4)), url('./images/home.jpg');background-size:cover;background-attachment:fixed;}</style>
  </head>
<body>
	<%@ include file="header.jsp" %>
	<span class="display-4 text-center text-light font-weight-bold col-12">Order Details</span>
	<%
		
		OrderHistory order=OrderHistoryDao.fetchOrderDetail(Integer.parseInt(request.getParameter("orderId")));
	%>
	<table class="col-12 text-dark py-5 bg-light">
	<div class="col-12 bg-light py-4">
	<div class='col-6 h4 text-left'>#<%=order.getOrderId()%> ORDER ID</div>
	<div class='col-6 h4 text-left'><%=order.getUserName()%></div>
	<div class='col-6 h4 text-left'><%=order.getUserEmail()%></div>
	<div class='col-6 h4 text-left'><%=order.getOrderDate()%></div>
	</div>
	<%
		if(order!=null){
			out.print("<tr class='px-3 text-center h3'><th>Product ID</th><th>Product Name</th><th>Quantity</th><th>Brand</th><th>Price/Item</th></tr>");
			List<CartItem> cartItem = order.getCartItem();
    		for(int i = 0; i < cartItem.size();i++){
    			CartItem item =  cartItem.get(i);
		    	out.print("<tr class='px-3 text-center h4'><td>"+item.getProductId()+"</th><th>"+item.getProductName()+"</th><th>"+item.getQuantity()+"</th><th>"+item.getCompanyName()+"</th><th>"+item.getPrice()+"</th></tr>");
    		}
    		out.print("<tr ><td colspan='4' class='text-right mx-2 h3 text-primary'>TOTAL : </td><td> <b class='text-primary h3'> &#8377 "+order.getTotal()+"</b><td></tr>");
    		out.print("<tr ><td colspan='5' class='text-left px-5 h3 text-dark'>SHIPPING ADRESS : <br><b class='text-dark h4'>"+order.getAddress()+"</b><td></tr>");
    	}
		else{
			out.print("<div class='d-block'>" +
			     	"<div class='display-1 my-5 py-5'><b class='text-warning'> Product is not available.!</b></div>"+
			  	"</div>");
		}
			
	 	%> 
	 	</table>
	 
<!--End of product Section-->
	<%@ include file="footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>