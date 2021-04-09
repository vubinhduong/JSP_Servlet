package test;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
	
		// lay ten nguoi dung tu request va luu vao session
		String name = request.getParameter("name");
		HttpSession session = request.getSession();
		session.setAttribute("username", name);
		
		// dieu huong 
		response.setContentType("text/html");
		String url = new String("/JSP_Servlet/logined.jsp");
		response.setStatus(response.SC_MOVED_TEMPORARILY);
		response.setHeader("Location", url);
	}
}
