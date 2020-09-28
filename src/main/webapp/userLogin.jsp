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

            <!-- //form start here -->
            <div class="flex-fill">
                <form class="p-4 mx-auto" method="post" action="/signin" style="max-width:650px;">
                    <div class="h2 text-dark text-center my-4">SignIn</div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email">E-Mail Address</label>
                                <input type="text" name="email" class="form-control" id="email" placeholder="you@example.com" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email">Password</label>
                                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <div class="h4 text-center my-2">
                            <%
                                String loginStatus = (String)request.getAttribute("loginStatus");
                                if(null != loginStatus)
                                out.print(loginStatus);
                            %>
                            </div>
                            <button type="submit" class="btn btn-dark ml-2"><i class="fas fa-user-tag"> Signin</i></button>
                            <a href="userSignup.jsp" class="btn btn-primary mr-2"><i class="fas fa-user-plus"> Signup</i></a>
                        </div>
                    </div>
                </form>
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