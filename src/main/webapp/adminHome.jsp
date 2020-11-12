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
            <%
            if(session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")){
              response.sendRedirect("/index.jsp");
            }
            %>
            <div class="flex-fill">
            <div class="h1 text-center col-12 p-2 ">Admin Section</div>
            <div class="row px-4">
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card bg-light" >
                <img class="card-img-top" src="/dist/images/admin2.png" alt="Card image cap">
                    <div class="card-body text-center">
                        <h5 class="card-title">Deals</h5>
                        <a href="/admin/offeranddeal.jsp" class="btn btn-dark">Offers & Deals</a>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card bg-light" >
                <img class="card-img-top" src="/dist/images/admin1.png" alt="Card image cap">
                    <div class="card-body text-center">
                        <h5 class="card-title">Products Panel</h5>
                        <a href="/admin/productlist.jsp" class="btn btn-dark">Product</a>
                    </div>
                </div>
            </div>
           <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
            <div class="card bg-light" >
            <img class="card-img-top" src="/dist/images/admin3.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Make Admin</h5>
                    <a href="makeadmin.jsp" class="btn btn-primary">Make Admin</a>
                </div>
            </div>
           </div>
               <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
                <div class="card bg-light" >
                <img class="card-img-top" src="/dist/images/admin4.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Fetch All Users</h5>
                        <a href="viewcustomer.jsp" class="btn btn-primary">Fetch all</a>
                    </div>
                </div>
               </div>
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