<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.beans.*"%>
<%@page import="com.dao.ProductDao"%>
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
	<div class="display-4 text-center text-light font-weight-bold col-12">Item Details</div>
		<div class="row">
		<%
		if(request.getParameter("id")!=null){
			Product product = ProductDao.getProduct(Integer.parseInt(request.getParameter("id")));	
				out.print("<div class='col-sm-6 col-md-4 col-lg-3 my-2 w-100'>"+
				          "<div class=\"card bg-light\">"+
		  				     	"<img class=\"card-img-top\" src=\"images/"+product.getProductId()+".jpg\" alt=\"Card image cap\">"+
		  			              	"<div class=\"card-body\">"+
		  			              		"<a href=\"ShoppingCart?id="+product.getProductId()+"\" class=\"btn btn-primary\"> <b>Cart<sup>+</sup> </b> </a> "+
		  							"</div></div></div>"); 
				out.print("<div class='col-sm-5 col-md-7 col-lg-8 my-2 w-100'>"+
				        		"<div class='card bg-light'>"+
	  								"<div class='card-body'>"+
	  									"<h1 class='display-4 text-dark py-3'><b>#Only on <b class='text-warning'>E-Commerce</b></h1>"+
	   			 						"<h1 class='h2 text-dark py-2'><b>"+product.getProductName()+"</b></h1>"+
	   			 						"<h1 class='h2 text-dark py-2'> ID #"+product.getProductId()+"</h1>"+
	   			 						"<h1 class='h4 text-dark py-2'>Brand : "+product.getCompanyName()+" </h1>"+
	   			 						"<h1 class='h4 text-dark'>Catogory : "+product.getCategory()+"</h1>"+
	   			 						"<p class='h5 text-dark py-0'>Description:<br> "+product.getDescription()+"</p>"+
	   			 						"<h1 class='display-6 text-dark'> &#8377 "+product.getPrice()+" </h1>"+
										"</div></div></div>");
		}
		else{
			out.print("<div class='d-block'>" +
			     	"<div class='display-1 my-5 py-5'><b class='text-warning'> Product is not available.!</b></div>"+
			  		"</div>");
		}
			
	 	%>
	 	</div>
<!--End of product Section-->
	<%@ include file="footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>