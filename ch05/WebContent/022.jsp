<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ����ڰ� ���� �������� ��û�� ������
	
	// �հ� �۾��� �Ͼ �� ..
	request.setAttribute("str", "���ڿ�");
	
	String[] ar = new String[]{"jsp", "php", "asp" };
	request.setAttribute("data", ar);
	
	 
	RequestDispatcher rd =request.getRequestDispatcher("dst.jsp");
	// ��û�� �߻������� �׳༮���� �հ��� �̾Ƴ� ��

	rd.forward(request, response);
	// �װ� �۵���Ű�µ�,  �� ���� �������� request, response �� ���� ������ ��Ű�鼭
	
	
%>