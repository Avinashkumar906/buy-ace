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
  	<script>  
function validateform(){  
var name=document.myform.name.value;  
var rname=/^[A-Za-z]+$/;
var pass=document.myform.password.value;
var rpass=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,20}$/;
var mobile=document.myform.mobile.value;
var rmobile=/^\d{10}$/;  
var email=document.myform.email.value;
var remail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  
  
  if((!name.match(rname))){  
  	document.getElementById("validate-name").innerHTML="Name must contain alphabets and not empty.!";
  return false;  
  }
  else if((!email.match(remail))){  
	  document.getElementById("validate-name").innerHTML="";
	  document.getElementById("validate-email").innerHTML="Please enter a valid email.!" ; 
  return false;  
  } 
  else if((!pass.match(rpass))){  
	  document.getElementById("validate-name").innerHTML="";
	  document.getElementById("validate-email").innerHTML="";
	  document.getElementById("validate-password").innerHTML="Contains uppercase, lowercase, number, special character and should be 8-20 long."; 
  return false;  
  }  
  else if((!mobile.match(rmobile))){  
	  document.getElementById("validate-name").innerHTML="";
	  document.getElementById("validate-email").innerHTML="";
	  document.getElementById("validate-password").innerHTML="";
	  document.getElementById("validate-mobile").innerHTML="Please enter a valid number.!" ; 
  return false;  
  } 
  
  else{
  return true;
  }
}  
</script>
  </head>
<body>
	<%@ include file="header.jsp" %>
	<%	
	    Customer customer = null;
		if(session.getAttribute("customer")!=null){
		customer = (Customer)session.getAttribute("customer"); }
	%>
<div class="container">
    <form class="form-horizontal" name="myform" method="POST" action="UpdateProfile" onsubmit="return validateform()">
	<div class="display-4 text-center py-3 text-light font-weight-bold">SignUp</div>        
        <div class="row">
            <div class="col-md-3">
                <label for="name" class="text-light h3">Name</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="name" class="form-control" id="name" placeholder="John Doe" value='<%=customer.getName()%>'>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div >
                        <span class="text-light align-middle">
                            <span id="validate-name"></span>
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="userId" class="text-light h3">Userid</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="userId" class="form-control" id="userId" placeholder="John Doe" value='<%=customer.getUserid()%>' readonly>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div >
                        <span class="text-light align-middle">
                            <span id="validate-name"></span>
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="email" class="text-light h3">E-Mail Address</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="email" class="form-control" id="email" placeholder="you@example.com" value='<%=customer.getEmail()%>'>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div >
                        <span class="text-light align-middle">
                            <span id="validate-email"></span>
                        </span>
                </div>
            </div>
        </div>
	<div class="row">
            <div class="col-md-3">
                <label for="mobile" class="text-light h3">Mobile Number</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="text" name="mobile" class="form-control" id="mobile" placeholder="9999XXXXXX" value='<%=customer.getMobile()%>'>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div>
                        <span class="text-light align-middle">
                           <span id="validate-mobile"></span>
                        </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <label for="password" class="text-light h3">Password</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <input type="password" name="password" class="form-control" id="password"
                               placeholder="Password" value='********'>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div>
                        <span class="text-light align-middle">
                            <span id="validate-password"></span>
                        </span>
                </div>
            </div>
        </div>
	<div class="row">
            <div class="col-md-3">
                <label for="gender" class="text-light h3">Gender</label>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group my-2 mx-2 ">
                        <span class="text-light h3"><input type="radio" class=" ml-3 mr-1" name="gender" class="form-control" id="gender" value="male" required autofocus> Male</span>
						<span class="text-light h3"><input type="radio" class=" ml-3 mr-1" name="gender" class="form-control" value="female" required autofocus> Female</span>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
        
            </div>
        </div>
        <div class="row">
            <div class="col-5 m-auto">
                <button type="submit" class="btn btn-success"><i class="fa fa-user-plus">Update</i></button>
		<!-- <a href="userLogin.jsp" class="btn btn-primary"><i class="fas fa-user-tag"></i> Login</a> -->
            </div>
        </div>
    </form>
</div>
	<%@ include file="footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>