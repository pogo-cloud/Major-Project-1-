<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="formvoter">
<form action="adminLogin" method="post">
<h3>Admin Login</h3>
<label for="name" class="form-elements"><b>Name</b></label>
<br>
<input id="name" name="adminName" class="form-elements" type="text"/>
<br>
<label for="password" class="form-elements"><b>Password</b></label>
<br>
<input id="password" name="password" class="form-elements" type="password"/>
<br>
<button type="Submit" class="form-elements form-button">Login</button>
<br>
</form>
</div>
</body>
</html>