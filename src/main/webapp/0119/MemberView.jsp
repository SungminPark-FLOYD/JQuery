<%@ page import="member.vo.MemberVo" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //Controller에서 저장한 Data 꺼내기
    List<MemberVo> memList = (List<MemberVo>) request.getAttribute("memList");

    //json obj 형식의 배열을 만들어 준다.

%>
[
<%
    int memListSize = memList.size();
    for(int i = 0; i<memList.size(); i++){
        MemberVo vo = memList.get(i);
%>
        {
            "mem_id" : "<%= vo.getMem_id()%>",
            "mem_name" : "<%= vo.getMem_name()%>",
            "mem_hp" : "<%= vo.getMem_hp()%>"
        }
<%
    // 마지막 요소인 경우 콤마를 찍지 않음
    if (i < memListSize - 1) {
%>,
<%
        }
    }
%>
]