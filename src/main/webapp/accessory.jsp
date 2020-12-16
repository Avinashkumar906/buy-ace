<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.buyace.core.dao.ProductDao"%>
<%@page import="com.buyace.core.beans.Product"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="./dist/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
<body class="bg-light">
    <div class="container-fluid">
        <div class="row main-section">
            <div class="d-flex flex-column w-100">
            <%@ include file="header.jsp" %>
            <div class="flex-fill">
                <%
                List<Product> list = ProductDao.fetchProduct("accessory",request.getParameter("category"));
                if(list.size()!=0){
                ListIterator<Product> Iterator = list.listIterator();
                    while(Iterator.hasNext()){
                        Product product = Iterator.next();
                        out.print("<div class='col-sm-6 col-md-4 col-lg-3 my-2'>");
                        out.print("<div class='card bg-light' style='border-radius:10px;overflow:hidden;'>");
                        out.print("<div class='h6 text-center bg-dark text-light pb-1'>"+product.getMktText()+"</div>");
                        out.print("<div class='text-center' style='height:200px;'><img class='mx-auto h-100' src="+product.getImage()+" //></div>");
                        out.print("<div class='card-body text-center'>");
                        out.print("<h4 class='card-title h4'>"+product.getProductName()+"</h4>");
                        out.print("<h6 class='card-text h6'>"+product.getCompanyName()+"</h6>");
                        out.print("<h6 class='card-text h6'>&#8377 "+product.getPrice()+"/-</h6>");
                        out.print("<a href='ShoppingCart?id="+product.getProductId()+"' class='btn btn-dark'>Add To Cart</a> ");
                        out.print("<a href='viewItem.jsp?id="+product.getProductId()+"' class='btn btn-dark'>View</a>");
                        out.print("</div></div></div>");
                    }
                }
                else{
                    out.print("<div class='text-center h4 my-2'> No product Available!</div>");
                }

                %>
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