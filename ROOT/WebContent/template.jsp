<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// �������� Ʋ�� �����ų �������� �����ص� ������
	// ����ڴ� ���������� �ִ����� �𸣰�, 
	String top = (String)request.getAttribute("top");
	String center =(String)request.getAttribute("center");
%>
<html>
<head>
<title>saAn'</title>
<style type="text/css">
	h1,h2,input, textarea, pre, select, li, td, th {
		font-family: �������;
	}
</style>
</head>
<body>
	<table style="width: 100%; height: 100%">
		<tr height="10%" bgcolor="#B5B2FF">
			<td><jsp:include page="<%=top%>" /></td>
		</tr>
		<tr>
			<td><jsp:include page="<%=center%>" /></td>
		</tr>
	</table>
</body>
</html>