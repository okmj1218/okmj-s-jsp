<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<body>
	<%
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@192.168.10.1:1521:xe", "jsp", "1111");
			String sql ="select * from score order by id asc";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			out.println("<h2>��ü �л�����</h2>");
			%>
			<table border="1" style="width: 100%">
				
			<%
			while( rs.next() ) {
				String id = rs.getString("id");
				String rst = rs.getString("rst");
				int k = rs.getInt("kor");
				int e = rs.getInt("eng");
				int m = rs.getInt("math");
				double a = rs.getDouble("avg");
				
			}
			%>
			</table>	
			<%
			
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






