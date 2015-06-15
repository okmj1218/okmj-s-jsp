<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String s1 = request.getParameter("a");
	String s2 =request.getParameter("p");
	String s3 = request.getParameter("g");
%>
<html>
<body>
	text에 썼던 값 : <%=s1 %>
	<hr/>
	password에 썼던 값 : <%=s2 %>
	<hr/>
	radio에 선택했던 값 : <%=s3 %>
</body>
</html>


