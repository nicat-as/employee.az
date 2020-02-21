<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.11.19
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Invalid Token</title>
</head>
<body>
    <h1 style="color: red">
        <c:if test="${requestScope.errorMessage != null}">
            ${requestScope.errorMessage}
        </c:if>
    </h1>
</body>
</html>
