<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// cate ���� ���� �ٸ��������� ������
	String c = request.getParameter("cate");
	if(c.equals("all")) {
		RequestDispatcher d = request.getRequestDispatcher("read.jsp");
		d.forward(request, response);
	}else if(c.equals("succ")) {
		%>
		<jsp:forward page="readPass.jsp"/>
		<%
	}
%>