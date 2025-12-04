<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%
    // 서비스 호출하여 데이터 가져오기
    Long id = Long.parseLong(request.getParameter("publisherId"));
    PublisherService service = new PublisherService();
    Publisher publisher = service.selectPublisherByPrimaryKey(id);
%>
<!DOCTYPE html>
<html>
    출판사 이름 : <%=publisher.getPublisherName()%>
</html>