<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%@ page import="hgd.jpa.service.BookService" %>
<%@ page import="hgd.jpa.model.Book" %>
<%

Long pbId =Long.parseLong(request.getParameter("publisherId"));
String title =  request.getParameter("title");
int price = Integer.parseInt(request.getParameter("price"));

  PublisherService pubService = new PublisherService();
  BookService bookService = new BookService();

  Publisher publisher = pubService.selectPublisherByPrimaryKey(pbId);

  Book book = new Book();

  book.setTitle(title);
  book.setPrice(price);
  book.setPublisher(publisher);

  bookService.insertBook(book);

  Integer result = bookService.insertBook(book);
%>

<%= result %>