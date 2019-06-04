<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css" rel="stylesheet" integrity="sha384-w6tc0TXjTUnYHwVwGgnYyV12wbRoJQo9iMlC2KdkdmVvntGgzT9jvqNEF/uKaF4m" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Task List</title>
</head>
<body>
<h1>I am a task list!</h1>
	<div class="container">
		<table class="table" border=1>
			<thead>
				<tr>
					<td>Name</td>
					<td>Description</td>
					<td>Due Date</td>
					<td>Completed</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ task }" var="item">
					<tr>
						<td>${ item.email }</td>
						<c:forEach items="${ item.tasks} " var="list"> <td>${ list }</td></c:forEach>
						<td><a href="edit?id=${ item.id }">Edit</a></td>
						<td><a href="complete?id=${ item.id }" >Complete</a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		</div>
</body>
</html>