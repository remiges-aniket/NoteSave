<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_css_js.jsp" %>
</head>
<body >
<br>
<div class="center">
<h1>This Is Add Notes Page..</h1>
<br>
<!-- This is add form filed -->

<form action="SaveNoteServlet" method="post">


<div class="mb-3">
  <label for="exampleFormControlInput1"  class="form-label">Enter Note Title</label>
  <input required type="text" name="title" class="form-control" id="title" placeholder="Title..">

  <label for="exampleFormControlTextarea1"  class="form-label">Take a Note</label>
  <textarea required name="content" class="form-control" id="content" placeholder="Start typing..." rows="3"></textarea>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
 
  
  </div>
  </form>
</div>

</body>
</html>