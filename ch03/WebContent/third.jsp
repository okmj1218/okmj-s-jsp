<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String addr =request.getRemoteAddr();
	String m =request.getParameter("mode");
%>
<html><body>
ur ip address :
<%=addr %>
<br/>
mode�̶� �̸����� ������ �� :
<%
	out.println(m);
%>
</body></html>