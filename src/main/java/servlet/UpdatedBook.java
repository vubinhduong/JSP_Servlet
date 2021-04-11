package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;

public class UpdatedBook extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("book_id");
		String name = request.getParameter("book_name");
		String publisher = request.getParameter("publisher");
		int price = Integer.parseInt(request.getParameter("price"));
		Book.updateBook(id, name, publisher, price);
		HttpSession session = request.getSession();
		String input = "/JSP_Servlet/result?input=" + session.getAttribute("input").toString();
		response.sendRedirect(input);
	}
}
