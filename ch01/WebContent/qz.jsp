<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// qz.jsp?year=????&gender=??	

	String str = request.getParameter("year");	
	int a = 2015-Integer.parseInt(str);
	int v =    Integer.parseInt(request.getParameter("year"));
	int age = 2015-v;
	
	String r = request.getParameter("gender");
%>
<html>
<body>
	����� <%=age  %>���̰� , 
	<%if( r.equals("f") ) {%>
		����
	<%}else { %>
		����
	<%} %>
	
	�Դϴ�.
</body>
</html>