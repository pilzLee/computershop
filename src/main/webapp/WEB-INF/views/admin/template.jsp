<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon"
	href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">

<title>Dashboard Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/js/users/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/admin/dashboard.css"
	rel="stylesheet">

</head>

<body>
	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/admin/common/navigator.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			
			<jsp:include page="/WEB-INF/views/admin/common/menu.jsp"></jsp:include>
			
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
				<h2>{{ title }}</h2>
				<div class="table-responsive">
					{{ body }}
				</div>
			</main>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="${pageContext.request.contextPath}/js/users/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/users/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/users/shop.js"></script>

	<script src="${pageContext.request.contextPath}/js/admin/popper.min.js"></script>

	<!-- Icons -->
	<script
		src="${pageContext.request.contextPath}/js/admin/feather.min.js"></script>

</body>
</html>