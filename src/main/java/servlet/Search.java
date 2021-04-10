package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Book;

public class Search extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Lay input tu searchForm.jsp
		String input = request.getParameter("input");
		HttpSession session = request.getSession();
		session.setAttribute("input", input);
		
		List<Book> listBook = new ArrayList<Book>();
		listBook = Book.getBookByName(input);
		request.setAttribute("listBook", listBook);
		request.setAttribute("input", input);
		request.getRequestDispatcher("/view/homePage.jsp").forward(request, response);
	}
}
