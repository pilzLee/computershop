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

				<div class="card mt-4">
		          <img class="card-img-top img-fluid" src="${base}/file/upload/${product.productImages[0].path}" alt="">
		          <div class="card-body">
		            <h3 class="card-title">${product.title }</h3>
		            <h4>${product.price}đ</h4>
		            <p class="card-text">
		            	${product.shortDes }
		            	
		            </p>
		            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
		            4.0 stars
		          </div>
		        </div>
		        <!-- /.card -->
		
		        <div class="card card-outline-secondary my-4">
		          <div class="card-header">
		            Product Reviews
		          </div>
		          <div class="card-body">
		            ${product.shortDetails }
		            <hr>
		            <button onclick="Shop.addItemToCart(${product.id}, 1)" class="btn btn-danger">Thêm vào giỏ</button>
		            <a href="${base}/" class="btn btn-success">Quay lại</a>
		          </div>
		        </div>
		        <!-- /.card -->

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
