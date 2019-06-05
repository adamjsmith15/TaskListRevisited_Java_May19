<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
</head>
<body>
<h1>Search Tasks</h1>
<form action="searchlist">
Email: <input type="text" name="email">
<br>
Tasks Before: <input type="radio" name="find" value="Before">
Tasks After: <input type="radio" name="find" value="After">
Due Date: <input type="date" name="duedate">

<br>
Not Complete: <input type="radio" name="complete" value="Not Complete">
Complete: <input type="radio" name="complete" value="Complete">
<br>
<input type="submit" value="Search">
</form>
<a href="/">Home</a>
<br>
<a href="nouser">View Task List Without Logging In</a>
<br>
<a href="gotoaddtasks">Add a Task</a>
</body>
</html>