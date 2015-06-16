<%@ page contentType="text/html; charset=Euc-kr"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
	// conn.jsp �� ��û�� ���԰�
	// ������ DB ������ �۾��� �ؾߵǴ� ��Ȳ�̴�.
	// DB ������ ������ �Ǵ������� Ȯ���� �ؾߵȴ�.
	// DB ���� �۾����� ���Ǵ� Ŭ�������� �ִµ�, java.sql. ��Ű���� ���ԵǾ� �ִ�.
	// throws Exception�� �ɷ��ִ� �޼��尡 ��κ��̴� (���� ����)
				//  -> try ~ catch �ϰ� �۾��� �ʼ��̴�.
	try {
		// �ش� DBMS �� ������ �������ִ� ����̹� �ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// DB �� ������� Ȯ���غ���.
		// DB ���� ��� , ������ , �����н�����
		String url ="jdbc:oracle:thin:@192.168.10.1:1521:xe";
		String user ="jsp";
		String password="1111";
		
		Connection conn =DriverManager.getConnection(url, user, password);
		out.println("DB ���� �ߵ�.!");
		
		//==================================================
		// ���� �۾��� �����غ���
		// ����ڰ�  => �г� , �̸�, ����  �������� ���� ��Ȳ�̰�, �װ�
			// DB  info ���̺� ��ϵǰ�
		String nick ="�λ�";
		String name="����ȣ";
		int age = 24;
		
		// �����ؾߵ� ��ɹ��� ���ڿ��� �غ� - ���� �κ��� ���ε�ó���صΰ�, ���߿� ä��ų�
		// insert into info values('��ȼ�', '����ȣ', 24)
		String sql = "insert into info values(?, ?, ?)";
	//	String sql2 = "insert into info values('"+nick+','"')"
		
		// ������ο��ٰ� �÷��ΰ� 
		PreparedStatement ps  = conn.prepareStatement(sql);
		// �����ؾߵ� ��ɹ��� ??? ó���ص� �κ��� �ִٸ�, ���� ����������.
		ps.setString(1, nick);
		ps.setString(2, name);
		ps.setInt(3, age);
		
	//	ps.setDouble();
	
	
		out.println("�غ� ��!..");
		// �غ� �����ٸ�..
		int m = ps.executeUpdate();		// ���ڰ� �ϳ� �߻��ϴµ�, ���۵� ������ ���� ����
		out.println("ó�� �Ϸ�!..");
				
				
		
	}catch(Exception e) {
		e.printStackTrace();
		out.println("DB �۾��� ���� �߻�..!");
	}
		
	
				
	
%>





