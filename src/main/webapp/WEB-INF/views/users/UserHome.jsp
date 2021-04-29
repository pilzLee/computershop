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

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="${base}/images/users/mac.jpg" alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="${base}/images/users/predator.jpg" alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="${base}/images/users/server.jpg" alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

				<div class="row">

					<c:forEach items="${products}" var="product">
						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#">
									
									<c:choose>
										<c:when test = "${empty product.productImages }">
											<img class="card-img-top" src="${base}/images/users/700x400.png" alt="">
										</c:when>
										<c:otherwise>
											<img class="card-img-top" width="700" height="200" src="${base}/file/upload/${product.productImages[0].path}" alt="">
										</c:otherwise>
									</c:choose>
									
								</a>
								<div class="card-body">
									<h4 class="card-title">
										<a href="${base }/product/details/${product.seo}">${product.title }</a>
									</h4>
									<h5>
										<fmt:setLocale value="vi_VN"/>
										<fmt:formatNumber value="${product.price}" type="currency"/>
									</h5>
									<p class="card-text">${product.shortDes }</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
									<button type="button" onclick="Shop.addItemToCart(${product.id}, 1)" class="btn btn-link">Mua hàng</button>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-6 col-md-6 mb-6">
						<nav aria-label="Page navigation example">
							<ul class="pagination  float-left">
								<li class="page-item">
									<button type="button" id="previousHome" class="btn btn-warning btn-lg" onclick="Shop.homePrevious('http://localhost:8888/')">Trước</button>	
								</li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-6 col-md-6 mb-6">
						<nav aria-label="Page navigation example">
							<ul class="pagination  float-right">
								<li class="page-item">
									<button type="button" class="btn btn-warning btn-lg" onclick="Shop.homeNext('http://localhost:9999/')">Sau</button>	
								</li>
							</ul>
						</nav>
					</div>
				</div>

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
