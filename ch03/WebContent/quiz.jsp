<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<body>
	<h2>BMI</h2>
	<form action="quizProc.do">
		성별 : <input type="radio" name="g" value="male"/>남
		<input type="radio" name="g" value="female"/>여
		<br/>
		신장 : <input type="text" name="cm"/>cm
		체중 : <input type="text" name="kg"/>kg
		나이 : <input type="text" name="age"/>세
		<input type="submit" value="계산"/>
		
	
	</form>
	
</body>
</html>