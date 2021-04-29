<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
	<head lang="en">
		<meta charset="UTF-8">
		<title>2017604863</title>
		
		<jsp:include page="/WEB-INF/views/users/common/css.jsp"></jsp:include>
		
		<style type="text/css">
			.error-template {
				padding: 40px 15px;
				text-align: center;
			}
			.error-actions {
				margin-top: 15px;
				margin-bottom: 15px;
			}
			.error-actions .btn {
				margin-right: 10px;
			}
		</style>
		
		<jsp:include page="/WEB-INF/views/users/common/js.jsp"></jsp:include>
	</head>
	<body>
		<div class="container">
		    <div class="row">
		        <div class="col-md-4"></div>
		        <div class="col-md-4">
		            <form method="POST" action="/perform_login" class="form-signin">
		            
		            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				        <h2 class="form-heading">Log in</h2>
						
						<c:if test="${not empty param.login_error}">
							<div class="alert alert-danger" role="alert">
							  	Login attempt was not successful, try again.
							</div>
						</c:if>

						<div class="form-group">
							<input type="text" name="username" class="form-control" placeholder="Username">
						</div>
						
						<div class="form-group">
							<input type="password" name="password" class="form-control" placeholder="Password">
						</div>

						<button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
						<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
				        
			    	</form>
		        </div>
		        <div class="col-md-4"></div>
		    </div>
		</div>
	</body>
</html>