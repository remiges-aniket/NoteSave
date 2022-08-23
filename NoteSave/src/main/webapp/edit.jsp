
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entity.Note"%>

<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="all_css_js.jsp" %>
<meta charset="ISO-8859-1">
<title>Edit here</title>
</head>
<body>
 <div class="container text-center">
<h1> Edit your note</h1>
<br>
<%

int noteId=Integer.parseInt(request.getParameter("note_id").trim());
Session s=FactoryProvider.getFactory().openSession();
Note note=(Note)s.get(Note.class, noteId);

%>
<form action="UpdateServlet" method="post">



<div class="mb-3">
<input type="hidden" value="<%=note.getId()%>" id="noteId" name="noteId"/>


  <label for="exampleFormControlInput1"  class="form-label">Enter Note Title</label>
  <input required type="text" name="title" class="form-control" id="title" placeholder="Title.."
  value="<%= note.getTitle()%>" />

  <label for="exampleFormControlTextarea1"  class="form-label">Take a Note</label>
  <textarea required name="content" class="form-control" id="content"  placeholder="Start typing..." rows="3"><%= note.getContent()%></textarea>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Update</button>
  </div>
 
  
  </div>
  </form>


</div>
</body>
</html>