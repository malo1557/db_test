<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("publisherName");

    // 유효성 검사 (null 체크만 심플하게)
    if (name != null) {
        Publisher publisher = new Publisher();
        publisher.setPublisherName(name);

        // Service 변수 선언 없이 바로 실행 (한 줄 줄이기)
        new PublisherService().insertPublisher(publisher);
    }

    response.sendRedirect("publisher_form.jsp");
%>