<%@ page import="it.util.*, java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// Ŭ���̾�Ʈ������ ���޹޴� �Ķ��� �߿� �ѱ��� �ִٸ�
	// request ��ü�� ������ ���ּž��Ѵ�.
	request.setCharacterEncoding("euc-kr");
	String id = request.getParameter("id");
	String pass= request.getParameter("pass");
	String name= request.getParameter("name");
	String gender= request.getParameter("gender");
	int birth = Integer.parseInt(request.getParameter("birth"));
	String address = request.getParameter("address");
	String info = request.getParameter("info");
	
	//===================
	int rst =0;
	try {
		Connection conn = ConnUtil.open();
		String sql = "insert into member values(?, ?, ? , ? , ?, ? , ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, pass);
		ps.setString(3, name);
		ps.setString(4, gender);
		ps.setInt(5, birth);
		ps.setString(6, address);
		ps.setString(7, info);
		rst = ps.executeUpdate();
		ps.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace(); 
	}
	//============================================
	if(rst >0) {%>
<script>
	alert("ȸ�� ���� ����");
	location.href="/index.jsp";
</script>	
<%}else { %>	
<script>
	alert("���� ó���� ���� �߻�");
	location.href="/member/reg.jsp";
</script>			
<%	}
%>
