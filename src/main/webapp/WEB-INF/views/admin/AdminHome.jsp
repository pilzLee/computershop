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

<title>Shop Admin</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/js/users/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/admin/dashboard.css"
	rel="stylesheet">
	
 <link href="${pageContext.request.contextPath}/edmin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/edmin/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"> 
        <link href="${pageContext.request.contextPath}/edmin/css/theme.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/edmin/images/icons/css/font-awesome.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600'
            rel='stylesheet'>

</head>

<body>
	<!-- Navigation -->
	<jsp:include page="/WEB-INF/views/admin/common/navigator.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			
			<jsp:include page="/WEB-INF/views/admin/common/menu.jsp"></jsp:include>
			
			<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
			<div class="span9">
                        <div class="content">
                            <div class="btn-controls">
                                <div class="btn-box-row row-fluid">
                                    <a href="#" class="btn-box big span4"><i class=" icon-random"></i><b>65%</b>
                                        <p class="text-muted">
                                            Growth</p>
                                    </a><a href="#" class="btn-box big span4"><i class="icon-user"></i><b>22</b>
                                        <p class="text-muted">
                                            New Users</p>
                                    </a><a href="#" class="btn-box big span4"><i class="icon-money"></i><b>150,000,000đ</b>
                                        <p class="text-muted">
                                            Profit</p>
                                    </a>
                                </div>
                                <div class="btn-box-row row-fluid">
                                    <div class="span8">
                                        <div class="row-fluid">
                                            <div class="span12">
                                                <a href="#" class="btn-box small span4"><i class="icon-envelope"></i><b>Contact message</b>
                                                </a><a href="#" class="btn-box small span4"><i class="icon-group"></i><b>Customers</b>
                                                </a><a href="#" class="btn-box small span4"><i class="icon-exchange"></i><b>Expenses</b>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span12">
                                                <a href="#" class="btn-box small span4"><i class="icon-save"></i><b>Total Sales</b>
                                                </a><a href="#" class="btn-box small span4"><i class="icon-bullhorn"></i><b>Social Feed</b>
                                                </a><a href="#" class="btn-box small span4"><i class="icon-sort-down"></i><b>Bounce
                                                    Rate</b> </a>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="widget widget-usage unstyled span4">
                                        <li>
                                            <p>
                                                <strong>Desktop</strong> <span class="pull-right small muted">78%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar" style="width: 78%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>Laptop</strong> <span class="pull-right small muted">56%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-success" style="width: 56%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>Server</strong> <span class="pull-right small muted">44%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-warning" style="width: 44%;">
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <p>
                                                <strong>Work station</strong> <span class="pull-right small muted">67%</span>
                                            </p>
                                            <div class="progress tight">
                                                <div class="bar bar-danger" style="width: 67%;">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!--/#btn-controls-->
                            
                            <!--/.module-->
                            
                            <!--/.module-->
                        </div>
                        <!--/.content-->
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
	<script src="${pageContext.request.contextPath}/js/admin/feather.min.js"></script>
		

</body>
</html>