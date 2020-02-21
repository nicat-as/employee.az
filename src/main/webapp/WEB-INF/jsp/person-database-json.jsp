<%@ page import="com.google.gson.Gson"%><%@ page import="az.employee.domain.DataTableResult"%>
<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%
    Gson gson = new Gson();
    DataTableResult result = (DataTableResult) request.getAttribute("dataTableResult");
    String json = gson.toJson(result);
    out.print(json);
%>