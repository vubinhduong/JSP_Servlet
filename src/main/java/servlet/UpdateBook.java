package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;

public class UpdateBook extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		request.getRequestDispatcher("/view/updateBook.jsp").forward(request, response);
//		Book.deleteBookById(id);
//		HttpSession session = request.getSession();
//		String input = "/JSP_Servlet/result?input=" + session.getAttribute("input").toString();
//		System.out.println(input);
//		response.sendRedirect(input);
	}
}
