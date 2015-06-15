<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String nick = request.getParameter("n");
	int age = Integer.parseInt(request.getParameter("a"));
	String gen = request.getParameter("g"); 
%>
<html>
<head>
<title>qz01proc</title>
</head>
<body>
	대화명 
	<%if(gen.equals("male") ){%>
	<font color="blue">
			[<b><%= nick %></b>]
	</font>	
	<%}else if(gen.equals("female")){ %>
	<font color="red">
			[<b><%= nick %></b>]
	</font>
	<%} %>
	으로
	<%if(age >=19) { %>
		성인 채팅방
	<%}else { %>
		미성년자 채팅방
	<%} %>
	으로 입장합니다
	
</body>
</html>