<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/28/21
  Time: 2:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guessing Game</title>
</head>
<body>
<h1>Let's Play A Game!!!</h1>
<h3>Guess a number!</h3>
<p>It will be 1,2, or 3!</p>

<%--    <legend>Guess Here</legend>--%>
    <form method="post" action="/guess">
        <input name="value" id="value" type="text">
        <input type="submit" value="see if you won!">
    </form>


</body>
</html>
