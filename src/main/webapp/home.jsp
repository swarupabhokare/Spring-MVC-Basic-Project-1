<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family: Arial, Helvetica, sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#4facfe,#00f2fe);
}

.container{
background:white;
padding:50px;
border-radius:12px;
box-shadow:0 10px 25px rgba(0,0,0,0.2);
text-align:center;
width:400px;
}

h1{
color:#2c3e50;
font-size:32px;
margin-bottom:15px;
}

p{
font-size:17px;
color:#666;
margin-bottom:30px;
}

a{
display:inline-block;
padding:12px 28px;
background:#1e73d8;
color:white;
text-decoration:none;
border-radius:8px;
font-size:16px;
font-weight:bold;
transition:0.3s;
}

a:hover{
background:#155ab6;
transform:scale(1.05);
}

</style>

</head>

<body>

<div class="container">

<h1>Welcome to Student Portal</h1>

<p>Manage Student Enrollment Easily.</p>

<a href="/student-enrollment-form">Enroll Student</a>

</div>

</body>
</html>