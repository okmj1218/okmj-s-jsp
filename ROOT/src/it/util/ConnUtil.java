package it.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnUtil {

	// ��� ���� �۾��� ������ ���� �Ͼ�µ�,
	// �Ź� ġ�°� �������� �����ϱ�, ���� ��ü ���� �κ��� �޼���� �����ص���
	
	public static Connection open() throws Exception {			// ctrl+shift+o  : import
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		String url ="jdbc:oracle:thin:@192.168.10.1:1521:xe";
		String user ="jsp";
		String password ="1111";
		
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
}
