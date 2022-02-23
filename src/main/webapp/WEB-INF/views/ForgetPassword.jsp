<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget	Password</title>
</head>
<body>
<h2>ForgetPassword</h2>

<form action="forgetpassword" method="post">
	Email : <input type="text" name="email"><br><br>
	<input type="submit" value="Get Me Back"/> 

</form>
${error}

</body>
</html>