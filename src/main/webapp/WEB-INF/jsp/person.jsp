<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 10.10.19
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Person Profile</title>
</head>
<body>

<c:choose>
    <c:when test="${not empty requestScope.person}">
        <table>
        <tr>
            ID:${requestScope.person.id}<br>
            Name:${requestScope.person.name}<br>
            Surname:${requestScope.person.surname}<br>
            Registration Date:${requestScope.person.registrationDate}<br>
            Birth Date:${requestScope.person.birthDate}<br>
        </tr>
        </table>
    </c:when>
    <c:otherwise>
        <h1>Profile not found!</h1>
    </c:otherwise>
</c:choose>
</body>
</html>
