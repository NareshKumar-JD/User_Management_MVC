<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">User Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
<a class="nav-link active" aria-current="page" href="display">Users</a>
        </li>
     
      </ul>
    </div>
  </div>
</nav>

<h1><center>User Management</center></h1>
<hr>

<a class="btn btn-success" href="add" role="button">Add User</a>
<br>
<br>

<table class="table table-striped">
 <thead>
 <tr>
 <th>ID</th>
 <th>Name</th>
 <th>EMAIL</th>
 <th>City</th>
 <th>Actions</th>
 </tr>
 </thead>
 <tbody>

<c:forEach var='u' items='${ulist}'>
<tr>
<td><c:out value='${u.id}'></c:out></td>
<td><c:out value='${u.name}'></c:out></td>
<td><c:out value='${u.email}'></c:out></td>
<td><c:out value='${u.city}'></c:out></td>

<td><a href="delete/${u.id}">delete</a>&nbsp;&nbsp;
<a href="edit/${u.id}">edit</a></td>
</tr>
</c:forEach>

 </tbody>
</table>
</body>
</html>
