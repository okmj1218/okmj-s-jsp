package it;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ������ �������
// 1. extends HttpServlet   or   GenericServlet   
// (�̸� ���谡 �� Ŭ�����߿� �ϳ��� extends �ɰ� �����ϸ� �ȴ�)
// cf) smart import [����Ű] : ctrl+shift+o
public class First extends HttpServlet {
	// 2. void service(HttpServletRequest arg0, HttpServletResponse arg1)
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		System.out.println("��û �߻�.!");
	} 
}
// 3. web.xml(������Ʈ ��������) �� ���




