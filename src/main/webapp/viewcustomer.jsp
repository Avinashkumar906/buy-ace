<%@page import="java.util.*"%>
<%@page import="com.buyace.core.dao.*"%>
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
	<span class="display-4 text-center text-light font-weight-bold col-12">ALL USER/ADMIN</span>
	<table class="col-12 text-dark py-5 bg-light">
	<%
		if(CustomerDao.fetchUser().size()>0){
			List<Customer> list = CustomerDao.fetchUser();
			out.print("<tr class='px-3 text-center h3'><th>UserID</th><th>User Name</th><th>Mobile</th><th>Gender</th><th>Role</th><th>Email</th><th>Remove</th></tr>");
    		Iterator itr = list.iterator();
    		while(itr.hasNext()){
    			Customer customer = (Customer)itr.next();
		    	out.print("<tr class='px-3 text-center h4'><td>"+customer.getUserid()+"</th><th>"+customer.getName()+"</th><th>"+customer.getMobile()+"</th><th>"+customer.getGender()+"</th><th>"+customer.getRole()+"</th><th>"+customer.getEmail()+"</th><th><a href='RemoveCustomer?id="+customer.getUserid()+" 'class='btn btn-danger'>Remove</a></th></tr>");
    		}
		}
		else{
			out.print("<div class='d-block'>" +
			     	"<div class='display-1 my-5 py-5'><b class='text-warning'> No User Available .!</b></div>"+
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