<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 5/27/21
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>One Ring to Rule them All</title>
    <%-- Bootstrap CSS --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <%--      Custom Styling--%>
<%--    <link rel="stylesheet" href="css/custom_styling.css">--%>
</head>
<%--<%@include file="partials/head.jsp"%>--%>
<body>
<%@include file="partials/navbar.jsp"%>
<%-- Setting up Attributes--%>
<% String username = request.getParameter("username");
String password = request.getParameter("password");
    request.setAttribute("username", username);
    request.setAttribute("password", password);
    %>
<form method="POST" action="login.jsp">
<fieldset>
    <legend>
        <h1>Login To Black Sheep Cannabis</h1>
    </legend>
    <div class="dropdown">
        <form class="px-4 py-3">
            <div class="mb-3 mx-2">
                <label for="username" class="form-label">Username</label>
                <input type="username" name="username" class="form-control" id="username">
            </div>
            <div class="mb-3 mx-2">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
            </div>
            <div class="mb-3 mx-2">
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="dropdownCheck">
                    <label class="form-check-label" for="dropdownCheck">
                        Remember me
                    </label>
                </div>
            </div>
            <button type="submit" class=" mb-3 mx-2 btn btn-primary">Sign in</button>
        </form>
        <div class="mx-2"></div>
        <a class="mb-3 mx-2" href="#">New around here? Sign up</a>
        <a class="mb-3 mx-2" href="#">Forgot password?</a>
    </div>
</fieldset>
</form>

<%-- Checking for proper username and password --%>
<c:choose>
    <c:when test="${username == 'admin' && password == 'password'}">
        <%
            response.sendRedirect("/profile.jsp");
            %>
    </c:when>
<%--    <c:when test="${username != 'admin' || password != 'password'}">--%>
<%--        <% response.sendRedirect("partials/error.jsp"); %>--%>
<%--    </c:when>--%>
</c:choose>

<%--<%@include file="partials/footer.jsp"%>--%>
<%-- Bootstrap CSS --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<%-- custom JS --%>
<script src="js/custom_js.js"></script>
</body>
</html>
