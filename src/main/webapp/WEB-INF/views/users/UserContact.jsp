<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- SPRING FORM -->
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>2017604863</title>

<!-- css -->
<jsp:include page="/WEB-INF/views/users/common/css.jsp"></jsp:include>

</head>

<body>

	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">
				<jsp:include page="/WEB-INF/views/users/common/menu.jsp"></jsp:include>
			</div>
			<!-- /.col-lg-3 -->
			
			<div class="col-lg-9">

				<div class="row">

					<div class="mb-4 contact-form">
						<h1 class="my-4">Contact Form</h1>
						
						
						<c:if test="${ not empty message  }">
							<div class="alert alert-primary" role="alert">
								${message }
							</div>
						</c:if>
						
						
						
						<springform:form action="${base}/contact"
										 method="post"
										 modelAttribute="contact">
							
							<label for="fname">First Name</label>
							<springform:input path="firstName" id="fname"/>
							
							<label for="lname">Last Name</label>
							<springform:input path="lastName" id="lname"/>
							
							<!-- <label for="country">Country</label>
							<select id="country" name="country">
								<option value="australia">Australia</option>
								<option value="canada">Canada</option>
								<option value="usa">USA</option>
							</select> -->
							
							<label for="subject">Subject</label>
							<springform:textarea path="subject" id="subject" cssStyle="height: 200px"/>
							
							<input type="button" value="Submit" onclick="Shop.saveContact();">
						</springform:form>
						
						<%-- <form action="${base}/contact" method="post">

							<label for="fname">First Name</label>
							<input type="text" id="fname" name="firstname" placeholder="Your name..">
							
							<label for="lname">Last Name</label>
							<input type="text" id="lname" name="lastname" placeholder="Your last name..">
							
							<label for="country">Country</label>
							<select id="country" name="country">
								<option value="australia">Australia</option>
								<option value="canada">Canada</option>
								<option value="usa">USA</option>
							</select>
							
							<label for="subject">Subject</label>
							<textarea id="subject" name="subject" placeholder="Write something.." style="height: 200px"></textarea>
							
							<input type="submit" value="Submit">
						</form> --%>
						
					</div>

				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>

	<!-- java script -->
	<jsp:include page="/WEB-INF/views/users/common/js.jsp"></jsp:include>

</body>

</html>
