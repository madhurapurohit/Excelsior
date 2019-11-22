<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <title>Customer Login</title>


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
  <script src="js/EMICalculator.js"></script>

  <style>
    h1.topic {
      text-align: center;
      color: #096487;
    }

    p.note {
      text-align: center;
    }

    h3 {
      color: white;
    }

    .personal {
      margin-top: -20px;
    }



    h3.personal {
      background-color: #006699 !important;
      text-align: center;
    }

    h3.educational {
      background-color: #006699 !important;
      text-align: center;
    }

    h3.selsub {
      background-color: #006699 !important;
      text-align: center;
      /*background-color: red;*/
    }



    p.department {
      style: "padding-left: 32px;"
    }

    #main_cover1 {
      /*		margin-right: 5%;
		margin: 15px;
		margin-left: 4%;*/
      border: 2px solid grey;
      padding: 0px;
    }

    /*html,body{
	overflow-x:hidden;
	}*/

    /*.button{
	color: #006699;
}
*/

    .button {
      background-color: #006699;
      border: none;
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      /*display: inline-block;*/
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
    }

    input[type=text],
    input[type=date],
    input[type=email],
    input[type=number],
    select {
      height: 25px;
      /*border-radius: 5px;*/
    }


    #panel-default {
      width: 50%;
    }

    /*Header css*/

    h1.header {
      background-color: #f1f1f1;
      padding: 20px;
      text-align: center;
    }



    body {
      font-family: Arial, Helvetica, sans-serif;
    }

    .navbar {
      overflow: hidden;
      background-color: #333;
    }

    .navbar a {
      float: left;
      font-size: 16px;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    .dropdown {
      float: left;
      overflow: hidden;
    }

    .dropdown .dropbtn {
      font-size: 16px;
      border: none;
      outline: none;
      color: white;
      padding: 14px 16px;
      background-color: inherit;
      font-family: inherit;
      margin: 0;
    }

    .navbar a:hover,
    .dropdown:hover .dropbtn {
      background-color: red;
    }

    .dropdown-content {
      display: none;
      position: absolute;
      background-color: #f9f9f9;
      min-width: 160px;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      z-index: 1;
    }

    .dropdown-content a {
      float: none;
      color: black;
      padding: 12px 16px;
      text-decoration: none;
      display: block;
      text-align: left;
    }

    .dropdown-content a:hover {
      background-color: #ddd;
    }

    .dropdown:hover .dropdown-content {
      display: block;
    }


    /*below is the code for slider*/

    body {
      font-family: Verdana, sans-serif;
      margin: 0
    }

    .mySlides {
      display: none
    }

    img {
      vertical-align: middle;
    }

    /* Slideshow container */

    .slideshow-container {
      max-width: 1000px;
      position: relative;
      margin: auto;
    }

    /* Next & previous buttons */

    .prev,
    .next {
      cursor: pointer;
      position: absolute;
      top: 50%;
      width: auto;
      padding: 16px;
      margin-top: -22px;
      color: white;
      font-weight: bold;
      font-size: 18px;
      transition: 0.6s ease;
      border-radius: 0 3px 3px 0;
      user-select: none;
    }

    /* Position the "next button" to the right */

    .next {
      right: 0;
      border-radius: 3px 0 0 3px;
    }

    /* On hover, add a black background color with a little bit see-through */

    .prev:hover,
    .next:hover {
      background-color: rgba(0, 0, 0, 0.8);
    }

    /* Caption text */

    .text {
      color: #f2f2f2;
      font-size: 15px;
      padding: 8px 12px;
      position: absolute;
      bottom: 8px;
      width: 100%;
      text-align: center;
    }

    /* Number text (1/3 etc) */

    .numbertext {
      color: #f2f2f2;
      font-size: 12px;
      padding: 8px 12px;
      position: absolute;
      top: 0;
    }

    /* The dots/bullets/indicators */

    .dot {
      cursor: pointer;
      height: 15px;
      width: 15px;
      margin: 0 2px;
      background-color: #bbb;
      border-radius: 50%;
      display: inline-block;
      transition: background-color 0.6s ease;
    }

    .active,
    .dot:hover {
      background-color: #717171;
    }

    /* Fading animation */

    .fade {
      -webkit-animation-name: fade;
      -webkit-animation-duration: 1.5s;
      animation-name: fade;
      animation-duration: 1.5s;
    }

    @-webkit-keyframes fade {
      from {
        opacity: .4
      }
      to {
        opacity: 1
      }
    }

    @keyframes fade {
      from {
        opacity: .4
      }
      to {
        opacity: 1
      }
    }

    /* On smaller screens, decrease text size */

    @media only screen and (max-width: 300px) {
      .prev,
      .next,
      .text {
        font-size: 11px
      }
    }

    /*FOOTER CSS BELOW*/

    h4 {
      text-align: center;
    }


    body,
    html {
      height: 100%;
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
    }

    * {
      box-sizing: border-box;
    }

    .bg-image {
      /* The image used */
      background-image: url("images/calculation.jpg");

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
      background-color: rgb(0, 0, 0);
      /* Fallback color */
      background-color: rgba(0, 0, 0, 0.4);
      /* Black w/opacity/see-through */
      color: rgb(12, 3, 3);
      font-weight: bold;
      border: 3px solid #f1f1f1;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      z-index: 2;
      width: 400px;
      padding: 10px;
      text-align: center;
    }

    label {
      float: left;
    }

    button {
      color: #23527c;
    }

    h2 {
      font-size: 25px;
    }

    input[type=text] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    #calculate {
      display: inline-block;
      border-radius: 4px;
      background-color: #c24e4e;
      border: none;
      color: #FFFFFF;
      text-align: center;
      font-size: 18px;
      padding: 20px;
      width: 150px;
      transition: all 0.5s;
      cursor: pointer;
      margin: 5px;
    }

    .button span {
      cursor: pointer;
      display: inline-block;
      position: relative;
      transition: 0.5s;
    }

    .button span:after {
      content: '\00bb';
      position: absolute;
      opacity: 0;
      top: 0;
      right: -20px;
      transition: 0.5s;
    }

    .button:hover span {
      padding-right: 25px;
    }

    .button:hover span:after {
      opacity: 1;
      right: 0;
    }
  </style>
</head>

<body>

  <div class="col-md-12 col-xs-12 header">
   
      <h1 class="header">Excelsior Home Loans</h1>
 
  </div>


  <div class="col-md-12 col-xs-12 navbar">

    <div class="col-md-12 col-xs-12">

      <a href="logout">Home</a>
     <!--  <a href="#myfooter">About Us</a> -->
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


  <div class="col-md-12 col-xs-12 bg-image">

  </div>

  <div class="col-md-12 col-xs-12 bg-text" style ="margin-top: 125px;">
    <h2 style="text-align: center">EMI CALCULATOR</h2>

    <table align=center width="100%" border="0" cellpadding="5" cellspacing="" id=emi_calc>
      <form name=EMI>

        <td>Loan </td>
        <td>
          <input type="text" id="loan_amt" name="loan_amt">
        </td>
        </tr>

        <tr>
          <td>Tenure</td>
          <td>
            <input type="text" id="tenure" name="tenure"> </td>
        </tr>
        <tr>
          <td>Annual Interest Rate </td>
          <td>
            <input type="text" id="roi" name="roi" value="8.5" readonly> </td>
        </tr>

        <tr>
          <td> </td>
          <td>
            <input type="button" value="calculate" id="calculate" name="calculate" style="vertical-align:middle" onclick="EMICalculator()">
          </td>

        </tr>

        <tr>
          <td>EMI</td>
          <td>
            <input type="text" id="emi" name="emi">
          </td>
        </tr>


    </table>
  </div>

</body>

</html>