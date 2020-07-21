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

<!-- //form start here -->
<div class="container">
    <form class="form-horizontal" method="post" action="ulogin.jsp">
        <div class="display-4 text-center my-5 py-4 text-light font-weight-bold">SignIn</div>
        <div class="row">
            <div class="col-md-3">
                <label for="email" class="text-light h3">E-Mail Address</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="text" name="email" class="form-control" id="email" placeholder="you@example.com" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div id="validate-email">
                        <span class="text-danger align-middle">
                            <!-- Put e-mail validation error messages here -->
                        </span>
                </div>
            </div>
        </div>
	<div class="row">
            <div class="col-md-3">
                <label for="email" class="text-light h3">Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                        <input type="password" name="password" class="form-control" id="password"
                               placeholder="Password" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div id="validate-password">
                        <span class="text-danger align-middle">
                           <!--  <i class="fa fa-close"></i>Error message -->
                        </span>
                </div>
            </div>
    </div>
        <div class="row">
            <div class="col-5 d-block m-auto">
                <button type="submit" class="btn btn-success my-2"><i class="fas fa-user-tag"> Login</i></button>
				<a href="userSignup.jsp" class="btn btn-primary my-2"><i class="fas fa-user-plus">  Register</i></a>
            </div>
        </div>
    </form>
</div>	

<!-- //form ends here -->

<%@ include file="footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>