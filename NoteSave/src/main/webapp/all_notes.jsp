
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.entity.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <%@include file="all_css_js.jsp" %>
<meta charset="ISO-8859-1">
<title>All Notes: Saved Notes</title>
</head>
<body>
<div class="container text-center">
<h1 class="text-uppercase">Saved Notes</h1>

<div class="row">
<div class="col-12">


<%
Session s= FactoryProvider.getFactory().openSession();
Query q=s.createQuery("from Note");
List<Note> list= q.list();
for(Note note:list){
	%>
	<div class="card mt-3 ">
  <img src="img/notebook.png"  class="card-img-top mx-auto"  display: flex; style="max-width:90px;" alt="Card img cap">
  <div class="card-body">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    
    <p class="card-text"><%= note.getContent() %></p>
      <p class="card-text"><b class='text-primary'><%= note.getCreatedDAte()%></b></p>
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Edit</a>
  </div>
</div>
	


	
	<%
	
	
	

}
s.close();
%>


</div>
</div>



</div>
</body>
</html>