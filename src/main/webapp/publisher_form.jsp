<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="hgd.jpa.model.Publisher" %>
<%@ page import="hgd.jpa.service.PublisherService" %>

<%

  String name =request.getParameter("name");



  PublisherService pubService = new PublisherService();

  Publisher pb = new Publisher();

  pb.setPublisherName(name);

  pubService.insertPublisher(pb);
  Integer result = pubService.insertPublisher(pb);
%>
<%= result %>
