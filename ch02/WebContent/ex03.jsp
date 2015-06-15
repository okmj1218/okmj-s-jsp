<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<body>
	<h1>form 태그</h1>
	사용자에게 입력/선택을 할수 있게 제공해주는 태그들을 살펴봤는데
	실제로 서버측으로 전송이 되게끔 할려면, form 이란 태그와 같이 사용이 되어야 한다.
	<hr/>

	<form action="ex03dst.jsp">
			text : <input type="text" name="a"/><br/>
			password : <input type="password" name="p"/><br/>
			radio : <input type="radio" name="g" value="m"/>남
			<input type="radio" name="g" value="w"/>여
		<hr/>
		<input type="submit" value="등록"/>
	</form>
	
	
	
	
</body>
</html>


