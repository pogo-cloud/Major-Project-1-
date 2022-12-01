<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome User!</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@include file="navbar.jsp" %>
<body>
<div class="formvoter">
<form action="Vote" method="post">
<label for="voterNumber" class="form-elements" style="font-size:25px;text-align:center;margin-right:20px;margin-left:20px;"><b>Enter your voter card number:</b></label>
<br>
<input id="voterNumber" name="voterNumber" class="form-elements form-input"type="number"/>
<br>
<label for="partie" class="form-elements" class="form-elements" style="font-size:25px;text-align:center;margin-right:20px;margin-left:20px;"><b>Choose your partie:</b></label>
<br>
<select id="partie" name="partie" class="form-elements">
<option value="Aam aadmi party">Aam Aadmi Party</option>
<option value="BJP">BJP</option>
<option value="BSP">BSP</option>
<option value="Congress">Congress</option>
<option value="CPI">CPI</option>
</select>
<br>
<button type="submit" class="form-elements form-button">Submit</button>
</form>
</div>

</body>
</html>