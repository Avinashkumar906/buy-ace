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
    <form class="form-horizontal col-12" name="myform" method="POST" action="Uploaditem" enctype="multipart/form-data">
    <div class="display-4 text-center my-5 py-4 text-light font-weight-bold">Add Product</div>
	    
        <div class="row">
            <div class="col-md-3">
                <label for="name" class="text-light h3">Name</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="productName" class="form-control" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="companyName" class="text-light h3">Company</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="companyName" class="form-control" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="companyName" class="text-light h3">Category</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <select name="category" class="form-control" required>
                        <option value="sport" class="py-2">Sport</option>
                        <option value="mobile" class="py-2">Mobile</option>
                        <option value="book" class="py-2">Book</option>
                        <option value="computer" class="py-2">Computer</option>
                        <option value="cloth" class="py-2">Cloth</option>
                    	</select>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="price" class="text-light h3">Price</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="price" class="form-control" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="description" class="text-light h3">Description</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <textarea name="description"  class="form-control"  max='999' required>Description here</textarea>
                        <!-- <input type="textarea" name="description" > -->
                    </div>
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="image" class="text-light h3">Image(jpg ,3:2)</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="file" name="image" class="form-control" required>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-5 m-auto">
                <button type="submit" class="btn btn-success my-2"><i class="fas fa-user-tag"> Add</i></button>
            </div>
        </div>
      </form>     
	<%@ include file="footer.jsp" %>
</body>
</html>