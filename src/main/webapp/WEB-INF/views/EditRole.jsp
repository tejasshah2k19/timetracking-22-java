<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Role</title>
</head>
<body>
	<form action="updaterole" method="post" >
		<input type="hidden" value="${role.roleId}" name="roleId"/>
		
		RoleName : <input type="text" name="roleName" value="${role.roleName }"/><br><Br>
		<input type="submit" value="Update Role"/>
	</form>

</body>
</html>