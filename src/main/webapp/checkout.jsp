<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.buyace.core.dao.ProductDao"%>
<%@page import="com.buyace.core.beans.Product"%>
<%@page import="com.buyace.core.dao.CustomerDao"%>
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
                    <div class="text-center font-weight-bold h2 my-2">Checkout</div>
                    <%
                        Customer customer = (Customer)session.getAttribute("customer");
                        if(customer == null){
                          response.sendRedirect("/userLogin.jsp");
                        }
                    %>
                    <div class="row px-2">
                        <div class='col-12 h4 text-left'><%=customer.getName()%></div>
                        <div class='col-12 h6 text-left'><%=customer.getMobile()%>/<%=customer.getEmail()%></div>
                    </div>
                    <table class="col-12 text-dark py-5 bg-light">
                        <%
                        double total = 0.0;
                        if(session.getAttribute("cartitem")!=null){
                            List<CartItem> cartItem = (ArrayList<CartItem>)session.getAttribute("cartitem");
                            if(cartItem.size()!=0){
                                out.print("<tr class='px-3 text-center h5'><th>Product ID</th><th>Product Name</th><th>Quantity</th><th>Brand</th><th>Price/Item</th><th>Remove</th></tr>");
                                    for(int i = 0; i < cartItem.size();i++){
                                    CartItem item =  cartItem.get(i);
                                    out.print("<tr ><td class='text-center'>" +item.getProductId()+ "</td><td class='text-center'>" +item.getProductName()+ "</td><td class='text-center'>" +item.getQuantity()+ "</td><td class='text-center'>" +item.getCompanyName()+ "</td><td class='text-center'>" +item.getPrice()+ "</td><td class='text-center'><a href='/removefromcart?id="+item.getProductId()+"' class='btn btn-danger'>Remove</a></td></tr>");
                                    out.print(item);
                                    total = total + item.getPrice()*item.getQuantity();
                                }
                                out.print("<tr ><td colspan='5' class='text-right mx-2 h5'>TOTAL : </td><td> <b class='text-primary h5 text-right'> &#8377 "+total+"</b><td></tr>");
                        %>
                     <tr><td colspan="6">
                    <form class="form-horizontal col-12 bg-light py-4 " method="post" action="/placeorder">
                         <div class='fluid'>
                            <div class="row">
                                <div class="col-md-3 col-lg-5">
                                    <label for="address" class="text-Dark h3">Enter Delivery Address</label>
                                </div>
                                <div class="col-md-6 col-lg-5">
                                    <div class="form-group">
                                        <span class="input-group">
                                            <textarea name="address" class="form-control" id="address" placeholder="Delivery Address" required></textarea>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-lg-2">
                                    <div id="Blank">
                                            <span class="text-danger align-end">
                                              <input type="text" name="total" value="<%=total%>" hidden>
                                              <button type="submit" class='btn btn-primary'> Place Order</button>
                                            </span>
                                    </div>
                                </div>
                              </div>
                        </div>
                    </form>
                    </td></tr>
                        <%
                            }
                        }
                        else{
                            out.print("<tr><td colspan='6' class='text-center h2'>No Item available!</td></tr>");
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