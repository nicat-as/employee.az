<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 11.12.19
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload test</title>
</head>
<body>
    <h2>Upload file</h2>
    <form method="post" action="rest/candidates/11/profile/image" enctype="multipart/form-data">
        <input type="file" name="image"/> <br/>
        <input type="submit">
    </form>

    <br/>

    <img src="http://localhost:8080/rest/candidates/11/profile/image" width="300" height="300"/>
</body>
</html>
