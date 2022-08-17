<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>고객목록</h3>
<%
	
ArrayList<DTOcustomer> members=(new DAOcustomer()).getList();

for(DTOcustomer member : members) {
	%>
	<%=member.getNo() %>
	
	<%=member.getName() %>

	
	<a href = "detail.jsp?no=<%=member.getNo() %>" >상세정보</a>
	<br>
	<%
	} 

%>

</body>
</html>