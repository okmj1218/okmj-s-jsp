<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// 이 페이지로 사용자측에서 접속시 week 라는 이름으로 넘어오는 값을 뽑아서
	// 처리해보자
	String w = request.getParameter("week");
%>
<html>
<body>
	<%if(w.equals("mon")){ %>
		월요웹툰목록입니다.
	<%} else if(w.equals("tue")){ %>
		화요웹툰목록입니다.
	<%} %>
</body>
</html>