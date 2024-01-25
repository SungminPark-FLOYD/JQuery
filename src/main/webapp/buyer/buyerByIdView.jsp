<%@ page import="buyer.vo.BuyerVo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    BuyerVo vo = (BuyerVo) request.getAttribute("buyerVo");
%>
<%--{--%>
<%--    "buyer_id":"<%=buyerVo.getBuyer_id()%>",--%>
<%--    "buyer_name":"<%=buyerVo.getBuyer_name()%>",--%>
<%--    "buyer_lgu":"<%=buyerVo.getBuyer_lgu()%>",--%>
<%--    "buyer_comtel":"<%=buyerVo.getBuyer_comtel()%>",--%>
<%--    "buyer_bank":"<%=buyerVo.getBuyer_bank()%>",--%>
<%--    "buyer_bankno":"<%=buyerVo.getBuyer_bankno()%>",--%>
<%--    "buyer_bankname":"<%=buyerVo.getBuyer_bankname()%>",--%>
<%--    "buyer_mail":"<%=buyerVo.getBuyer_mail()%>",--%>
<%--    "buyer_zip":"<%=buyerVo.getBuyer_zip()%>",--%>
<%--    "buyer_add1":"<%=buyerVo.getBuyer_add1()%>",--%>
<%--    "buyer_add2":"<%=buyerVo.getBuyer_add2()%>"--%>
<%--}--%>
{
"buyer_id" : "<%=vo.getBuyer_id()%>",
"buyer_name" : "<%=vo.getBuyer_name()%>",
"buyer_lgu" : "<%=vo.getBuyer_lgu()%>",
"buyer_bank" : "<%= vo.getBuyer_bank() %>",
"buyer_bankno" : "<%= vo.getBuyer_bankno() %>",
"buyer_bankname" : "<%= vo.getBuyer_bankname() %>",
"buyer_zip" : "<%= vo.getBuyer_zip() %>",
"buyer_add1" : "<%= vo.getBuyer_add1() %>",
"buyer_add2" : "<%= vo.getBuyer_add2() %>",
"buyer_comtel" : "<%= vo.getBuyer_comtel() %>",
"buyer_mail" : "<%= vo.getBuyer_mail() %>"
}