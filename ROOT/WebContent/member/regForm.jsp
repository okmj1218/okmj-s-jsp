<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- /member/regForm.jsp -->
<html>
<head>
</head>
<body>
	<h2>ȸ������</h2>
	<hr />
	<form action="/member/regProc.jsp" method="post">
		<ul>
			<li>���̵� : <input type="text"  size="15" name="id"/><input type="button"
				value="�ߺ�üũ" />
				</li>
				<li>��й�ȣ : <input type="password"  size="15" name="pass"/>
				</li>
				<li>�̸� : <input type="text"  size="15" name="name"/>
				</li>
				<li>���� : <input type="radio" value="��" name="gender"/>��
					<input type="radio" value="��" name="gender"/>��
				</li>
				<li>���� : 
					<select name="birth">
						<%for(int i=2015; i>1940; i--){ %>
							<option value="<%=i %>">  <%=i %>��</option>
						<%} %>
					</select>
				</li>
				<li>�ּ� : <input type="text"  size="30" name="address"/>
				</li>
				<li>�Ұ� : <textarea rows="2" cols="30" name="info"></textarea>
				</li>
		</ul>
		<hr/>
		<input type="submit" value="���Խ�û"/>
	</form>
</body>
</html>






