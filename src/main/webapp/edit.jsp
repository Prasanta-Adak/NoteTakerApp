<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="org.hibernate.*,com.entities.*,com.helper.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    <h1>Edit your Page</h1>
    <%
    int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	
    Session s= FactoryProvider.getFactory().openSession();
	
	Note note=(Note) s.get(Note.class, noteId);
    %>
    
     <form action="UpdateServlet" method="post">
     
     <input type="hidden" name="noteId" value="<%= note.getId() %>" />
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
    name="title"
    required 
    type="text" 
    class="form-control" 
    id="title" 
    placeholder="Enter text Title" 
    aria-describedby="emailHelp"
    value="<%= note.getTitel() %>" />
    
  </div>
  <div class="form-group">
    <label for="content">Text Content</label>
    <textarea
    name="content" 
    required 
    class="form-control" 
    style="height:300px;" 
    id="content" 
    placeholder="Enter your text content"><%= note.getContent() %></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Add Note</button>
</form>
    </div>
</body>
</html>