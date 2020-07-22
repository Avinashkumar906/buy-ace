<%@page import="com.buyace.core.dao.CustomerDao"%>
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
	<jsp:useBean id="userbean" class="com.buyace.core.beans.Customer"></jsp:useBean>
	<jsp:setProperty property="*" name="userbean"/>
  <%
	int i = CustomerDao.register(userbean);

	if(i>0){
		out.print("<div class=\"display-4 text-center col-12 py-2 text-light font-weight-bold\">Registered Succesfully..!!<br> Wait while we redirect..</div>");
		response.setHeader("Refresh", " 3 ; URL=home.jsp"); 
	}
	else{
		out.print("<div class=\"display-4 text-center col-12 py-2 text-light font-weight-bold\">Not Registered (User may exist with same email ID)..!!<br> Wait while we redirect..</div>");
		response.setHeader("Refresh", " 3 ; URL=home.jsp");
	}
		
  %>
<%@ include file="footer.jsp" %>

</body>
</html>