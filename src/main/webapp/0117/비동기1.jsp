<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2024-01-17
  Time: AM 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>JSP : JAVA Server Page</h1>
<%
  request.setCharacterEncoding("UTF-8");

  String userNmae = request.getParameter("name");
  String userId = request.getParameter("id");

%>

<table border="1">
  <tr>
    <td>아이디</td>
    <td><%= userId%></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><%= userNmae%></td>
  </tr>
</table>
</body>
</html>
