<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.buyace.core.beans.*"%>
<%@page import="com.buyace.core.dao.ProductDao"%>
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
	            <div class="h1 text-center">Item Details</div>
                    <div class="row m-0">
                    <%
                    Product product = request.getParameter("id") != null ? ProductDao.getProduct(Integer.parseInt(request.getParameter("id"))) : null;
                    if(product.getProductName() != null){
                            out.print("<div class='col-sm-6 col-md-4 col-lg-4 my-2'>"+
                                      "<div class='bg-light'>"+
                                            "<img class='card-img-top m-auto d-block' style='max-width:320px;' src="+product.getImage()+" alt='Card image cap'>"+
                                                "<div class='card-body text-center'>"+
                                                    "<a href=\"/addtocart?id="+product.getProductId()+"\" class='btn btn-primary'> <b>Add to cart</b> </a> "+
                                                "</div></div></div>");
                            out.print("<div class='col-sm-6 col-md-8 col-lg-8 my-2'>"+
                                            "<div class='bg-light'>"+
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
                        out.print("<div class='text-center col-12'><span class='h2'>Product not available!</span></div>");
                    }

                    %>
                    </div>
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