<%@ page import="member.service.IMemberService" %>
<%@ page import="member.service.MemberServiceImpl" %>
<%@ page import="member.vo.MemberVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //Controller 역할 - servlet, Spring

    //클라이언트 전송시 데이터 받기

    //service객체 얻기
    MemberServiceImpl service = MemberServiceImpl.getInstance();
    //service메소드 호출 - 결과값 받기
    List<MemberVo> memList = service.getAllMember();

    //결과값 request에 저장
    request.setAttribute("memList", memList);

    //결과 값을 출력 - view 페이지로 이동

    //결과값을 공유 -
    request.getRequestDispatcher("/0119/MemberView.jsp").forward(request, response);


%>

