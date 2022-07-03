<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/24/2017
  Time: 4:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:form method="post" controller="question" action="playQuizNext">
    <input type="hidden" name="correctAnswer" value="${q.correctAnswer}">
    <input type="hidden" name="category" value="${q.category}">
    <input type="hidden" name="id" value="${q.id}">

    <h1>${q.question}</h1>
    <input type="radio" name="option" value="${q.option1}">${q.option1}
    <input type="radio" name="option" value="${q.option2}">${q.option2}
    <input type="radio" name="option" value="${q.option3}">${q.option3}
    <input type="radio" name="option" value="${q.option4}">${q.option4}

    <input type="submit" value="Next">
</g:form>

</body>
</html>