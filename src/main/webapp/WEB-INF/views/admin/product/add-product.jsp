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
				<h2>Bổ sung sản phẩm</h2>
				<div class="my-4">
					<form:form method="post" action="/admin/save-product" modelAttribute="product" enctype="multipart/form-data">
						
						<form:hidden path="id"/>
						
						<div class="form-group">
							<label>Category</label>
							<form:select class="form-control form-control-line" path="category.id">
								<form:options items="${categories}" itemValue="id" itemLabel="name"/>
							</form:select>
						</div>
						<div class="form-group">
							<label>Title</label>
							<form:input type="text" class="form-control" path="title"/>
							<small id="emailHelp" class="form-text text-muted">
								Tối đa 15 kí tự.
							</small>
						</div>
						<div class="form-group">
							<label>Short Description</label>
							<form:input type="text" class="form-control" path="shortDes"/>
							<small id="emailHelp" class="form-text text-muted">
								Sẽ hiển thị tại màn hình danh sách sản phẩm.
							</small>
						</div>
						<div class="form-group">
							<label>Giá bán</label>
							<form:input type="text" class="form-control" path="price"/>
							<small id="emailHelp" class="form-text text-muted">
								Đơn vị tính là VNĐ.
							</small>
						</div>
						
						<div class="form-group">
							<label>Details description</label>
							<form:textarea id="txtDetailDescription" class="form-control" path="shortDetails"/>
						</div>
						
						<div class="form-group">
							<label>Avatar</label>
							<input type="file" name="productImage" class="form-control">
						</div>
						
						<div class="form-group">
							<label>Status</label>
							<form:checkbox path="status" />
						</div>
						
						<button type="submit" class="btn btn-primary btn-sm">Save</button>
						<a href="${base }/admin/list-product" class="btn btn-secondary btn-sm">Quay lại</a>
					</form:form>
				</div>
			</main>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<jsp:include page="/WEB-INF/views/admin/common/js.jsp"></jsp:include>


	<script type="text/javascript">
	
		$(document).ready(function() {
		  $('#txtDetailDescription').summernote();
		});
	
	</script>

</body>
</html>