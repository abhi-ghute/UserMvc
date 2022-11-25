<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>Search User</h2>
	<form action="search" method="POST">
		<table border="1">
			<tr>
				<th><label>UserID</label></th>
				<td><input name="sid" /></td>
			</tr>
			<tr>
				<td><input type="reset" value="Reset"></td>
				<td><input type="submit" value="Search"></td>
			</tr>
		</table>
	</form>
	<a href="createuser"> Create User</a>
</div>


</body>
</html>