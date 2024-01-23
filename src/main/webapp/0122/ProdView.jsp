<%@ page import="java.util.List" %>
<%@ page import="prod.vo.ProdVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<ProdVo> prodList = (List<ProdVo>) request.getAttribute("prodList");
    if(!prodList.isEmpty()) {
%>
{
    "flag" : "ok",
    "datas" :
[
<%
    int prodListSize = prodList.size();
    for(int i = 0; i<prodList.size(); i++){
        ProdVo vo = prodList.get(i);
%>
{
"prod_id" : "<%= vo.getProd_id()%>",
"prod_name" : "<%= vo.getProd_name()%>"
}
<%
    // 마지막 요소인 경우 콤마를 찍지 않음
    if (i < prodListSize - 1) {
%>,
<%
        }
    }
%>
]
}

<%
    }else {%>
{
    "flag" : "no"
}
<% } %>