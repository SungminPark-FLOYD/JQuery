<%@ page import="prod.service.ProdServiceImpl" %>
<%@ page import="prod.vo.ProdVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //service객체 얻기
    ProdServiceImpl service = ProdServiceImpl.getInstance();

    if(request.getParameter("lprod_gu")!= null){
        //요청시 전송 데이터 받기
        //데이터에 입력한 이름과 같아야한다
        String lprod_gu = request.getParameter("lprod_gu");
        //service 호출 결과값 받기
        List<ProdVo> prodList = service.selectByLgu(lprod_gu);
        //결과값을 request에 저장
        request.setAttribute("prodList", prodList);
        //view페이지로 이동
        request.getRequestDispatcher("/0122/ProdView.jsp").forward(request, response);
    }

    else if(request.getParameter("prod_id") != null) {
        String prod_id = request.getParameter("prod_id");
        ProdVo prodVo = (ProdVo) service.selectById(prod_id);
        request.setAttribute("prodVo", prodVo);
        request.getRequestDispatcher("/0122/ProdDataView.jsp").forward(request, response);
    }


%>
