<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// �����̷�Ʈ�� ��Ű�� �� �ٸ� ���  .  by javascript
	int n=1;
	if(n>0) {
%>
<script>
	alert("ȸ������ ����..!!");
	location.href="main.jsp";
</script>
<%}else { %>
<script>
	alert("���� ó���� ���� �߻�.!!");
	location.href="reg.jsp";
</script>
<%} %>    
    