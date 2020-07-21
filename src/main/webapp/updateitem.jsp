<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.beans.Product"%>
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
	<div class="display-4 text-center text-light font-weight-bold col-12">Products</div>
		<%
	    List<Product> list = ProductDao.fetchProduct();
		if(list.size()!=0){
	    ListIterator<Product> Iterator = list.listIterator();
		    while(Iterator.hasNext()){
		    	Product product = Iterator.next();
		    	out.print("<div class=\"col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2\">");
				out.print("<div class=\"card bg-light\">");
		    	out.print("<img class=\"card-img-top\" heigth='20px' src=\"images/"+product.getProductId()+".jpg\" alt=\"Card image cap\">");
		    	out.print("<div class=\"card-body\">");
		    	out.print("<b><h5 class=\"card-title\">"+product.getProductName()+"</h5></b>");
		    	out.print("<h6 class=\"card-title\">"+product.getCompanyName()+"</h6>");
		    	out.print("<h6 class=\"card-title\"> &#8377 "+product.getPrice()+"</h6>");
	    		out.print("<a href=\"RemoveProduct?id="+product.getProductId()+"\" class=\"btn btn-primary\"> <b>Remove <sup>-</sup> </b> </a> ");
	    		out.print("<a href=\"UpdateProduct?id="+product.getProductId()+"\" class=\"btn btn-primary\"> <b>Update <sup>*</sup> </b> </a> ");
	    		out.print("</div></div></div>");
	    	}     
		}
		else{
			out.print("<div class='d-block'>" +
			     	"<div class='display-1 my-5 py-5'><b class='text-warning'> Product is not available.!</b></div>"+
			  	"</div>");
		}
			
	 	%> 
<!--End of product Section-->
	<%@ include file="footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>