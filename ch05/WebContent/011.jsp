<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// �۾��� ��.... �Ͼ ��...
	
	// ..
	
	// request ���� �ȿ�  �����͸� �����Ҽ� �ְ� �ص� ������ �ִµ� .. 
		// Map �����̰�,  Ű���� String,   ������� Object �� ���ʸ�(��������)�����Ǿ��ִ�.
		
	request.setAttribute("str", "���ڿ�");
	
	String[] ar = new String[]{"jsp", "php", "asp" };
	request.setAttribute("data", ar);
	
	
	response.sendRedirect("dst.jsp");
%>