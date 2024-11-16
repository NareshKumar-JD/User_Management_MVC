<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">User Management</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="display">Users</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<hr>
	<h1>
		<center>User Management</center>
	</h1>

	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
			  <c:if test="${user.id != 0}">
    <!-- project/edit/update -No, project/update -Yes -->
    <form action="<%=request.getContextPath()%>/update" method="post">
                        </c:if>
                        
                 <c:if test="${user.id == 0}">
                            <form action="insert" method="post">
                   </c:if>
	
				<caption>
					<h2>
						<c:if test="${user.id != 0}">
                                    Edit User
                                </c:if>
						<c:if test="${user.id == 0}">
                                    Add New User
                                </c:if>
					</h2>
				</caption>
				
				<!-- only edit it will use -->
				<c:if test="${user.id != 0}">
        		<input type="hidden" name="id" value="${user.id}">
    			</c:if>
				
				<fieldset class="form-group">
					<label>User Name</label> 
					<input type="text" class="form-control"
						name="name" value="${user.name}" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>User Email</label> 
					<input type="text" class="form-control"
						value="${user.email}" name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>User City</label> 
					<input type="text" class="form-control"
						name="city" value="${user.city}">
				</fieldset>
				
				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</div>
	</div>
	</form>

</body>
</html>
