<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<body>
	<%
		// ����� ������ �� �������� ��û��, DB�� �����Ͽ� info ���̺� �ִ�
		// ������ Ȯ�� �� Ŭ���̾�Ʈ���� �����ְ� �غ���.
		try {
			// 1. ����̹� �˻� �� ���� �۾�
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.10.1:1521:xe", "jsp", "1111");
			// 2. �۾� �غ� (��ɹ��� �����Ҽ� �ִ� ���·� �����α�)
			String sql ="select * from info order by nick asc";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			// 3. �۾� ����		
			// executeUpdate() :  -> int ���� ��ȯ : ������ ���� ���� ���� 
			// ������ ���̽��� ������ �Ͼ��  Create , Update, Delete    
			//  executeQuery()  :  -> ResultSet �� ��ȯ : ������� Ȯ���Ҽ� �ְ� �ص� ��ü 
			//	������ ���̽��� �ִ� ������� Ȯ�� �ϴ� Read
			ResultSet rs = ps.executeQuery();
			out.println("<h2>������� �߻�</h2>");
			// 4. ������� ���� �۾�
			while( rs.next() ) {
			//	rs.getString(���̸�);	|| rs.getInt(); || 	rs.getDouble();
				String ni = rs.getString("nick");
				String na = rs.getString("name");
				int ag = rs.getInt("age");
				
				out.println(ni +" ("+ na+"/" +ag+"��) <br/>");
			}
			
			
			
			
			// 5. DB �۾��� ����ߴ� �ڿ��� ��ȯ
			rs.close();
			ps.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	%>
</body>
</html>






