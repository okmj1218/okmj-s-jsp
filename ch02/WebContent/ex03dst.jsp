<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String s1 = request.getParameter("a");
	String s2 =request.getParameter("p");
	String s3 = request.getParameter("g");
%>
<html>
<body>
	text�� ��� �� : <%=s1 %>
	<hr/>
	password�� ��� �� : <%=s2 %>
	<hr/>
	radio�� �����ߴ� �� : <%=s3 %>
</body>
</html>


