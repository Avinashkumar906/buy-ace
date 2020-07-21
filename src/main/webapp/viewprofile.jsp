<%@page import="java.util.*"%>
<%@page import="com.beans.*"%>
<%@page import="com.dao.*"%>
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
	<div class="display-4 text-center text-light font-weight-bold col-12">User Profile</div>
		<div class="row col-12">
		<%
		if(session.getAttribute("customer")!=null){
			Customer customer = (Customer)session.getAttribute("customer"); 
				out.print("<div class='col-12 my-2 '>"+
				        		"<div class='card bg-light'>"+
	  								"<div class='card-body'>"+
	  									"<h1 class='display-4 text-dark py-3'><b>Welcome <b class='text-warning'>"+customer.getName()+"</b>.!!</b></h1>"+
	   			 						"<h1 class='h2 text-dark py-2'>USER ID :<b>"+customer.getUserid()+"</b></h1>"+
	   			 						"<h1 class='h2 text-dark py-2'>USER MAIL :"+customer.getEmail()+"</h1>"+
	   			 						"<h1 class='h4 text-dark py-0'>MOBILE :"+customer.getMobile()+" </h1>"+
	   			 						"<h1 class='h4 text-dark py-0'>GENDER :"+customer.getGender()+"</h1>"+
	   			 						"<h1 class='h4 text-dark py-0'>ROLE :"+customer.getRole()+"</h1><br>"+
	   			 						" <a href='editprofile.jsp' class='btn btn-primary'>Edit Profile</a> "+
	   			 						" <a href='orderhistory.jsp' class='btn btn-primary'>History</a> "+
	   		   			 				" <a href='Logout' class='btn btn-danger'>LOGOUT</a> "+
										"</div></div></div>");
		}
		else{
			response.sendRedirect("userLogin.jsp");
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