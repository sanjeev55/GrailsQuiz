<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/17/2017
  Time: 3:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <g:javascript library="jquery"></g:javascript>
    <meta name="layout" content="main"/>
</head>

<body>
<a href="create">New User</a>
<table border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <g:each in="${u}" var="i">


    <tr>
        <td>${i.name}</td>
        <td><a href="show/${i.id}">${i.email}</a></td>
        <td>${i.password}</td>
        <td><a href="edit/${i.id}">Edit</a></td>
        <td><a href="delete/${i.id}">Delete</a></td>
    </tr>
    </g:each>
</table>

<g:form controller="user" action="searchUser">
    <input type="text" name="q" placeholder="Search User">
</g:form>

<g:remoteField name="t" controller="user" action="welcome" update="h"></g:remoteField>
<div id="h">

</div>
</body>
</html>