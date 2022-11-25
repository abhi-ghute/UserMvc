<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${empty user.studentID}">
<h2 style="color: red;">No details found.. please check </h2>
<a href="search"> Search User</a>
<a href="createuser"> Create User</a>
</c:if>

<c:if test="${not empty user.studentID}">
<div align="center">
<h2>Update User</h2>
	<form:form action="update" method="POST" modelAttribute="user">
		<table border="1">
			<tr>
				<th><label>User ID</label></th>
				<td><form:input path="studentID" readonly="true"/></td>
			</tr>
			<tr>
				<th><label>Name</label></th>
				<td><form:input path="name" /></td>
			</tr>

			<tr>
				<th><label>Email</label></th>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<th><label>Mobile No.</label></th>
				<td><form:input path="mob" /></td>
			</tr>
			<tr>
				<th><label>Age</label></th>
				<td><form:input path="age" /></td>
			</tr>
			<tr>
				<th><label>DOB</label></th>
				<td><form:input path="dob" type="date"/></td>
			</tr>
			<tr>
				<th><label>Address</label></th>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td><input type="reset" value="Reset"></td>
				<td><input type="submit" value="Update"></td>
				
			</tr>
		</table>
	</form:form>
	<a href="search"> Search User</a>
<a href="createuser"> Create User</a>
</div>
</c:if>
</body>
</html>