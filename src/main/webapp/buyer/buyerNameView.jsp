<%@ page import="buyer.vo.BuyerVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<BuyerVo> buyerList = (List<BuyerVo>) request.getAttribute("buyerList");


%>
[
<%
    int buyerListSize = buyerList.size();
    for(int i = 0; i<buyerList.size(); i++){
        BuyerVo vo = buyerList.get(i);
%>
{
"buyer_id" : "<%= vo.getBuyer_id()%>",
"buyer_name" : "<%= vo.getBuyer_name()%>"
}
<%
    // 마지막 요소인 경우 콤마를 찍지 않음
    if (i < buyerListSize - 1) {
%>,
<%
        }
    }
%>
]