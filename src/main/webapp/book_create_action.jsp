<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hgd.jpa.model.Book" %>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.BookService" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%
  request.setCharacterEncoding("UTF-8");

  String title = request.getParameter("title");
  String priceStr = request.getParameter("price");
  String pubIdStr = request.getParameter("publisherId");

  if (title != null && priceStr != null && pubIdStr != null) {

    // 1. Publisher 정보 조회
    Long publisherId = Long.parseLong(pubIdStr);
    PublisherService pubService = new PublisherService();
    Publisher publisher = pubService.selectPublisherByPrimaryKey(publisherId);

    if (publisher != null) {
      Book book = new Book();
      book.setTitle(title);
      book.setPrice(Integer.parseInt(priceStr));

      // [수정된 부분]
      // publisher.addBook(book);  <-- 이거 쓰면 에러남 (세션이 끊긴 상태에서 리스트 접근)

      // 대신 이걸 쓰세요. (Book 입장에서 누가 출판사인지 알면 됨)
      book.setPublisher(publisher);

      // 3. 저장
      BookService bookService = new BookService();
      bookService.insertBook(book);
    }
  }
  
  response.sendRedirect("book_form.jsp");
%>