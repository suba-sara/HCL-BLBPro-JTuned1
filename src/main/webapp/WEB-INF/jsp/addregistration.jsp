<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
<meta charset="ISO-8859-1">
<title>Registration Page</title>

<h3>${successmsg}</h3>
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
                        <a href="/donordetails/adddonor">Donate Blood</a>
                    </li>
                    <li>
                        <a href="/html/ContactUsPage.html">Contact Us</a>
                    </li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li><a href="/login"><b>Login/Sign in here</b></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div>
</nav>

<br>
<br>
<br>
	<form:form action="saveregistration" method="post"
		modelAttribute="regdetails">
		<div align="center">
			<table>
				<tr>
					<h3>User Registration</h3>
				</tr>
				<tr>
					
					<td>First Name:</td>
					
					
					<td><form:input path="firstName" /></td>
					
					
					<td><form:errors path="firstName" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Last Name:</td>
					
					
					<td><form:input path="lastName" /></td>
					
					
					<td><form:errors path="lastName" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Email:</td>
					
					
					<td><form:input path="email" /></td>
					
					
					<td><form:errors path="email" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Mobile Number:</td>
					
					
					<td><form:input path="mobileNo" /></td>
					
					
					<td><form:errors path="mobileNo" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Address:</td>
					
					
					<td><form:input path="address" /></td>
					
					
					<td><form:errors path="address" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>User Name:</td>
					
					
					<td><form:input path="userName" /></td>
					
					
					<td><form:errors path="userName" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td>Password:</td>
					
					
					<td><form:password path="password" /></td>
					
					
					<td><form:errors path="password" cssError="error" /></td>
					
				</tr><tr><td><br></td></tr>
				<tr>
					
					<td></td>
					
					
					<td><input type="submit" value="Save" name="save" /> <input type="reset" value="Cancel"></td>
					
				</tr>
			</table>
		</div>
	</form:form>

</body>
</html>