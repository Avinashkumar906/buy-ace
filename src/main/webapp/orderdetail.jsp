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
    <link rel="stylesheet" href="./dist/css/style.css">
    <link rel="stylesheet" type="text/css" href="./dist/css/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="./dist/css/slick/slick-theme.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
<body class="bg-light">
    <div class="container-fluid">
        <div class="row main-section">
            <div class="d-flex flex-column w-100">
            <%@ include file="header.jsp" %>
                <div class="flex-fill">
	            <div class="text-center"><span class="h2 text-center">Order Details</span></div>
                    <%
                        OrderHistory order=OrderHistoryDao.fetchOrderDetail(Integer.parseInt(request.getParameter("orderId")));
                    %>
                    <div class="w-100 px-5 my-3">
                        <div class='text-left'>ORDER ID #<%=order.getOrderId()%> </div>
                        <div class='text-left'><%=order.getUserName()%></div>
                        <div class='text-left'><%=order.getUserEmail()%></div>
                        <div class='text-left'><%=order.getOrderDate()%></div>
                    </div>
                    <table class="col-12 text-dark py-5 bg-light">
                    <%
                        if(order!=null){
                            out.print("<tr class='px-3 text-center '><th>Product ID</th><th>Product Name</th><th>Quantity</th><th>Brand</th><th>Price/Item</th></tr>");
                            List<CartItem> cartItem = order.getCartItem();
                            for(int i = 0; i < cartItem.size();i++){
                                CartItem item =  cartItem.get(i);
                                out.print("<tr class='px-3 text-center'><td>"+item.getProductId()+"</th><th>"+item.getProductName()+"</th><th>"+item.getQuantity()+"</th><th>"+item.getCompanyName()+"</th><th>"+item.getPrice()+"</th></tr>");
                            }
                            out.print("<tr ><td colspan='4' class='text-right mx-2'>TOTAL : </td><td> <b class='text-center d-block'>  &#8377 " +order.getTotal()+"</b><td></tr>");
                            out.print("<tr ><td colspan='5' class='text-left px-5 text-dark'>SHIPPING ADRESS : <br><b class='text-dark h4'>"+order.getAddress()+"</b><td></tr>");
                        }
                        else{
                            out.print("<tr><td colspan='6' class='text-center h2'>No Item in order!</td></tr>");
                        }

                        %>
                        </table>
	                </div>
                <%@ include file="footer.jsp" %>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>