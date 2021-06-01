<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 6/1/21
  Time: 12:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ad Listings</title>
</head>
<body>
    <h1>Here all Ads</h1>
 <c:forEach var="ad" items="${ads}">
     <div class="ads">
         <h2>${ad.title}</h2>
         <p>${ad.description}</p>
     </div>
 </c:forEach>
</body>
</html>
