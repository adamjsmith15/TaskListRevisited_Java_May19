<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css" rel="stylesheet" integrity="sha384-w6tc0TXjTUnYHwVwGgnYyV12wbRoJQo9iMlC2KdkdmVvntGgzT9jvqNEF/uKaF4m" crossorigin="anonymous">
<meta charset="UTF-8">
<title>TaskList Home</title>
</head>
<body>
<h1>Task List</h1>
<p>Please enter your e mail and password to log into the task list, if you are not in the list, a new user will be created.</p>
<form action="adduser">
Email: <input type="text" name="email">
Password: <input type="password" name="password">
<input type="submit" value="Submit">
</form>
<a href="nouser">View Task List Without Logging In</a>
<br>
<a href="gotoaddtasks">Add a Task</a>
<br>
<a href="searchlistpage">Search List</a>
</body>
</html>