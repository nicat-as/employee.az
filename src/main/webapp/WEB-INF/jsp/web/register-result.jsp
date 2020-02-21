<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.10.19
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>
    <title>Registration Result</title>
</head>

<body>
    <c:choose>
        <c:when test="${not empty errorMessage}">
            ${errorMessage}
        </c:when>
        <c:otherwise>
            <h2>Registration Success</h2>
        </c:otherwise>
    </c:choose>
</body>


</html>
