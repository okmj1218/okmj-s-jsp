<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, it.util.*" %>
<%
	// request �м��ϰ�,
	String logId = request.getParameter("logId");
	String logPass = request.getParameter("logPass");
	//  DB �� �۾��� �Ͼ��,
	boolean rst = false;
	try {
		Connection conn = ConnUtil.open();
		String sql ="select * from member where id=? and pass=?";
				// => ���̵� Ȥ�� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.
				// select * from member where id=?
				// => ���̵� ����, ��� ����ġ , ����
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, logId);
		ps.setString(2, logPass);
		ResultSet rs =ps.executeQuery();		// select ���� executeQuery 
											// insert, update, delete ����  executeUpdate
		if( rs.next() ) {
			rst = true;
		}
		rs.close();
		ps.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	// �װ� ���� �� �並 �ٹ̰ų� �ٸ� �������� �̵��� ��Ŵ
	if(rst) {
		response.sendRedirect("/index.jsp");
	}else {
		 %>
		 <script>
		 	alert("���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		 	location.href="/index.jsp";
		 </script>
		 <%
	}
%>




