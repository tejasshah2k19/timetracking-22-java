<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<td>BadgeId</td>
				<td>BadgeName</td>
				<td>Action</td>
			</tr>
		</thead>

		<tbody>


			<c:forEach items="${badges}" var="b">
				<tr>
					<td>${b.badgeId}</td>
					<td>${b.badge }</td>
					<td><a href="deletebadge?badgeId=${b.badgeId}">Delete</a> | Edit </td>
				</tr>
			</c:forEach>

		</tbody>
	</table>

</body>
</html>