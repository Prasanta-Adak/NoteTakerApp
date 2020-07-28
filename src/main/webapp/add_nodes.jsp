<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp" %>
    
    <h1>Please Fill The Note Details</h1>
    <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
    name="title"
    required 
    type="text" 
    class="form-control" 
    id="title" 
    placeholder="Enter text Title" 
    aria-describedby="emailHelp">
    
  </div>
  <div class="form-group">
    <label for="content">Text Content</label>
    <textarea
    name="content" 
    required 
    class="form-control" 
    style="height:300px;" 
    id="content" 
    placeholder="Enter your text content"></textarea>
  </div>
  
  <button type="submit" class="btn btn-primary">Add Note</button>
</form>
    </div>
</body>
</html>