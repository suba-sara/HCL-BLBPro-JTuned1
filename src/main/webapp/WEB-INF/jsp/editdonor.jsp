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
	<style>
body {
    background-image: url("/images/background.jpg");
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donor Registration</title>
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

	<form:form action="/donordetails/save" method="post"
		modelAttribute="donors">
		<div align="center">
			<table>
				<tr>
					<h3>EDIT DONOR</h3>
				</tr>
				<tr>
					
					<td>Donor Id:</td>
					
					
					<td><form:input path="donorId" value="${donors.getDonorId()}"
							readonly="true" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Donor Name:</td>
					
					
					<td><form:input path="donorName" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Hospital Name:</td>
					
					
					<td><form:input path="hospitalName" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Mobile Number:</td>
					
					
					<td><form:input path="mobileNumber" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Gender:</td>
					
					
					<td><form:radiobutton path="gender" value="Male" />Male <form:radiobutton
							path="gender" value="Female" />Female</td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Email:</td>
					
					
					<td><form:input path="email" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Blood Group:</td>
					
					
					<td><form:select style="width: 165px;" path="bloodGroup">
							<form:option value="none" label="Select" />
							<form:option value="A+ve" label="A+ve" />
							<form:option value="A-ve" label="A-ve" />
							<form:option value="B+ve" label="B+ve" />
							<form:option value="B-ve" label="B-ve" />
							<form:option value="O+ve" label="O+ve" />
							<form:option value="O-ve" label="O-ve" />
							<form:option value="AB+ve" label="AB+ve" />
							<form:option value="AB-ve" label="AB-ve" />
						</form:select></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Units:</td>
					
					
					<td><form:input path="units" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Address:</td>
					
					
					<td><form:input path="address" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td></td>
					
					
					<td><input type="submit" value="Save" id="valid_sv"
						name="save" /> <input type="reset" value="Cancel"></td>
					
				</tr>
			</table>
		</div>
	</form:form>
</body>
</html>