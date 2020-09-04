<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/dist/css/style.css">
    <link rel="stylesheet" type="text/css" href="./dist/css/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="./dist/css/slick/slick-theme.css"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
<body class="bg-light">
    <div class="container-fluid">
        <div class="row main-section">
            <div class="d-flex flex-column w-100">
                <%@ include file="/header.jsp" %>
                <div class="flex-fill">
                    <form class="form-horizontal w-100 m-0 p-4" name="dealsform" method="POST" action="/form/Dealsitem">
					  <div class="form-group">
					    <label for="itemName">Item</label>
					    <input type="text" class="form-control" name="itemName">
					  </div>
					  <div class="form-group">
					    <label for="lable">Lable</label>
					    <input type="text" class="form-control" name="lable">
					  </div>
					  <div class="form-group">
					    <label for="title">Title</label>
					    <input type="text" class="form-control" name="title">
					  </div>
					  <div class="form-group">
					    <label for="description">Description</label>
					    <input type="text" class="form-control" name="description">
					  </div>
					  <div class="form-group">
					    <label for="buttonText">ButtonText</label>
					    <input type="text" class="form-control" name="buttonText">
					  </div>
					  <div class="form-group">
					    <label for="buttonUrl">ButtonUrl</label>
					    <input type="text" class="form-control" name="buttonUrl">
					  </div>
					  <div class="form-group">
					    <label for="textColour">TextColour</label>
					    <input type="text" class="form-control" name="textColour">
					  </div>
					  <button type="submit" class="btn btn-primary">Submit</button>
					</form>
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