<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link href="resources/css/mainpage.css" rel="stylesheet">
	
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <li><a href="login.htm"><b>Login/Sign in here</b></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div>
</nav>


	<div align="center">
		<h3>
			<a href="/registration/addregistration">New User Registration</a>
		</h3>
		<form:form action="signin" method="post" modelAttribute="user">
			<table>
				<tr>
					<h1>Login</h1>
				</tr>
				<tr>
					<h3>${SPRING_SECURITY_LAST_EXCEPTION.message}</h3>
				</tr>
				<tr>
					<tc>
					<td>User Name</td>
					</tc>
					<tc>
					<td><form:input path="username" /></td>
					</tc>
				</tr>
				<tr>
					<tc>
					<td>Password</td>
					</tc>
					<tc>
					<td><form:input path="password" /></td>
					</tc>
				</tr>
				<tr>
					<tc>
					<td></td>
					</tc>
					<tc>
					<td><input type="submit" value="Sign in" name="save" />
				</tr>

			</table>
		</form:form>
	</div>
</body>
</html>