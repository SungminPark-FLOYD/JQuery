<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2024-01-24
  Time: AM 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String res = (String) request.getAttribute("res");
    if(res == null){
        %>
        {
            "flag" : "사용가능 id"
        }
<%    }else { %>
        {
            "flag" : "사용 불가능 id"
        }

<%
    }
%>
