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
	��ȭ�� 
	<%if(gen.equals("male") ){%>
	<font color="blue">
			[<b><%= nick %></b>]
	</font>	
	<%}else if(gen.equals("female")){ %>
	<font color="red">
			[<b><%= nick %></b>]
	</font>
	<%} %>
	����
	<%if(age >=19) { %>
		���� ä�ù�
	<%}else { %>
		�̼����� ä�ù�
	<%} %>
	���� �����մϴ�
	
</body>
</html>