<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// request  ��   setAttribute ���ѵ� ������
		// getAttribute �� �̾ƴ� ����� �����ϴ�   => 
				// Ű���� String,  ���� Object �� ������ �Ǿ��־
				// ���� Ÿ������ casting�� �ؼ� ����Ͽ��� �Ѵ�.
		String s = (String)request.getAttribute("str");
		String[] a = (String[])request.getAttribute("data");
%>
<html>
<body>
	<div align="right">
		<h2>this page is</h2>
		<hr color="black"/>
		<marquee>
			<b><i>dst.jsp</i></b>
		</marquee>
	</div>
	<hr color="black"/>
	<div align="center">
		lecture by SALZ	     
		<br/>
		������Ʈ���� str�̶�� �̸����� �ɾ��� �� : <%=s %>
	</div>
</body>
</html>

