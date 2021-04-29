<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- SPRING FORM -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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

<title>Shop Admin</title>

<jsp:include page="/WEB-INF/views/admin/common/css.jsp"></jsp:include>

</head>

<body>
	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/admin/common/navigator.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			
			<jsp:include page="/WEB-INF/views/admin/common/menu.jsp"></jsp:include>
			
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
				<h2>Danh sách sản phẩm</h2>
				<div class="my-4">
					<a href="${base }/admin/add-product" class="btn btn-primary btn-sm">Thêm mới sản phẩm</a>
					<div class="table-responsive">
						<table class="table table-striped table-sm">
							<thead>
								<tr>
									<th>Title</th>
									<th>Short Description</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products }" var="product">
									<tr>
										<td>${product.title } </td>
										<td>${product.shortDes }</td>
										<td>
											<c:choose>
												<c:when test="${product.status == 'true' }">
													<span class="badge badge-success">Active</span>
												</c:when>
												<c:otherwise>
													<span class="badge badge-danger">InActive</span>
												</c:otherwise>
											</c:choose>
										</td>
										<td>
											<div class="d-flex flex-row bd-highlight mb-3">	
												<div class="d-flex flex-row bd-highlight mb-3">
													<a href="${base }/admin/edit-product/${product.seo}" class="btn btn-primary btn-sm">Sửa</a>
													&nbsp;
												</div>
												<div class="d-flex flex-row bd-highlight mb-3">
													<a href="#" class="btn btn-danger btn-sm">Xoá</a>	
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</main>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<jsp:include page="/WEB-INF/views/admin/common/js.jsp"></jsp:include>

</body>
</html>