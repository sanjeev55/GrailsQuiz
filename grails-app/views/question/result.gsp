<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/24/2017
  Time: 5:29 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table>
    <tr>
        <th>Question</th>
        <th>User</th>
        <th>Marks</th>
    </tr>
    <g:each in="${r}" var="i">
        <tr>
            <td>${i.question.id}</td>
            <td>${i.user.id}</td>
            <td>${i.marks}</td>
        </tr>
    </g:each>
</table>
</body>
</html>