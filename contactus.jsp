<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact us</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="formvoter">
<form action="Contact" method="post">
<label for="name" class="form-elements formtext"><b>Name:</b></label>
<br>
<input id="name" name="name" class="form-elements" type="text"/>
<br>
<label for="number" class="form-elements"><b>Phone Number:</b></label>
<br>
<input id="number" name="number" class="form-elements" type="number"/>
<br>
<label for="email" class="form_elements" style="margin-left:80px;"><b>Email:</b></label>
<br>
<input id="email" name="email" class="form-elements" type="email"/>
<br>
<label for="comments" class="form-elements"><b>Comments:</b></label>
<br>
<input id="comments" name="comment" class="form-elements" type="text"/>
<br>
<button type="submit" class="form-elements form-button">Submit</button>
</form>
</div>
</body>
</html>