<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hgd.jpa.model.Book" %>
<%@ page import="hgd.jpa.service.BookService" %>

    Long bookId = Long.parseLong(request.getParameter("bookId"));
    BookService bookService = new BookService();
    Book book =bookService.selectBookByPrimaryKey(bookId);
%>
<!DOCTYPE html>
<html>
책제목 : <%=book.getTitle()%> <br>
책가격 : <%=book.getPrice()%> <br>
출판사 : <%=book.getPublisher().getPublisherName()%>
</html>