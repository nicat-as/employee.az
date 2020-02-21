<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 10.10.19
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Person Managment</title>
    <style>
        table,td {
            border: 1px solid red;
        }
    </style>
</head>
<body>

<%--<c:choose>--%>
<%--    <c:when test="${not empty requestScope.personList}">--%>
<%--        <h1>Person List</h1>--%>
<%--        <table>--%>
<%--            <tr>--%>
<%--                <td>ID</td>--%>
<%--                <td>Name</td>--%>
<%--                <td>Surname</td>--%>
<%--                <td>Registration Date</td>--%>
<%--                <td>Birth Date</td>--%>
<%--                <td>Action</td>--%>
<%--            </tr>--%>
<%--            <c:forEach items="${requestScope.personList}" var="person">--%>
<%--                <tr>--%>
<%--                    <td>${person.id}</td>--%>
<%--                    <td>${person.name}</td>--%>
<%--                    <td>${person.surname}</td>--%>
<%--                    <td>${person.registrationDate}</td>--%>
<%--                    <td>${person.birthDate}</td>--%>
<%--                    <td>--%>
<%--                        <a href="person?action=view&id=${person.id}">View</a>--%>
<%--                    </td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        <h1>Not Data!</h1>--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>

<c:choose>
    <c:when test="${not empty requestScope.personList}">
        <h1>Person List</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>SurName</td>
                <td>Registration Date</td>
                <td>Birth Date</td>
                <td>Action</td>
            </tr>
            <c:forEach items="${requestScope.personList}" var="person">
                <tr>
                    <td>${person.id}</td>
                    <td>${person.name}</td>
                    <td>${person.surname}</td>
                    <td>
                        ${person.registrationDate}
                    </td>
                    <td>${person.birthDate}</td>
                    <td>
                        <a href="person?action=view&id=${person.id}">View</a>
                        <a href="person?action=edit&id=${person.id}">Edit</a>
                        <a href="person?action=delete&id=${person.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise>
        <h2>Not Data!</h2>
    </c:otherwise>
</c:choose>
</body>
</html>
