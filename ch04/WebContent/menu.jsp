<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>��������</title>
</head>
<body>
	<h2>���� ���� ���α׷�</h2>
	<hr/>
	<!--ul : unordered list  / ol : ordered list-->
	<ul>
		<li>
			<a href="insform.jsp">�������</a>
		</li>
		<li>
			<a href="view.jsp?cate=all">��ü��ȸ</a> 
			<!-- score ���̺� �ִ� ������ id �� ����--> 
		</li>
		<li>
			<a href="view.jsp?cate=succ">�հ�����ȸ</a> 
			<!-- score ���̺� �ִ� ������ id �� ����--> 
		</li>
		<li>
			<form action="search.jsp" method="post">
				��   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      �� <input type="text" size="8">
				 <input type="submit"/>
			</form>
		</li>
	
	</ul>
	
</body>
</html>