<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/29/2017
  Time: 4:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each var="user" in="${searchResult?.results}">%{--the "?" checks whether the list is null or not--}%
<h2>${user.name}</h2>
    <p>${user.email}</p>
</g:each>
</body>
</html>