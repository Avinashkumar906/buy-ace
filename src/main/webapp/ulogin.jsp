<%@page import="com.buyace.core.dao.CustomerDao"%>
<%@page import="com.buyace.core.beans.*"%>
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
  </head>
  <body>
  <%@ include file="header.jsp" %>
	<jsp:useBean id="userbean" class="com.buyace.core.beans.Customer"></jsp:useBean>
	<jsp:setProperty property="*" name="userbean"/>
  <%
    Customer customer = CustomerDao.validateUser(userbean);
    if(customer!=null){
		out.print("<div class=\"display-4 text-center col-12 text-light font-weight-bold\">Welcome..!!<br>"+customer.getName()+"</div>");  
        session.setAttribute("role",customer.getRole());
        session.setAttribute("name",customer.getName());
        session.setAttribute("customer", customer);
		response.setHeader("Refresh", " 3 ; URL=/index.jsp");
	}
    else{  
    	out.print("<div class=\"display-4 text-center col-12 text-light font-weight-bold\">Invalid Credencials..!!</div>");
    	response.setHeader("Refresh", " 2 ; URL=userLogin.jsp");   
        }  
  %>
<%@ include file="footer.jsp" %>

</body>
</html>