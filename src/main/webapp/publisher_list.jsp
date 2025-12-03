<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%
    // 서비스 호출하여 데이터 가져오기
    PublisherService service = new PublisherService();
    List<Publisher> list = service.selectPublisherAll();
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>출판사 목록</title>
</head>
<body>
<h2>Publisher List</h2>
<a href="index.jsp">[홈으로]</a> <a href="publisher_form.jsp">[출판사 등록]</a>
<hr>
<table border="1">
    <tr>
        <th>ID</th>
        <th>출판사 이름</th>
    </tr>
    <%
        if (list != null && !list.isEmpty()) {
            for (Publisher p : list) {
    %>
    <tr>
        <td><%= p.getPublisherId() %></td>
        <td><%= p.getPublisherName() %></td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="3">등록된 출판사가 없습니다.</td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>