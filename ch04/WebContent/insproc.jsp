<%@ page contentType="text/html; charset=Euc-kr" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	// �Ķ���Ͱ��߿� �ѱ��� ���ԵǾ������� ���ް������� ����������� ��ȯ�Ͽ�
	// ���޵ǰ� ���ִ�.
	// �׷��� �ѱ۷� �纹���� ���Ѿ� �Ѵ�.
	request.setCharacterEncoding("euc-kr"); // �ѱۺ���
	// response.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	double avg = (kor + eng + math) / 3.0;
	String rst;
	if (avg >= 60 && kor >= 40 && eng >= 40 && math >= 40) {
		rst = "�հ�";
	} else {
		rst = "���հ�";
	}
	//======================================================
	int result = 0;
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url = "jdbc:oracle:thin:@192.168.10.1:1521:xe";
		String user = "jsp";
		String password = "1111";

		Connection conn = DriverManager.getConnection(url, user,
				password);

		String sql = "insert into score values(?,?,?,?, ?, ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		// �����ؾߵ� ��ɹ��� ??? ó���ص� �κ��� �ִٸ�, ���� ����������.
		ps.setString(1, id);
		ps.setInt(2, kor);
		ps.setInt(3, eng);
		ps.setInt(4, math);
		ps.setDouble(5, avg);
		ps.setString(6, rst);
		// �غ� �����ٸ�..
		result = ps.executeUpdate(); // ���ڰ� �ϳ� �߻��ϴµ�, ���۵� ������ ���� ����

		ps.close();
		conn.close();
	} catch (Exception e) {
		e.printStackTrace();
		out.println("DB �۾��� ���� �߻�..!");
	}

	// ==================================================
	if (result > 0) {
		response.sendRedirect("menu.jsp");
	} else {
%>
<script>
	alert("���� ��� �� ���� �߻�!!");
	location.href = "insform.jsp";
</script>
<%
	}
%>





