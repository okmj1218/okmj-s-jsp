<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// scriptlet �̶� ����
	String title = "jsp";
%>
<html>
<body>
	<h2><%=title%></h2>
	// expression tag
	<hr />
	// horizon ����
	<%
		if (Math.random() > 0.5) {
	%>
	����.
	<%
		} else {
	%>
	�ȴ�.
	<%
		}
	%>

</body>
</html>