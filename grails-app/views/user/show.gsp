<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/17/2017
  Time: 4:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<p>Name: </p>${u.name}<br>
<p>Email:</p> ${u.email}<br>
<p>Password:</p> ${u.password}<br>

<a href="../edit/${u.id}">Edit</a><br>
<a href="../delete/${u.id}">Delete</a>
</body>
</html>