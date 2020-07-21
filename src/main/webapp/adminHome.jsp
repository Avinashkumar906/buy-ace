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
	<div class="row">
	<div class="display-4 text-center col-12 py-3 text-light font-weight-bold">Admin Section</div>
	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
        <div class="card bg-light" >
  		<img class="card-img-top" src="images/admin2.png" alt="Card image cap">
  			<div class="card-body">
    		 	<h5 class="card-title">Add Products</h5>
   			 	<a href="addProduct.jsp" class="btn btn-primary">Product<sup>+</sup></a>
  			</div>
		</div>
	   </div>
	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
        <div class="card bg-light" >
  		<img class="card-img-top" src="images/admin1.png" alt="Card image cap">
  			<div class="card-body">
    		 	<h5 class="card-title">Update Products</h5>
   			 	<a href="updateitem.jsp" class="btn btn-primary">Update <sup>*</sup></a>
  			</div>
		</div>
	   </div>
	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
        <div class="card bg-light" >
  		<img class="card-img-top" src="images/admin3.png" alt="Card image cap">
  			<div class="card-body">
    		 	<h5 class="card-title">Make Admin</h5>
   			 	<a href="makeadmin.jsp" class="btn btn-primary">Make Admin</a>
  			</div>
		</div>
	   </div>
	   <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 my-2">
        <div class="card bg-light" >
  		<img class="card-img-top" src="images/admin4.png" alt="Card image cap">
  			<div class="card-body">
    		 	<h5 class="card-title">Fetch All Users</h5>
   			 	<a href="viewcustomer.jsp" class="btn btn-primary">Fetch all</a>
  			</div>
		</div>
	   </div>
	 </div>
	</div>
	<%@ include file="footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>