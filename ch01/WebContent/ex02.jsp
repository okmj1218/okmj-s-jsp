<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	// �������� ����ϴ� �Ծ�� (http) Ŭ���̾�Ʈ������ ���������� ������ �����Ҽ� �ִµ�
	// ���´� [ �ش���������?�̸�=��&�̸�=��&�̸�=��&�̸�=�� ] �̷���
	// �̷� ������ �����(jsp,php,asp)���� Ȯ���ϴ°� �����ϴ�

	// jsp ������ �� ������ Ȯ���Ҷ� request ��ü�� ���ؼ� ����.
	// �޼������  String getParameter(String name)   �̴�.  (������Ȯ���� String����!)

	// ���� ��, ���� �������� ex02.jsp?grade=silver   Ȥ��  ..   ?grade=gold   �̷������� �Դٸ�
	String v = request.getParameter("grade");
	// �߰��� ex02.jsp?grade=silver&rank=5    �̷��� �� �߰��Ǽ� ����´ٰ� �����ϰ�
	String r = request.getParameter("rank");
%>
<html>
<body>
	����� grade �̶� �̸����� ������ ���� ����
	<%=v%>	!!
	<hr />
	����� rank �� �̸����� ������ ���� ����
	<%=r%>	!!
	<hr />
	rank �� ������ �Ѿ�� ���� 5 �����϶��� "�±� ����" ��� ����޼����� �� ������ if ó���ض�
	<hr />
	<%
		// �Ķ���� Ȯ���� String ���·� �߻��ϱ� ������ , ��ġŸ������ ��ȯó�� �ؾߵȴ�.
		// String �� int :  Integer.parseInt
		int ir = Integer.parseInt(r);
		if (ir <= 5) {	%>
	<b>�±ް���</b>
	<%
		}
	%>


</body>
</html>






