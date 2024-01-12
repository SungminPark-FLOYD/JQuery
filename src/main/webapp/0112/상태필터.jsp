<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2024-01-12
  Time: AM 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    String name = request.getParameter("name");
    
    out.print("이름 :" + id);
%>
<p><%= id%></p>
<p><%= pass%></p>
<p><%= name%></p>
</body>
</html>
