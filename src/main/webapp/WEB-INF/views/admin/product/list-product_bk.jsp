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

<title>Dashboard Template for Bootstrap</title>

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
					<table id="productList" class="display" style="width: 100%"></table>
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
			$('#productList').DataTable({
				"processing": true,
				"serverSide": true,
				pageLength : 10,
				ajax : {
					url : '${pageContext.request.contextPath}/api/product/findall',
					dataSrc : ''
				},
				columns : [ {
					title : 'Id',
					data : 'id'
				}, {
					title : 'Title',
					data : 'title'
				}, {
					title : 'Price',
					data : 'price'
				}, {
					title : 'Status',
					data : 'status',
					render: function(data) {
						return data ? 'Show' : 'Hide';
					}
				}, {
					title : 'Photo',
					data : 'productImages',
					render: function(data) {
						//alert(data)
						if(data.length > 0) {
							return '<img src="${pageContext.request.contextPath}/file/upload/' + data[0].path + '" width="50" />';	
						} else {
							return '<img src="${pageContext.request.contextPath}/images/users/900x350.png" width="50" />';	
						}						
					}
				} ]
			});
			
			$('#productList').on('search.dt', function() {
			    var value = $('.dataTables_filter input').val();
			    alert(value); // <-- the value
			});
			
		});
		
	</script>

</body>
</html>