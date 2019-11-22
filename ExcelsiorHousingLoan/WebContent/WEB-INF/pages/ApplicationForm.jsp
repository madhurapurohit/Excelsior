<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<title>Excelsior Application Form</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=yes, maximum-scale=1,user-scalable=no">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/stdstyle1.css"> 
	<script type="text/javascript">

   


<!-- below is the start of onclick scroll -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
	// Select all links with hashes
$('a[href*="#personal1,#income1,#loan1,#document1"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#0"]')
  .click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^//, '') == this.pathname.replace(/^//, '')
      && 
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000, function() {
          // Callback after animation
          // Must change focus!
          var $target = $(target);
          $target.focus();
          if ($target.is(":focus")) { // Checking if the target was focused
            return false;
          } else {
            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
            $target.focus(); // Set focus again
          };
        });
      }
    }
  });
</script>



</head>

<body>

	<div class="col-md-12 col-xs-12 application" id="main_cover">


<div class="col-md-2 col-xs-12">
<div class="left_box" style="position: relative;">
    <div class="panel-group" id="">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a href="" class="">Application Data Links</a><!-- <i class="fa fa-caret-down"></i> -->
        </h4>
      </div>
	<div class="list-group-hover sidebar-widget-1" style="padding:0px;">

		<ul>
			<li>
				<a href="#personal1">Personal Information</a>
			</li>
			<li>
				<a href="#income1">Income Details</a>
			</li>
			<li>
				<a href="#loan1">Loan Details</a>
			</li>
			<li>
				<a href="#document1">Documents</a>
			</li>
		</ul>
	</div>

	</div>

</div>

</div>

</div>


	<div class="col-xs-12 col-md-10 appform"  id="main_cover1">
		<form action="applicationSubmit" method="POST">
		<h1 class="topic">Excelsior Application Form</h1>

			
			<div class="full_personal">
			<div class="col-xs-12 col-md-12">
			<div style="margin-top: 20px;">
			<h3 class="personal" id="personal1">Personal Information</h3><br>
			</div>
			</div>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12">
				<p class="textname">First Name :</p> 
			</div>
			<div class="col-md-4 col-xs-12 inputtype">
				<b>${ requestScope.userdetails.fname}</b>
			</div>
			<div class="col-md-2 col-xs-12">
				<p class="textname">Middle Name :</p>
			</div>
			<div class="col-md-4 col-xs-12">
				<b>${ requestScope.userdetails.mname}</b>	 
			</div>
			</div><br>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12">
				<p class="textname">Last Name :</p> 
			</div>
			<div class="col-md-4 col-xs-12 inputtype">
				<b>${ requestScope.userdetails.lname}</b>
			</div>
			<div class="col-md-2 col-xs-12">
				<p class="textname">Email-Id :</p>
			</div>
			<div class="col-md-4 col-xs-12">
				<b>${ requestScope.userdetails.email}</b>
			</div>
			</div><br>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12">
				<p class="textname">Gender :</p> 
			</div>
			<div class="col-md-4 col-xs-12 inputtype">
				<b>${ requestScope.userdetails.gender}</b>
			</div>
			<div class="col-md-2 col-xs-12">
				<p class="textname">Date of Birth :</p>
			</div>
			<div class="col-md-4 col-xs-12">
				<b>${ requestScope.userdetails.dob}</b>
			</div>
			</div><br>


			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Mobile Number</p> 	
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<b>${ requestScope.userdetails.mob}</b>
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Nationality</p> 
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<b>${ requestScope.userdetails.nationality}</b>
			</div>
			</div>

			<div class="col-md-12">
			<div class="col-md-3 col-xs-12"><br>
				<p class="textname">Permanent Address :</p> 
			</div>
			<div class="col-md-9 col-xs-12">
				<b><!-- Will get it from db --></b>
			</div>
			</div>

<!-- end of personal Information -->

		<div class="full_income">
			<div class="col-xs-12 col-md-12"><br>
			<div><br>
			<mark><h3 class="income" id="income1">Income Details</h3></mark>
			</div>
		</div>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Property Location</p> 
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" required="1" name="propertyloc" placeholder="Enter Location" >
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Property Name</p> 
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="propertyname" required="1" placeholder="Specify Property Name" >
			</div>
			</div>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12">
				<p class="textname">Estimated Amount</p> 
			</div>
			<div class="col-md-4 col-xs-12">
				<input type="text" class="fa fa-" required="1" name="propertyvalue" >
			</div>
			<div class="col-md-2 col-xs-12">
				<p class="textname">Type of Employement</p> 
			</div>
			<div class="col-md-4 col-xs-12">
				<select class="fa fa-" name="employementtype" required="1">
				<option >Salaried</option>
				<option >Contract</option>
				<option >Self-Employed</option>
				<option >Business</option>
				<option >Other</option>
				</select>
			</div>
			</div>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12">
				<p class="textname">Retirement Age</p> 
			</div>
			<div class="col-md-4 col-xs-12">
				<input type="text" class="fa fa-" required="1" name="retirementage" >
			</div>
			<div class="col-md-2 col-xs-12">
				<p class="textname">Organiization Type</p> 
			</div>
			<div class="col-md-4 col-xs-12">
				<select class="fa fa-" name="orgtype" required="1">
				<option >Private Sector</option>
				<option >Public Sector</option>
				<option >Other</option>
				</select>
			</div>
			</div>

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Employer Name</p> 
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="employername" placeholder="Enter Employer Name" >
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Monthly Income</p> 
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="monthlyincome" required="1" placeholder="Specify Property Name" >
			</div>
			</div>

			<!-- Income Ends here -->

			<div class="full_loan">
			<div class="col-xs-12 col-md-12"> 
			<div>
			<mark><h3 class="loan" id="loan1">Loan Details</h3></mark>
			</div>
		</div>


			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Maximum Loan Amount Grantable</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="maxloan"  required="1">
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Interest</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="interestrate" required="1" value="8.5" readonly>
			</div>
			</div><br>&nbsp;

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12">
				<p class="textname">Loan Amount</p> 
			</div>
			<div class="col-md-4 col-xs-12">
				<input type="text" class="fa fa-" required="1" name="loanamount" >
			</div>
			<div class="col-md-2 col-xs-12">
				<p class="textname">Tenure</p> 
			</div>
			<div class="col-md-4 col-xs-12">
				<select class="fa fa-" name="tenure" required="1">Months
				<option >12</option>
				<option >18</option>
				<option >24</option>
				<option >36</option>
				</select>
			</div>
			</div>

			End of Loan Details

			
		<div class="full_document">
			<div class="col-xs-12 col-md-12">
			<div>
			<mark><h3 class="loan" id="document1">Documents</h3></mark>
			</div>
		</div>

		<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">PAN Number</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="pan" placeholder="Enter PAN Card Number"  required="1">
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Upload PAN Card</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="pandoc">
			</div>
			</div><br>&nbsp;

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Aadhar Number</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="aadhar" placeholder="Enter Aadhar Card Number"  required="1">
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Upload Aadhar Card</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="aadhardoc">
			</div>
			</div><br>&nbsp;

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Voter Id Number</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="text" class="fa fa-" name="voterid" placeholder="Voter Id Card Number"  required="1">
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Upload Voter Id Card</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="voterdoc">
			</div>
			</div><br>&nbsp;

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Upload Salary Slip</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="salaryslipdoc">
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Upload Letter of Agreement</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="loadoc">
			</div>
			</div><br>&nbsp;

			<div class="col-md-12">
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Upload NOC From Builder</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="nocdoc">
			</div>
			<div class="col-md-2 col-xs-12"><br>
				<p class="textname">Agreement to Sale</p>
			</div>
			<div class="col-md-4 col-xs-12"><br>
				<input type="file" name="aggrementdoc">
			</div>
			</div><br>&nbsp;



			
	</div>


		<hr>

		<div class="col-md-12 col-xs-12">
			<input type="checkbox" name="s_agree" value="yes">  I accept and confirm that the information provided above is true to the best of my knowledge 
			and understand that if at any stage of the selection process, it comes to the notice that false information 
			has been furnished or there has been suppression of any factual information, 
			my application for the program will be disqualified.<br>&nbsp;
		</div>

		<div class="col-xs-12 col-md-12">
			<button class="button" class="fa fa-" type="submit">Submit</button>
			 </div>
			</div>
		





</form>
</div>
		</div>
		
	

</body>
</html>