<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<body>
	<%
		int n = 3;
//		int n = 5;		//	n�̶�� ������ �ֱ� ������ duplicate (�ߺ�)
//		String request;		// why duplicate ??
		request.toString();		// request ?? �̶� ��ü�� ���� ���ߴµ� �ְ�.
			// ��û : ������ʿ��� ���޵Ǵ� �������� ���� �Ҷ� ���
		response.toString();		// response ?? �� ��ü�� ���� ���ߴµ� �ִ�.
			// ���� : ����������� �����ؾ� �Ǵ� �������� �����Ҷ� ���
		String addr = request.getRemoteAddr();			// ��û���� ip�� ����.
	%>
	addr ?  <%=addr %>  <hr/>
	<%
		response.sendError(500);
	%>
</body>
</html>








