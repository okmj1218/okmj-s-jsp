package it;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// �������� �� ��û ó���� ����
// 1. extends 

@WebServlet("/snd.t")
// 3. web.xml�� ��ϵǴ� ȿ��
public class Second extends HttpServlet {
	// 2. service �޼��� �������̵�
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String addr = request.getRemoteAddr();		// ��û�� ip
		String m = request.getParameter("mode");
		
		// ó���� ���� �� ������ʿ��� ������ �����ϱ� ���ؼ�
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter pw = response.getWriter();
		
		pw.print("<html><body>");
		pw.print("ur ip address : ");
		pw.print(addr);
		pw.print("<br/>");
		pw.print("mode �� ������ �Ķ���� �� : ");
		pw.print(m);
		pw.print("</body></html>");
	}
}





