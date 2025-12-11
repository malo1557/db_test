<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%@ page import="hgd.jpa.model.Book" %> <%
    Long id = Long.parseLong(request.getParameter("publisherId"));
    PublisherService service = new PublisherService();
    Publisher publisher = service.selectPublisherByPrimaryKey(id);
%>
<!DOCTYPE html>
<html>
<body>
<h2>출판사 정보</h2>
<p>출판사 이름 : <strong><%= publisher.getPublisherName() %></strong></p>

<h3>도서 목록</h3>
<ul>
    <%
        // 책 목록이 있는지 확인 후 출력
        if (publisher.getBooks() != null && !publisher.getBooks().isEmpty()) {
            for (Book book : publisher.getBooks()) {
    %>
    <li>
        제목: <%= book.getTitle() %> / 가격: <%= book.getPrice() %>원
    </li>
    <%
        }
    } else {
    %>
    <li>등록된 책이 없습니다.</li>
    <%
        }
    %>
</ul>
</body>
</html>