<%@page import="com.buyace.core.beans.*"%>
<%@page import="com.buyace.core.dao.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <title>Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../dist/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body class="bg-light">
        <div class="container-fluid">
            <div class="row main-section">
                <div class="d-flex flex-column w-100">
                    <%@ include file="/header.jsp" %>
                    <div class="flex-fill">
                        <div class="h1 text-center col-12 pt-2 ">User Profile</div>
		                    <div class="row">
                            <%
                            if(session.getAttribute("customer")!=null){
                                Customer customer = (Customer)session.getAttribute("customer");
                                out.print(
                                "<div class='col-12 my-2'>"+
                                "<div class='card bg-light m-auto' style='max-width:520px'>"+
                                    "<div class='card-body'>"+
                                        "<h1 class='text-center m-0'><b>Welcome <b class=''>"+customer.getName()+"</b>.!!</b></h1>"+
                                        "<div class='text-center'><small>("+customer.getEmail()+")</small></div>"+
                                        "<h1 class='h4 text-center'>Contact :"+customer.getMobile()+" </h1>"+
                                        "<h1 class='h4 text-center'>Gender :"+customer.getGender()+"</h1>"+
                                        " <div class='d-flex w-100 justify-content-between my-2'><a href='javascript:void(0);' class='btn btn-primary disabled w-25'>Edit</a> "+
                                        " <a href='/orderhistory.jsp' class='btn btn-primary w-25'>Orders</a> "+
                                        " <a href='/logout' class='btn btn-danger w-25'>Logout</a> </div>"+
                                        "</div>"+
                                    "</div>" +
                                "</div>");
                            }
                            else{
                                response.sendRedirect("/userLogin.jsp");
                            }

                            %>
	 	                    </div>
	                    </div>
                    <%@ include file="/footer.jsp" %>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
        <script type="text/javascript" src="./dist/css/slick/slick.min.js"></script>
    </body>
</html>