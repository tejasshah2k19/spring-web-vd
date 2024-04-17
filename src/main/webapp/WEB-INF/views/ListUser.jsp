<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
	<h2>List User</h2>
	<table border="1">
		<tr>
			<th>FirstName</th>
			<th>Email</th>
		</tr>

		<c:forEach items="${users}" var="u">
		
		<tr>
			<td>${u.firstName}</td>
			<td>${u.email}</td>
		</tr>

		</c:forEach>


	</table>

</body>
</html>