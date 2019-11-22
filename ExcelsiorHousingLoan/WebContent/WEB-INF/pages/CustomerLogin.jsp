<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Login</title>
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=yes, maximum-scale=1,user-scalable=no">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
   <!-- <link rel="stylesheet" type="text/css" href="css/stdstyle1.css"> -->
    <link rel="stylesheet" type="text/css" href="jquery-ui-1.10.3/themes/base/jquery.ui.all.css"/>
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("images/home.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */


.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 300px;
  padding: 20px;
  text-align: center;
}
label{
  float: left;
}
button{
  color: #23527c;
}
h2{
  font-size: 25px;
}
input[type=email], input[type=password]{
color:black;
}

</style>
</head>
<body>

	<div class="col-md-12 col-xs-12 bg-image"></div>

		<div class="col-md-12 col-xs-12 bg-text">
		
		<form action="customerLogin.do" method="post">
		      <div class="col-ms-10 col-xs-10 login">
        <h2 style="text-align: center">Customer Login</h2>
        <label><b>Email-Id :</b></label>
        <input type="email" id="email" placeholder="Enter Email Id" name="email" required><br>

        <br><label><b>Password :</b></label>
        <input type="password" id="password" placeholder="Enter Password" name="password" required><br>
            
        <br><button type="submit">Login</button><br>
        <br><span >Not Registered:<a href="userRegisterPage">Click Here to Register</a></span>
        <br><span class="psw">Forgot <a href="#">password?</a></span>
      </div>
</form>
</div>

</body>
</html>