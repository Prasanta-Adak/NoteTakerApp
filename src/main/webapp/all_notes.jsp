<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Notes</title>
  <%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container">
    <%@include file="navbar.jsp" %>
    
    <h1>ALL NOTES :</h1>
    
    <div class="row">
    <div class="col-12">
    
    <%
    Session s=FactoryProvider.getFactory().openSession();
    Query q=s.createQuery("from Note");
    List<Note> list=q.list();
    for(Note note:list)
    {
    	%>
    	
    	<div class="card m-4">
  <img src="image/note.png" style="width:100px;" class="card-img-top" alt="Source Error">
  <div class="card-body">
    <h5 class="card-title"><%= note.getTitel() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p><b class="text-primary"><%= note.getAddedDate() %></b></p>
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
  </div>
</div>
    	<% 
    }
    s.close();
    %>
    </div>
    
    </div>
    
    
    <div/>
</body>
</html>