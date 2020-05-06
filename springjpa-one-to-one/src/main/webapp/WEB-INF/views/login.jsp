<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
	crossorigin="anonymous" />
</head>
<body>
	<div class="container">
		<h3 class="mt-2">Spring JPA Mapping Example</h3><hr/>
		<c:if test="${successmsg}">
			<div class="alert alert-success alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>Success!</strong> Registered successfully.
			</div>
		</c:if>
		<div class="row">
			<div class="col-md-4 offset-4">
	            <div class="card">
	              <div class="card-header">
	              	Login
	              </div>
	              <div class="card-body">
	                <form action="${contextRoot}/loginuser" method="post">
	                	<div class="form-group">
	                		<input type="text" class="form-control" name="email" placeholder="Enter email"/>
	                	</div>
	                	<div class="form-group">
	                		<input type="password" class="form-control" name="password" placeholder="Enter password"/>
	                	</div>
	                	<button type="submit" class="btn btn-primary">Login</button>
	                </form>
	              </div>
	              <div class="card-footer">
	                <a href="${contextRoot}/register" class="btn btn-success float-right ml-2">Register</a>
	                <a href="#" class="float-right">New User?</a>
	              </div>
	            </div>
	        </div>
		</div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>