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

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"/>


</head>
<body>

<c:choose>
    <c:when test="${not empty requestScope.personList}">
        <h1>Person List</h1>
        <table id="person-table">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                    <td>SurName</td>
                    <td>Registration Date</td>
                    <td>Birth Date</td>
                    <td>Action</td>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        <h2>Not Data!</h2>
    </c:otherwise>
</c:choose>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

<script>
    $(document).ready(function() {
        $('#person-table').DataTable({
            "lengthMenu":[[5,10,15,20,50,-1],[5,10,15,20,50,"Hamisi"]],
            "processing": true,
            "serverSide": true,
            "ajax": "person?action=getPersonListAjax"
        });
    } );
</script

</html>
