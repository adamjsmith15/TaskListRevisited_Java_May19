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
		<table class="table" border=3>
			<thead>
				<tr>
					<td>Name</td>
					<td>Tasks</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ task }" var="item">
					<tr>
						<td>${ item.email }</td>
						<td>
						<table border = 1>
							<thead>
								<tr>
									<td>Description</td>
									<td>Due Date</td>
									<td>Completed</td>
								</tr>
							</thead>
						
						<c:forEach items="${ item.tasks}" var="list"> 
						<tr>
						<td>${ list.description }</td>
						<td>${ list.duedate } </td>
						<td>${ list.formattedComplete }</td> 
						<td><a href="edit?id=${ list.id }">Edit</a></td>
						<td><a href="complete?id=${ list.id }" >Complete</a></td>
						</tr>
						</c:forEach>
						
						</table>
						</td>
						<td><a href="addusertask?id=${ item.id }">Add Task</a></td>
						<td><a href="deleteuser?id=${ item.id }" >Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		</div>
</body>
</html>