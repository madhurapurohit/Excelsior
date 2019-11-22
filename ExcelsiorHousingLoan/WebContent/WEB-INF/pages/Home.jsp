<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
	<!-- <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=yes, maximum-scale=1,user-scalable=no"> -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" type="text/css" href="js/popper.min.js"> -->
    <!-- <link href="css/font-awesome.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" type="text/css" href="css/stdstyle1.css">
    <!-- <link rel="stylesheet" type="text/css" href="jquery-ui-1.10.3/themes/base/jquery.ui.all.css"/> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-md-12 col-xs-12" id="main_cover">

		<!-- Below is the code for Header -->

		<div class="col-md-12 col-xs-12 header">
  			<h1 class="header">Excelsior Home Loans</h1>
		</div>

	<!-- Below is the code for nav bar i.e for hamburger
	for the drop down we hav commented bootstrap.min.css -->

<!-- 
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  			<div class="container">
  				<a class="navbar-brand" href="Home.jsp">Dough Rollers</a>
 				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    				<span class="navbar-toggler-icon"></span>
  				</button>

 			 	<div class="collapse navbar-collapse" id="navbarSupportedConten -->




		<div class="col-md-12 col-xs-12 navbar">
		<div class="col-md-12 col-xs-12">
		  <a href="#home">Home</a>
		  <a href="#myfooter">About Us</a>
		  <div class="dropdown">
		    <button class="dropbtn">Calculator 
		      <i class="fa fa-caret-down"></i>
		    </button>
		    <div class="dropdown-content">
		      <a href="emicalc">EMI Calculator</a>
		      <a href="eligbcalc">Eligibility Calculator</a>
		    </div>
		  </div>
		  <a href="customerLogin">Apply Now</a>
		  <div class="dropdown">
		    <button class="dropbtn">Login 
		      <i class="fa fa-caret-down"></i>
		    </button>
		    <div class="dropdown-content">
		      <a href="customerLogin">Customer Login</a>
		      <a href="adminLogin">Admin Login</a>
		    </div>
		  </div>
		<a href="#faqs" style="float: right;">FAQS</a>
		<a href="userRegisterPage" style="float: right;">Register</a>
		</div>
	</div>

	<!-- below is the code for slider -->

	<div class="slideshow-container">

		<div class="mySlides fade">
		  <div class="numbertext">2 / 3</div>
		  <img src="images/slider3.jpg" style="width: 100%;">
		  <div class="text">
		  	<a href="">Apply</a>
		  </div>
		</div>

		<div class="mySlides fade">
		  <div class="numbertext">3 / 3</div>
		  <img src="images/slider3.jpg" style="width: 100%;">
		  <div class="text">
		  	<a href="">Apply</a>
		  </div>
		</div>

		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>

		</div>
		<br>
		<div style="text-align:center">
		  <span class="dot" onclick="currentSlide(1)"></span> 
		  <span class="dot" onclick="currentSlide(2)"></span> 
		  <span class="dot" onclick="currentSlide(3)"></span> 
		</div>

		<script>
			var slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
			  showSlides(slideIndex += n);
			}

			function currentSlide(n) {
			  showSlides(slideIndex = n);
			}

			function showSlides(n) {
			  var i;
			  var slides = document.getElementsByClassName("mySlides");
			  var dots = document.getElementsByClassName("dot");
			  if (n > slides.length) {slideIndex = 1}    
			  if (n < 1) {slideIndex = slides.length}
			  for (i = 0; i < slides.length; i++) {
			      slides[i].style.display = "none";  
			  }
			  for (i = 0; i < dots.length; i++) {
			      dots[i].className = dots[i].className.replace(" active", "");
			  }
			  slides[slideIndex-1].style.display = "block";  
			  dots[slideIndex-1].className += " active";
			}
		</script>

		<!-- for Horizontal Line --><hr>

		<div class="col-xs-12 col-md-12 footer" id="myfooter">
			<div>
				<h2>About Us</h2>
			</div>
			<div>
			<p>
				Excelsior Home Loans is purely customer centric company which gives the following benefits
				Sense of accomplishment. Buying a home is one of the biggest financial investments you may make in your lifetime; and that's not just because of the sentimental value. ...
				Capital Appreciation. ...
				Low interest rate. ...
				Tax Benefit: Interest paid. ...
				Tax Benefit: Principal Repayment. ...
				Buying a home vs renting a house.
			</p>
			<h4>SMS EXCELSIOR HOME TO 57575</h4>
			</div>
		</div>

		<!-- ONLICK SCROLL -->

		<script>
		$(document).ready(function(){
		  // Add smooth scrolling to all links
		  $("a").on('click', function(event) {

		    // Make sure this.hash has a value before overriding default behavior
		    if (this.hash !== "") {
		      // Prevent default anchor click behavior
		      event.preventDefault();

		      // Store hash
		      var hash = this.hash;

		      // Using jQuery's animate() method to add smooth page scroll
		      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
		      $('html, body').animate({
		        scrollTop: $(hash).offset().top
		      }, 800, function(){
		   
		        // Add hash (#) to URL when done scrolling (default click behavior)
		        window.location.hash = hash;
		      });
		    } // End if
		  });
		});
		</script>




	</div>

</body>	

</html>