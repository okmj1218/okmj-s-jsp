<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// �� �������� ����������� ���ӽ� week ��� �̸����� �Ѿ���� ���� �̾Ƽ�
	// ó���غ���
	String w = request.getParameter("week");
%>
<html>
<body>
	<%if(w.equals("mon")){ %>
		������������Դϴ�.
	<%} else if(w.equals("tue")){ %>
		ȭ����������Դϴ�.
	<%} %>
</body>
</html>