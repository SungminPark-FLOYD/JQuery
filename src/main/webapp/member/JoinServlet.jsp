<%@ page import="java.io.BufferedReader" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="member.vo.MemberVo" %>
<%@ page import="member.service.IMemberService" %>
<%@ page import="member.service.MemberServiceImpl" %><%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2024-01-25
  Time: AM 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //controller servlet이다
    //데이터 읽기
    StringBuffer buf = new StringBuffer();
    String line = null;

    BufferedReader br  = request.getReader();
    while ((line = br.readLine()) != null){
    buf.append(line);
    }

    String reqData = buf.toString();

    //역직렬화 - 객체 형태로 변환
    Gson gson = new Gson();
    MemberVo vo = gson.fromJson(reqData, MemberVo.class);

    //service객체 얻어오기
    IMemberService service = MemberServiceImpl.getInstance();

    //service메소드 호출 - 결과값 받기
    int res = service.insertMemeber(vo);

    //결과값을 request에 저장
    request.setAttribute("res", res);
    //view페이지로 이동
    request.getRequestDispatcher("/member/joinView.jsp").forward(request,response);
%>
</body>
</html>
