<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<h1 class="my-4">Menu</h1>
<div class="list-group">
	
	<a type="button" id="btnCheckout" class="btn btn-danger" href="${pageContext.request.contextPath}/cart/check-out">Giỏ hàng (${SL_SP_GIO_HANG })</a>
	
	<c:forEach var = "category" items = "${categories }">
		<a href="${base }/product/category/${category.seo }" class="list-group-item">${category.name }</a>
	</c:forEach>

</div>