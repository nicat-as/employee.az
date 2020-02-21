<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 13.12.19
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2>Recent Jobs</h2>
    <table id="jobs">
        <tr>
            <td>Job ID</td>
            <td>Company</td>
            <td>Position</td>
            <td>Salary</td>
        </tr>
    </table>
</body>
<script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        $.ajax({
            url: 'http://localhost:9090/rest/jobs/recent',
            success: function (data) {
                console.log('server response = ' + data);
                for (var i = 0; i < data.length; i++) {
                    console.log(data[i].id + ' ' + data[i].company.name + ' ' + data[i].position);
                }
            }
        });
    });
</script>
</html>
