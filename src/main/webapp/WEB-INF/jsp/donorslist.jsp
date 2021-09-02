<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="resources/css/mainpage.css" rel="stylesheet">
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donor Details</title>

<style>
body {
    background-image: url("/images/background.jpg");
}
.myDiv {
	/* background-color: lightgreen; */
	text-align: center;
	/* border: 5px outset grey; */
}

a {
	/*color: #007bff;*/
	color: #0000ff;
}
td {
  width: 175px;
  text-align: Left;
  border: 2px ;
  padding: 5px;
  color:#000000;
  font-size: large;
  font-family: serif;
  
}
th:nth-child(even) {
	background-color: #00c0b6;
}

th:nth-child(even) {
	color: #ffffff;
}

th:nth-child(odd) {
	background-color: #00c0b6;
}

th:nth-child(odd) {
	color: #ffffff;
}

tr:nth-child(even) {
	background-color: #00c0b6;
}

.center {
	margin-left: auto;
	margin-right: auto;
}
</style>

</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <div class="col-md-1"></div>
      <img src = "/images/logo.jpg">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <img src = "/images/logo.jpg">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      <a class="navbar-brand" href="/registration/index"><b>Blood Bank</b></a>
      <div class="col-md-1"></div>
      <ul class="nav navbar-nav">
                    <li>
                        <a href="/registration/index">Home</a>
                    </li>
                    <li>
                        <a href="adddonor">Add Donor</a>
                    </li>
                    <li>
                        <a href="/donordetails/searchdonor">Search Donor</a>
                    </li>
                    <li>
                        <a href="/html/AboutUsPage.html">About Us</a>
                    </li>
                    <li>
                        <a href="/html/ContactUsPage.html">Contact Us</a>
                    </li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="/registration/index"><b>Sign out</b></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div>
</nav>
<br>
<br>
<br>

	<div class="mydiv">
		<!-- <a href="/registration/index">Home</a> <a href="adddonor">Add Donor</a> -->
		<table class="center" border="1" align="center" width=100%>
			<tr>
				<h3>Donor Details</h3>
			</tr>
			</div>
			<tr>
				<th>DonorId</th>
				<th>DonorName</th>
				<th>HospitalName</th>
				<th>MobileNo</th>
				<th>Gender</th>
				<th>Email</th>
				<th>BloodGroup</th>
				<th>Units</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
			<c:forEach var="dnp" items="${donorList}">
				<tr>
					<td>${dnp.donorId}</td>
					<td>${dnp.donorName}</td>
					<td>${dnp.hospitalName}</td>
					<td>${dnp.mobileNumber}</td>
					<td>${dnp.gender}</td>
					<td>${dnp.email}</td>
					<td>${dnp.bloodGroup}</td>
					<td>${dnp.units}</td>
					<td>${dnp.address}</td>
					<td><a href="edit/ + ${dnp.donorId}">Edit</a> <a
						href="delete+ ${dnp.donorId}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>