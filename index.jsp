<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>online voting</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="formvoter">
<form action="voterLogin" method="post">
<h3 style="padding-right:25px;">Enter Your Voter Number:</h3>
<label for="voterNumber" class="form-elements formtext"><b>Voter ID</b></label>
<br>
<input name="voterNumber" id="voterNumber" class="form-elements form-input" type="text"/>
<br>
<button type="submit" class="form-elements form-button">login</button>
<a href="adminlogin.jsp" class="index-a">Admin</a>

</form>
</div>
</body>
</html>