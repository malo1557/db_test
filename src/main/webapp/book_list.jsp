<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hgd.jpa.model.Book" %>
<%@ page import="hgd.jpa.service.BookService" %>
<%
    BookService service = new BookService();
    List<Book> list = service.selectBookAll();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>책 목록</title>
</head>
<body>
<h2>Book List</h2>
<a href="index.jsp">[홈으로]</a> <a href="book_form.jsp">[책 등록]</a>
<hr>
<table border="1">
    <tr>
        <th>ID</th>
        <th>제목</th>
        <th>가격</th>
        <th>출판사</th>
    </tr>
    <%
        if (list != null && !list.isEmpty()) {
            for (Book b : list) {
    %>
    <tr>
        <td><%= b.getBookId() %></td>
        <td><%= b.getTitle() %></td>
        <td><%= b.getPrice() %>원</td>
        <td>
            <%= (b.getPublisher() != null) ? b.getPublisher().getPublisherName() : "없음" %>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="4">등록된 책이 없습니다.</td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>