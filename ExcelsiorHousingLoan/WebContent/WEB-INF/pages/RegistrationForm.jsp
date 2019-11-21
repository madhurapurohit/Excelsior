<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Registration Form</title>
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=yes, maximum-scale=1,user-scalable=no"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/stdstyle1.css"> -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.header{
    color: grey;
    position: relative;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=Number],  input[type=date], input[type=email] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus, input[type=Number]:focus{
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  /*background-color: #4CAF50;*/
  background-color: grey;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
h1,p{
    text-align: center;
}
</style>
</head>
<body>

        <div class="col-md-12 col-xs-12">
    
        <div class="col-md-12 col-xs-12 header">
            <marquee scrollamount="25"><h1 class="header">Excelsior Home Loans</h1></marquee>
        </div>

        <div class="col-xs-12 col-md-12 form">

            <form action="addUser.do" method="POST">
              <div class="container">
                <font face="algerian">
                <h1>Registeration Form </h1>
                </font>
                <p>Please fill in this form to create an account.</p>
                <hr>

                <label><b>First Name</b></label>
                <input type="text" id="fname" placeholder="Enter First Name" name="fname" required>

                <label><b>Middle Name</b></label>
                <input type="text" placeholder="Enter Middle Name" name="mname" required>

                <label><b>Last Name</b></label>
                <input type="text" placeholder="Enter Last Name" name="lname" required>

                <label><b>Email</b></label>
                <input type="email" placeholder="Enter Email" name="email" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="pwd" required>

                <label><b>Mobile Number</b></label>
                <input type="text" placeholder="Enter Mobile Number" name="mob" required>

                <label><b>Nationality</b></label>
                <input type="text" placeholder="Enter your Nationality" name="nationality" required>

                <label><b>Gender</b></label><br>
                <input type="radio" name="gender" value="male" checked> Male<br>
                <input type="radio" name="gender" value="female"> Female<br>
                <input type="radio" name="gender" value="other"> Other<br>

                <br><label>Date of Birth</label>
                <input type="text" name="dob" palceholder="Enter Date of Birth in Eg. 17-Dec-1997">
      
                <hr>
                <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

                <button type="submit" class="registerbtn">Register</button>
              </div>
              
              <div class="container signin">
                <p>Already have an account? <a href="CustomerLogin.html">Login</a>.</p>
              </div>
            </form>
            </div>
        </div>
</html>