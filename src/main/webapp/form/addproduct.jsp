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
		Product product = (Product)request.getAttribute("product");
	%>
    <div class="container-fluid">
        <div class="row main-section">
            <div class="d-flex flex-column w-100">
                <%@ include file="/header.jsp" %>
                <% if(null != product){ %>
                <form class="form-horizontal container mx-auto p-4" name="myform" method="POST" action="/updateproduct?id=<%=product.getProductId() %>">
                <span class="d-block h3 text-center mb-4">Update Product</span>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name" >Name</label>
                                <input type="text" name="productName" class="form-control" value="<%=product.getProductName() %>" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name" >Label</label>
                                <input type="text" name="productLabel" class="form-control" value="<%=product.getProductLabel() %>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name" >Marketing Text</label>
                                <input type="text" name="mktText" class="form-control" value="<%=product.getMktText() %>">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="companyName">Sub Category</label>
                                <input type="text" name="companyName" class="form-control" value="<%=product.getCompanyName() %>" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="category">Category</label>
                                <select name="category" class="form-control" required>
                                    <option class="py-2" selected></option>
                                    <option value="sport" class="py-2">Sport</option>
                                    <option value="phone" class="py-2">Phone</option>
                                    <option value="book" class="py-2">Book</option>
                                    <option value="computer" class="py-2">Computer</option>
                                    <option value="cloth" class="py-2">Cloth</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="text" name="price" class="form-control" value="<%=product.getPrice() %>" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="image">Image Url</label>
                                <input type="text" name="image" class="form-control" value="<%=product.getImage() %>" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea name="description"  class="form-control"><%=product.getDescription() %></textarea>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <button type="submit" class="btn btn-dark my-2"><i class="fas fa-user-tag"> Update</i></button>
                        </div>
                    </div>
                  </form>
                  <% } else { %>
                  <form class="form-horizontal container mx-auto p-4" name="myform" method="POST" action="/form/Uploaditem">
                    <span class="d-block h3 text-center mb-4">Add Product</span>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name" >Name</label>
                                <input type="text" name="productName" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name" >Label</label>
                                <input type="text" name="productLabel" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="name" >Marketing Text</label>
                                <input type="text" name="mktText" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="companyName">Company</label>
                                <input type="text" name="companyName" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="category">Category</label>
                                <select name="category" class="form-control" required>
                                    <option class="py-2" selected></option>
                                    <option value="sport" class="py-2">Sport</option>
                                    <option value="mobile" class="py-2">Mobile</option>
                                    <option value="book" class="py-2">Book</option>
                                    <option value="computer" class="py-2">Computer</option>
                                    <option value="cloth" class="py-2">Cloth</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="price">Price</label>
                                <input type="text" name="price" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="image">Image Url</label>
                                <input type="text" name="image" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea name="description"  class="form-control"  max='255' required></textarea>
                            </div>
                        </div>
                        <div class="col-12 text-center">
                            <button type="submit" class="btn btn-dark my-2"><i class="fas fa-user-tag"> Add</i></button>
                        </div>
                    </div>
                  </form>
                  <% }%>
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