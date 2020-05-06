
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
		<form:form action="${contextRoot}/saveuser" method="post" modelAttribute="user">
		<div class="row">
			<div class="col-md-4 mb-4 offset-4">
	            <div class="card h-100">
	              <div class="card-header">
	              	Register
	              </div>
	              <div class="card-body">
                	<div class="form-group">
                		<form:input path="firstname" placeholder="Enter Firstname" class="form-control" />
                	</div>
                	<div class="form-group">
                		<form:input path="lastname" placeholder="Enter Lastname" class="form-control" />
                	</div>
                	<div class="form-group">
                		<form:input path="email" placeholder="Enter email" class="form-control" />
                	</div>
                	<div class="form-group">
                		<form:input type="password" path="password" placeholder="Enter password" class="form-control" />
                	</div>
	              </div>
	            </div>
	        </div>
		</div>
		<h3>More details</h3><hr/>
		<div class="row">
			<div class="col-md-4 mb-4 offset-4">
	            <div class="card h-100">
	              
	              <div class="card-body">
	                <div class="form-group">
                		<form:input path="userProfile.phonenumber" class="form-control" placeholder="Enter phonenumber" />
                	</div>
                	<div class="form-group">
                		<div class="form-check-inline">
						  <label class="form-check-label" for="male">
						  	<form:radiobutton path="userProfile.gender" class="form-check-input" id="male" name="gender" value="Male" /> Male
						  </label>
						</div>
						<div class="form-check-inline">
						  <label class="form-check-label" for="female">
						    <form:radiobutton path="userProfile.gender" class="form-check-input" id="female" name="gender" value="Female" /> Female
						  </label>
						</div>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.dateofbirth" type="date" class="form-control" placeholder="Enter date of birth"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.address1" class="form-control" placeholder="Enter address1"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.address2" class="form-control" placeholder="Enter address2"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.street" class="form-control" placeholder="Enter street"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.city" class="form-control" placeholder="Enter city"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.state" class="form-control" placeholder="Enter state"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.country" class="form-control" placeholder="Enter country"/>
                	</div>
                	<div class="form-group">
                		<form:input path="userProfile.zipcode" class="form-control" placeholder="Enter zipcode"/>
                	</div>
	                	
	                <button type="submit" class="btn btn-primary">Register</button>
	                
	              </div>
	              <div class="card-footer">
	              	<a href="${contextRoot}/login" class="btn btn-success ml-2 float-right">Login</a>
	                <a href="#" class="float-right">Have account?</a>
	              </div>
	            </div>
	        </div>
		</div>
		</form:form>
	</div>
</body>
</html>