<%@ page import="lprod.dao.ILprodDao" %>
<%@ page import="lprod.service.LprodServiceImpl" %>
<%@ page import="lprod.vo.LprodVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //요청
    LprodServiceImpl service = LprodServiceImpl.getInstance();
    //service 객체 얻기

    //service메소드 호출 - 결과값 받기 - List<LprodVo>
    List<LprodVo> lprodList = service.selectLprod();
    //결과값을 request에 저장
    //setAttribute("name", value);
    request.setAttribute("lprodList", lprodList);
    //view페이지로 이동 - forward - lprodView.jsp
    request.getRequestDispatcher("/0119/LprodView.jsp").forward(request, response);
%>
