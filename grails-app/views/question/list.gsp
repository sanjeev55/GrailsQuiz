<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/20/2017
  Time: 8:09 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<a href="create">New Question</a>
<table border="1">
    <tr>
        <th>Question</th>
        <th>Option1</th>
        <th>Option2</th>
        <th>Option3</th>
        <th>Option4</th>
        <th>Correct Answer</th>
        <th>Category</th>

    </tr>
    <g:each in="${q}" var="i">


        <tr>
            <td><a href="show/${i.id}">${i.question}</a></td>
            <td>${i.option1}</td>
            <td>${i.option2}</td>
            <td>${i.option3}</td>
            <td>${i.option4}</td>
            <td>${i.correctAnswer}</td>
            <td>${i.category}</td>
            <td><a href="edit/${i.id}">Edit</a></td>
            <td><a href="delete/${i.id}">Delete</a></td>
        </tr>
    </g:each>

</body>
</html>