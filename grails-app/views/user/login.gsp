<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/24/2017
  Time: 3:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>testse</title>
    <meta name="layout" content="main"/>
</head>

<body>
<g:form method="post" controller="user" action="dashboard">
    Email:<input type="text" name="email" placeholder="Enter Email">
    Password:<input type="text" name="password" placeholder="Enter Password">
    <input type="submit" name="Login">
</g:form>
</body>
</html>