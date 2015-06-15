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
mode이란 이름으로 전달한 값 :
<%
	out.println(m);
%>
</body></html>