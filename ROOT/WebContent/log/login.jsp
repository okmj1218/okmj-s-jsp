<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
</head>
<body>
	<!-- �α��� ȭ�� / �̿ϼ�, action , name, ���� X-->
	<div align="right">
		<form action="/log/loginProc.jsp" method="post">
			<b>ID</b> <input type="text" size="10" name="logId"/>
				<input type="checkbox"/>
			<b>PASS</b> <input type="password" size="12" name="logPass"/>
			<input type="submit" value="�α���"/>
			<input type="button" value="ȸ������" 
				onclick="location.href='/member/reg.jsp'"/>
		</form>
	</div>
</body>
</html>












