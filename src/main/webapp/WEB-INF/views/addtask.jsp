<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css" rel="stylesheet" integrity="sha384-w6tc0TXjTUnYHwVwGgnYyV12wbRoJQo9iMlC2KdkdmVvntGgzT9jvqNEF/uKaF4m" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Add task</title>
</head>
<body>
<p>Adding task for ${ add.email }</p>
<form action="addtask" onsubmit="return validateId();">
<input id="id" type="hidden" name="userid" value="${ add.id }">
Description: <input type="text" name="description" required>
Due Date:<input type="date" name="duedate" required>
<input type="submit" value="Submit">
</form>
	<div class="container">
		<table class="table" border=1>
			<thead>
				<tr>
					<td>Email</td>
				</tr>
				<c:forEach items="${ users }" var ="u">
				<tr>
				<td>${ u.email }</td>
				<td><a href="addusertask?id=${ u.id }">Assign Task</a></td>
				</tr>
				</c:forEach>
			</thead>
			<tbody>
			</tbody>
			</table>
			</div>
<a href="/">Home</a>
<script  src="/script.js"></script>
</body>
</html>