<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add task</title>
</head>
<body>
<p>Please use the id listed below to assign this task to that person</p>
<form action="addtask">
UserID: <input type="text" name="userid">
Description: <input type="text" name="description">
Due Date:<input type="date" name="duedate">
<input type="submit" value="Submit">
</form>
	<div class="container">
		<table class="table" border=1>
			<thead>
				<tr>
					<td>Id</td>
					<td>Email</td>
				</tr>
				<c:forEach items="${ users }" var ="u">
				<tr>
				<td>${ u.id }</td>
				<td>${ u.email }</td>
				</tr>
				</c:forEach>
			</thead>
			<tbody>
			</tbody>
			</table>
			</div>

</body>
</html>