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
	<form:form>
		<table>
			<tr>
				<th><label>Name:</label></th>
				<td><form:input path="name" /></td>
			</tr>

			<tr>
				<th><label></label></th>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<th><label></label></th>
				<td><form:input path="mob" /></td>
			</tr>
			<tr>
				<th><label></label></th>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<th><label></label></th>
				<td><form:input path="dob" /></td>
			</tr>
			<tr>
				<th><label></label></th>
				<td><form:input path="address" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>