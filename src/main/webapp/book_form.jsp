<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%
  // 책을 등록하려면 출판사를 선택해야 하므로, 출판사 목록을 먼저 가져옴
  PublisherService pubService = new PublisherService();
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>책 등록</title>
</head>
<body>
<h2>Add Book</h2>
<form action="book_create_action.jsp" method="post">
  <p>
    <label>제목: </label>
    <input type="text" name="title" required>
  </p>
  <p>
    <label>가격: </label>
    <input type="number" name="price" required>
  </p>
  <p>
    <label>출판사 선택: </label>
    <input type="text" name="publisherId" required>
  </p>
  <button type="submit">등록</button>
</form>
<br>
<%--<a href="book_list.jsp">[목록으로 돌아가기]</a>--%>
</body>
</html>