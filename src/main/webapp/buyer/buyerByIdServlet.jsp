<%@ page import="buyer.service.BuyerServiceImpl" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="buyer.vo.BuyerVo" %><%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2024-01-23
  Time: PM 7:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BuyerServiceImpl service = BuyerServiceImpl.getInstance();
    String id = request.getParameter("buyer_id");
//    //직렬화된 데이터를 stream을 이용하여 가져온다.
//    StringBuffer buf = new StringBuffer();
//    String line = null;
//    BufferedReader br = request.getReader();
//    while((line = br.readLine()) != null) {
//        buf.append(line);
//    }
//
//    String reqData = buf.toString();
//
//    Gson gson = new Gson();
//    BuyerVo vo = gson.fromJson(reqData, BuyerVo.class);

    BuyerVo buyerVo = service.getAllBuyer(id);

    request.setAttribute("buyerVo", buyerVo);
    request.getRequestDispatcher("/buyer/buyerByIdView.jsp").forward(request,response);
%>
