<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Enrollment</title>

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
box-shadow:0 2px 5px rgba(0,0,0,0.2);
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
font-weight:500;
transition:0.3s;
}

.nav-links li a:hover{
color:#1abc9c;
}

/* FORM CONTAINER */

.container{
width:460px;
margin:60px auto;
background:white;
padding:30px;
border-radius:10px;
box-shadow:0 0 12px rgba(0,0,0,0.15);
}

h2{
text-align:center;
margin-bottom:20px;
}

/* TABLE */

table{
width:100%;
}

td{
padding:10px;
}

/* INPUTS */

input[type=text],
select{
width:100%;
padding:8px;
border:1px solid #ccc;
border-radius:4px;
}

/* BUTTON */

input[type=submit]{
width:100%;
padding:12px;
background:#1e73d8;
border:none;
color:white;
font-size:16px;
border-radius:6px;
cursor:pointer;
margin-top:10px;
}

input[type=submit]:hover{
background:#155ab6;
}

/* RADIO & CHECKBOX */

.radio-group,
.checkbox-group{
display:flex;
gap:12px;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar">

<div class="logo">Student Portal</div>

<ul class="nav-links">
<li><a href="/">Home</a></li>
<li><a href="/student-enrollment-form"></a></li>
<li><a href="/student-list">Student List</a></li>
<li><a href="/about">About</a></li>
<li><a href="/contact">Contact</a></li>
</ul>

</nav>

<!-- FORM -->

<div class="container">

<h3 style="color:green;text-align:center;">${msg}</h3>

<h2>Student Enrollment Form</h2>

<form:form action="save" modelAttribute="student" method="post">

<table>

<tr>
<td>Enter Name</td>
<td><form:input path="name"/></td>
</tr>

<tr>
<td>Enter Email</td>
<td><form:input path="email"/></td>
</tr>

<tr>
<td>Enter Qualification</td>
<td>
<form:select path="qualification">
<form:option value="BCA">BCA</form:option>
<form:option value="BCS">BCS</form:option>
<form:option value="MCA">MCA</form:option>
<form:option value="MCS">MCS</form:option>
<form:option value="BTECH">BTECH</form:option>
<form:option value="BSC">BSC</form:option>
<form:option value="BE">BE</form:option>
</form:select>
</td>
</tr>

<tr>
<td>Enter Gender</td>
<td class="radio-group">
<form:radiobutton path="gender" value="Male"/> Male
<form:radiobutton path="gender" value="Female"/> Female
</td>
</tr>

<tr>
<td>Choose Course</td>
<td>
<form:select path="course">
<form:option value="Full Stack JAVA">Full Stack JAVA</form:option>
<form:option value="PYTHON">PYTHON</form:option>
<form:option value="Machine Learning">Machine Learning</form:option>
<form:option value="Data Science">Data Science</form:option>
<form:option value="Web Development">Web Development</form:option>
</form:select>
</td>
</tr>

<tr>
<td>Timings</td>
<td class="checkbox-group">
<form:checkbox path="timings" value="Morning"/> Morning
<form:checkbox path="timings" value="Afternoon"/> Afternoon
<form:checkbox path="timings" value="Evening"/> Evening
</td>
</tr>

<tr>
<td>Enter Address</td>
<td><form:input path="address"/></td>
</tr>

<tr>
<td>Enter Mobile Number</td>
<td><form:input path="mobileNo"/></td>
</tr>

</table>

<input type="submit" value="Save Student">

</form:form>

</div>

</body>
</html>