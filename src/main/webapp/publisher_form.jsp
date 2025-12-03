<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>출판사 등록</title>
</head>
<body>
<h2>Add Publisher</h2>
<form action="publisher_create_action.jsp" method="post">
  <label>출판사 이름: </label>
  <input type="text" name="publisherName" required>
  <button type="submit">등록</button>
</form>
<br>
<a href="publisher_list.jsp">[목록으로 돌아가기]</a>
</body>
</html>