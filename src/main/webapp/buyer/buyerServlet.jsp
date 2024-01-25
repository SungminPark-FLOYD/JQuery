<%@ page import="buyer.service.BuyerServiceImpl" %>
<%@ page import="buyer.vo.BuyerVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    BuyerServiceImpl service = BuyerServiceImpl.getInstance();

    List<BuyerVo> buyerList = service.selectByBuyerName();

    request.setAttribute("buyerList", buyerList);

    request.getRequestDispatcher("/buyer/buyerNameView.jsp").forward(request, response);
%>