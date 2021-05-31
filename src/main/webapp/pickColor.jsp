<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/31/21
  Time: 1:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick color</title>
</head>
<body>
<form action="/pickColor" method="post">
    <label for="colorInput"></label>
        <input id="colorInput" type="text" name="color">
    <input type="submit" placeholder="Click to see color!">
</form>

</body>
</html>
