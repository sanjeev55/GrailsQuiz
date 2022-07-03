<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/24/2017
  Time: 11:37 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<form method="post" action="../update">
    <input type="hidden" name="id" value="${q.id}"><br>
    <input type="text" name="question" value="${q.question}"><br>
    <input type="text" name="option1" value="${q.option1}"><br>
    <input type="text" name="option2" value="${q.option2}"><br>
    <input type="text" name="option3" value="${q.option3}"><br>
    <input type="text" name="option4" value="${q.option4}"><br>
    <input type="text" name="correctAnswer" value="${q.correctAnswer}"><br>
    <input type="text" name="category" value="${q.category}"><br>


    <input type="submit" value="Update"><br>
</form>
</body>
</html>