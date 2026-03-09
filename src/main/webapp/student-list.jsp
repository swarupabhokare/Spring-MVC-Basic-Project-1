<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students List</title>

<style>

/* BODY */

body{
margin:0;
font-family: Arial, sans-serif;
background:#dfe3e8;
}

/* NAVBAR */

.navbar{
display:flex;
justify-content:space-between;
align-items:center;
background:#34495e;
padding:15px 50px;
}

.logo{
color:white;
font-size:22px;
font-weight:bold;
}

.nav-links{
list-style:none;
display:flex;
gap:30px;
margin:0;
padding:0;
}

.nav-links li a{
text-decoration:none;
color:#ecf0f1;
font-size:16px;
}

.nav-links li a:hover{
color:#1abc9c;
}

/* TABLE CONTAINER */

.container{
width:90%;
margin:40px auto;
background:white;
padding:20px;
border-radius:8px;
box-shadow:0 0 10px rgba(0,0,0,0.15);
}

/* TABLE */

table{
width:100%;
border-collapse:collapse;
}

th{
background:#1e73d8;
color:white;
padding:10px;
}

td{
padding:10px;
text-align:center;
border:1px solid #ddd;
}

tr:nth-child(even){
background:#f2f2f2;
}

h2{
text-align:center;
color:#2c3e50;
}
#update{
color:green;
text-decoration:none;
margin:5px
}
#delete{
color:red;
text-decoration:none;
padding:2px;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar">

<div class="logo">Student Portal</div>

<ul class="nav-links">
<li><a href="/">Home</a></li>
<li><a href="/student-enrollment-form">Enroll</a></li>
<li><a href="/student-list">Students</a></li>
</ul>

</nav>


<div class="container">

<h2>Students List</h2>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Qualification</th>
<th>Gender</th>
<th>Course</th>
<th>Timings</th>
<th>Address</th>
<th>Mobile No</th>
<th>Course Duration</th>
<th>Action</th>
</tr>

<c:forEach var="student" items="${students}">
<tr>
<td>${student.id}</td>
<td>${student.name}</td>
<td>${student.email}</td>
<td>${student.qualification}</td>
<td>${student.gender}</td>
<td>${student.course}</td>
<td>${student.timings}</td>
<td>${student.address}</td>
<td>${student.mobileNo}</td>
<td>${student.courseDuration}</td>
<td><a href="edit?id=${student.id}" id="update" >Update</a><a href="delete" id="delete">Delete</a></td>
</tr>
</c:forEach>

</table>

</div>

</body>
</html>