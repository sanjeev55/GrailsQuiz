<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/24/2017
  Time: 12:04 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<p>Question</p>${q.question}<br>
<p>Option1</p>${q.option1}<br>
<p>Option2</p>${q.option2}<br>
<p>Option3</p>${q.option3}<br>
<p>Option4</p>${q.option4}<br>
<p>Correct Answer</p>${q.correctAnswer}<br>
<p>Category</p>${q.category}<br>

<a href="../edit/${q.id}">
    <button>Edit</button>
</a>
<a href="../delete/${q.id}">
    <button>Delete</button>
</a>

</body>
</html>