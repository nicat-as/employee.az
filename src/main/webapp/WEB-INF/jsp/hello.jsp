
<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 05.11.19
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hello Spring</title>
</head>
<body>

    <c:if test="${not empty customerName}">
        Hello:${customerName} , ${customerSurname} <br>
        Salary: ${salary}<br>
        Date:${date} <br>
    </c:if>

    <form action="/hello/" method="post">
        Name: <input type="text" name="name"><br>
        Surname: <input type="text" name="surname"> <br>
        Salary: <input type="text" name="salary"><br>
        <input type="submit" value="Send"> <br>
    </form>
</body>
</html>
