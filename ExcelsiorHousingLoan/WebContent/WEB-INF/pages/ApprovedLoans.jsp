<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Applied Loan Page</title>
  <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=yes, maximum-scale=1,user-scalable=no">


<style>
  .container{

  }

  h1.header {
      background-color: #f1f1f1;
      padding: 20px;
      text-align: center;
    }

    .tab{
       margin-left: auto;
       margin-right: auto;
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

    table, th, td {
      border: 3px solid #f1f1f1;
      border-spacing: 0;
}

.navbar a:hover{
  background-color: red;
}

</style>



</head>
<body>



  <div class="col-md-12 col-xs-12 container">

  <div class="col-md-12 col-xs-12 header">
      <h1 class="header">Excelsior Home Loans</h1>
  </div>


  <div class="col-md-12 col-xs-12 navbar">
    <div class="col-md-12 col-xs-12">
      <a href="AdminHome.html">Home</a>
      <a href="AdminAppliedLoans.html">View Applied Loans</a>
      <a href="AdminApprovedLoans.html">View Approved Loans</a>
     
     <a href="Home.html" style="float: right;">Logout</a>
    </div>
  </div><br>


  <div class="col-xs-12 col-md-12">
    <table  class="tab" cellpadding="10";> 
      <tr>
        <th>User Id</th>
        <th>Loan Id</th>
        <th>Tenure</th>
        <th>Interest Rate</th>
        <th>Amount</th>
        <th>Max. Loan Amount Grantable</th>



        <th><a href="#">View Application Details</a></th>
      </tr>

      <c:forEach var="apploan" items="${ requestScope.employeeList }">
      <c:url var="viewAppliedLoansUrl" value="deleteEmployee.do">
        <c:param name="employeeId" value="${ emp.employeeId }"/>
        <c:param name="employeeName" value="${ emp.employeeName }"/>
        <c:param name="employeeSalary" value="${ emp.employeeSalary }"/>
      </c:url>
    
      <tr>
        <td><c:out value="${ apploan.employeeId }"/></td>
        <td><c:out value="${ apploan.employeeName }"/></td>
        <td><c:out value="${ apploan.employeeSalary }"/></td>
      </tr>

<!-- After getting data from db delete below tr its just for ref -->
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>

    </table>
  </div>

</div>

</body>
</html>