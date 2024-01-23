<%@ page import="prod.vo.ProdVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ProdVo prodVo = (ProdVo) request.getAttribute("prodVo");
%>

    {
        "prod_id" : "<%= prodVo.getProd_id()%>",
        "prod_name" : "<%= prodVo.getProd_name()%>",
        "prod_lgu" : "<%= prodVo.getProd_lgu()%>",
        "prod_buyer" : "<%= prodVo.getProd_buyer()%>",
        "prod_cost" : "<%= prodVo.getProd_cost()%>",
        "prod_price" : "<%= prodVo.getProd_price()%>",
        "prod_sale" : "<%= prodVo.getProd_sale()%>"
    }

