<%@ page import="prod.service.ProdServiceImpl" %>
<%@ page import="prod.vo.ProdVo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    //service객체 얻기
    ProdServiceImpl service = ProdServiceImpl.getInstance();


        //요청시 전송 데이터 받기
        //데이터에 입력한 이름과 같아야한다
//        String lprod_gu = request.getParameter("lprod_gu");
//        JSON.stringify({ "prod_lgu" : lprod_gu }) 형식의 직렬화 데이터
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
        ProdVo vo = gson.fromJson(reqData, ProdVo.class);
        String lgu = vo.getProd_lgu();


        //service 호출 결과값 받기
        List<ProdVo> prodList = service.selectByLgu(lgu);
        //결과값을 request에 저장
        request.setAttribute("prodList", prodList);
        //view페이지로 이동
        request.getRequestDispatcher("/0122/ProdView.jsp").forward(request, response);





%>
