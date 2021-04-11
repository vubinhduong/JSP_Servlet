package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

public class Login extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("name");
		String pass = request.getParameter("pass");

		if (User.checkLogin(name, pass)) {
			// lay ten nguoi dung tu request va luu vao session
			HttpSession session = request.getSession();
			session.setAttribute("username", name);
			
			request.setAttribute("loginResult", true);
			request.getRequestDispatcher("/view/searchForm.jsp").forward(request, response);
		} else {
			request.setAttribute("loginResult", false);
			request.getRequestDispatcher("/view/login.jsp").forward(request, response);
		}
	}
}
