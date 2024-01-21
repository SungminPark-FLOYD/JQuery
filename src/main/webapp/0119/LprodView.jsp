<%@ page import="lprod.vo.LprodVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //controller에서 저장한 데이터 꺼내기
    List<LprodVo> lprodList = (List<LprodVo>) request.getAttribute("lprodList");

%>
[
<%
    int lprodListSize = lprodList.size();
    for(int i = 0; i<lprodList.size(); i++){
        LprodVo vo = lprodList.get(i);
%>
{
"lprod_id" : "<%= vo.getLprod_id()%>",
"lprod_gu" : "<%= vo.getLprod_gu()%>",
"lprod_nm" : "<%= vo.getLprod_nm()%>"
}
<%
    // 마지막 요소인 경우 콤마를 찍지 않음
    if (i < lprodListSize - 1) {
%>,
<%
        }
    }
%>
]


