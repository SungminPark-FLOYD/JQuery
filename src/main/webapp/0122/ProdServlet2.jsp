<%@ page import="prod.vo.ProdVo" %>
<%@ page import="prod.service.ProdServiceImpl" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="com.google.gson.Gson" %><%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2024-01-23
  Time: AM 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ProdServiceImpl service = ProdServiceImpl.getInstance();

    //직렬화된 데이터를 stream을 이용하여 가져온다.
    StringBuffer buf = new StringBuffer();
    String line = null;
    BufferedReader br = request.getReader();
    while((line = br.readLine()) != null) {
        buf.append(line);
    }

    String reqData = buf.toString();

    Gson gson = new Gson();
    ProdVo vo = gson.fromJson(reqData, ProdVo.class);
    String prod_id = vo.getProd_id();


//    String prod_id = request.getParameter("prod_id");
    ProdVo prodVo = service.selectById(prod_id);
    request.setAttribute("prodVo", prodVo);
    request.getRequestDispatcher("/0122/ProdDataView.jsp").forward(request, response);
%>
