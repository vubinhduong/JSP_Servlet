package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ConnectDB;

public class Book {
	private String id;
	private String name;
	private String publisher;
	private int price;

	public static List<Book> getBookByName(String input) {
		List<Book> listBook = new ArrayList<Book>();
		String sql = "SELECT * FROM book WHERE book_name like '%" + input + "%';";
		ResultSet rs = ConnectDB.executeSQL(sql);
		try {
			while (rs.next()) {
				String book_id = rs.getString(1);
				String book_name = rs.getString(2);
				String publisher = rs.getString(3);
				int price = rs.getInt(4);
				Book book = new Book(book_id, book_name, publisher, price);
				listBook.add(book);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listBook;
	}

	public static Book getBookById(String id) {
		String sql = "SELECT * FROM book WHERE book_id = '" + id + "';";
		ResultSet rs = ConnectDB.executeSQL(sql);
		Book book = new Book();
		try {
			while (rs.next()) {
				book.setId(rs.getString(1));
				book.setName(rs.getString(2));
				book.setPublisher(rs.getString(3));
				book.setPrice(rs.getInt(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return book;
	}

	public static void deleteBookById(String id) {
		String sql = "DELETE FROM book WHERE book_id = '" + id + "';";
		ConnectDB.executeSQL2(sql);
	}
	
	public static void updateBook(String id, String name, String publisher, int price) {
		String sql = "UPDATE book SET book_name = '" + name + "', publisher = '" + publisher + "', price = '" + price + "' WHERE book_id = '" + id + "';";
		System.out.println(sql);
		ConnectDB.executeSQL2(sql);
	}

	public Book() {
		super();
	}

	public Book(String id, String name, String publisher, int price) {
		super();
		this.id = id;
		this.name = name;
		this.publisher = publisher;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
