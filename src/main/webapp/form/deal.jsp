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
    <%
		Deals deals = (Deals)request.getAttribute("deals");
	%>
    <div class="container-fluid">
        <div class="row main-section">
            <div class="d-flex flex-column w-100">
                <%@ include file="/header.jsp" %>
                <div class="flex-fill">
                <% if(null != deals){ %>
                  <form class="form-horizontal container mx-auto p-4" name="dealsform" method="POST" action="/updatedeals?id=<%=deals.getItemId()%>">
                    <span class="d-block h3 text-center mb-4">Update Deals</span>
						<div class="row">
							<div class="form-group col-md-6">
							  <label for="itemName">Image Url</label>
							  <input type="text" class="form-control" name="image" value="<%=deals.getImage()%>">
							</div>
							<div class="form-group col-md-6">
							  <label for="lable">Lable</label>
							  <input type="text" class="form-control" name="lable" value="<%=deals.getLable()%>">
							</div>
							<div class="form-group col-md-6">
							  <label for="title">Title</label>
							  <input type="text" class="form-control" name="title" value="<%=deals.getTitle()%>">
							</div>
							<div class="form-group col-md-6">
							  <label for="description">Description</label>
							  <input type="text" class="form-control" name="description" value="<%=deals.getDescription()%>">
							</div>
							<div class="form-group col-md-6">
							  <label for="buttonText">ButtonText</label>
							  <input type="text" class="form-control" name="buttonText" value="<%=deals.getButtonText()%>">
							</div>
							<div class="form-group col-md-6">
							  <label for="buttonUrl">ButtonUrl</label>
							  <input type="text" class="form-control" name="buttonUrl" value="<%=deals.getButtonUrl()%>">
							</div>
							<div class="form-group col-md-6">
							  <label for="textColour">TextColour</label>
							  <input type="text" class="form-control" name="textColour" value="<%=deals.getTextColour()%>">
							</div>
							<div class="form-group col-md-6">
								<label for="textColour">Category</label>
								<select name="category" class="form-control" value="<%=deals.getCategory()%>">
								    <option value="carousel" >Carouser Slide</option>
								    <option value="teaser">Promo teaser</option>
								    <option value="banner">Offer Banner</option>
								</select>
							</div>
						</div>
					  <button type="submit" class="btn btn-primary d-block w-auto mx-auto">Submit</button>
					</form>
                <% } else { %>
                  <form class="form-horizontal container mx-auto p-4" name="dealsform" method="POST" action="/form/Dealsitem">
                    <span class="d-block h3 text-center mb-4">Add Deal</span>
						<div class="row">
							<div class="form-group col-md-6">
							  <label for="itemName">Image Url</label>
							  <input type="text" class="form-control" name="image">
							</div>
							<div class="form-group col-md-6">
							  <label for="lable">Lable</label>
							  <input type="text" class="form-control" name="lable">
							</div>
							<div class="form-group col-md-6">
							  <label for="title">Title</label>
							  <input type="text" class="form-control" name="title">
							</div>
							<div class="form-group col-md-6">
							  <label for="description">Description</label>
							  <input type="text" class="form-control" name="description">
							</div>
							<div class="form-group col-md-6">
							  <label for="buttonText">ButtonText</label>
							  <input type="text" class="form-control" name="buttonText">
							</div>
							<div class="form-group col-md-6">
							  <label for="buttonUrl">ButtonUrl</label>
							  <input type="text" class="form-control" name="buttonUrl">
							</div>
							<div class="form-group col-md-6">
							  <label for="textColour">TextColour</label>
							  <input type="text" class="form-control" name="textColour">
							</div>
							<div class="form-group col-md-6">
								<label for="textColour">Category</label>
								<select name="category" class="form-control">
								    <option value="carousel">Carouser Slide</option>
								    <option value="teaser">Promo teaser</option>
								    <option value="banner">Offer Banner</option>
								</select>
							</div>
						</div>
					  <button type="submit" class="btn btn-primary d-block w-auto mx-auto">Submit</button>
					</form>
                <% } %>
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